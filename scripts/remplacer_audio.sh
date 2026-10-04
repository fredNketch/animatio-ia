#!/usr/bin/env bash
# Remplace la piste audio d'un clip par la voix retravaillée (ElevenLabs), sans réencoder l'image.
# Usage : ./remplacer_audio.sh clip.mp4 nouvelle_voix.(wav|mp3) [sortie.mp4] [decalage_secondes]
#   decalage_secondes (optionnel) : retarde la voix si besoin de recaler la synchro (ex : 0.04)
set -euo pipefail
video="${1:?Usage: $0 clip.mp4 voix.wav [sortie.mp4] [decalage]}"
audio="${2:?Usage: $0 clip.mp4 voix.wav [sortie.mp4] [decalage]}"
out="${3:-${video%.*}_voix.mp4}"
offset="${4:-0}"
ffmpeg -hide_banner -loglevel error -y -i "$video" -itsoffset "$offset" -i "$audio" \
  -map 0:v:0 -map 1:a:0 -c:v copy -c:a aac -b:a 320k -ar 48000 -af apad -shortest "$out"
echo "Clip avec nouvelle voix -> $out"
