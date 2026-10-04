#!/usr/bin/env bash
# Extrait la piste audio d'un clip Seedance en WAV mono 48 kHz (pour Voice Isolator / Voice Changer).
# Usage : ./extraire_audio.sh clip.mp4 [sortie.wav]
set -euo pipefail
in="${1:?Usage: $0 clip.mp4 [sortie.wav]}"
out="${2:-${in%.*}_audio.wav}"
ffmpeg -hide_banner -loglevel error -y -i "$in" -vn -ac 1 -ar 48000 -c:a pcm_s16le "$out"
echo "Audio -> $out"
