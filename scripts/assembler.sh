#!/usr/bin/env bash
# Pré-montage automatique d'un épisode : 9 scènes × 10 s -> 90 s, 1080x1920, 30 fps,
# + lit de pluie en boucle et musique optionnels, master normalisé à -14 LUFS / -1 dBTP.
#
# Usage : ./assembler.sh [EPISODE] [pluie.(wav|mp3)] [musique.(wav|mp3)]
#   EPISODE : préfixe des fichiers (défaut : EP01)
# Cherche, pour chaque scène N, production/videos/<EP>_S0N_final.mp4 puis <EP>_S0N.mp4.
# Une scène manquante est remplacée par 10 s de noir (pour vérifier le rythme quand même).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
EP="${1:-EP01}"
RAIN="${2:-}"
MUSIC="${3:-}"
SCENES=9
DUR=10
VID_DIR="$ROOT/production/videos"
OUT_DIR="$ROOT/production/exports"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
mkdir -p "$OUT_DIR"

VF="scale=1080:1920:force_original_aspect_ratio=decrease,pad=1080:1920:(ow-iw)/2:(oh-ih)/2:color=black,setsar=1,fps=30,tpad=stop_mode=clone:stop_duration=${DUR},trim=duration=${DUR},setpts=PTS-STARTPTS"
AF="aresample=48000,aformat=channel_layouts=stereo,apad,atrim=duration=${DUR},asetpts=PTS-STARTPTS"
ENC=(-c:v libx264 -preset medium -crf 18 -pix_fmt yuv420p -c:a pcm_s16le -ar 48000)

: > "$TMP/list.txt"
for n in $(seq 1 $SCENES); do
  id="$(printf '%s_S%02d' "$EP" "$n")"
  src=""
  for cand in "$VID_DIR/${id}_final.mp4" "$VID_DIR/${id}.mp4"; do
    [[ -f "$cand" ]] && { src="$cand"; break; }
  done
  part="$TMP/${id}.mov"
  if [[ -z "$src" ]]; then
    echo "⚠️  $id introuvable -> 10 s de noir"
    ffmpeg -hide_banner -loglevel error -y \
      -f lavfi -i "color=c=black:s=1080x1920:r=30:d=${DUR}" \
      -f lavfi -i "anullsrc=r=48000:cl=stereo" -t "$DUR" "${ENC[@]}" "$part"
  elif [[ -n "$(ffprobe -v error -select_streams a -show_entries stream=index -of csv=p=0 "$src")" ]]; then
    echo "✓ $id <- $(basename "$src")"
    ffmpeg -hide_banner -loglevel error -y -i "$src" -vf "$VF" -af "$AF" -t "$DUR" "${ENC[@]}" "$part"
  else
    echo "✓ $id <- $(basename "$src") (sans audio)"
    ffmpeg -hide_banner -loglevel error -y -i "$src" -f lavfi -i "anullsrc=r=48000:cl=stereo" \
      -map 0:v:0 -map 1:a:0 -vf "$VF" -t "$DUR" "${ENC[@]}" "$part"
  fi
  echo "file '$part'" >> "$TMP/list.txt"
done

ffmpeg -hide_banner -loglevel error -y -f concat -safe 0 -i "$TMP/list.txt" -c copy "$TMP/concat.mov"

TOTAL=$((SCENES * DUR))
inputs=(-i "$TMP/concat.mov")
filter="[0:a]volume=0dB[a0]"
mix="[a0]"
k=1
if [[ -n "$RAIN" ]]; then
  inputs+=(-stream_loop -1 -i "$RAIN")
  filter+=";[${k}:a]aresample=48000,aformat=channel_layouts=stereo,atrim=duration=${TOTAL},volume=-26dB[a${k}]"
  mix+="[a${k}]"; k=$((k+1))
fi
if [[ -n "$MUSIC" ]]; then
  inputs+=(-i "$MUSIC")
  filter+=";[${k}:a]aresample=48000,aformat=channel_layouts=stereo,apad,atrim=duration=${TOTAL},volume=-20dB[a${k}]"
  mix+="[a${k}]"; k=$((k+1))
fi
filter+=";${mix}amix=inputs=${k}:duration=first:normalize=0,loudnorm=I=-14:TP=-1:LRA=11,aresample=48000[aout]"

OUT="$OUT_DIR/3H33_${EP}_premontage.mp4"
ffmpeg -hide_banner -loglevel error -y "${inputs[@]}" -filter_complex "$filter" \
  -map 0:v:0 -map "[aout]" -c:v libx264 -preset medium -crf 18 -pix_fmt yuv420p \
  -c:a aac -b:a 320k -ar 48000 -t "$TOTAL" -movflags +faststart "$OUT"

echo "✅ Pré-montage -> $OUT ($(ffprobe -v error -show_entries format=duration -of csv=p=0 "$OUT") s)"
