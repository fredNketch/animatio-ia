#!/usr/bin/env bash
# Effet "message vocal / téléphone" : bande passante 300–3400 Hz, compression, légère saturation.
# Usage : ./filtre_telephone.sh voix.mp3 [sortie.wav]
set -euo pipefail
in="${1:?Usage: $0 voix.mp3 [sortie.wav]}"
out="${2:-${in%.*}_tel.wav}"
ffmpeg -hide_banner -loglevel error -y -i "$in" \
  -af "highpass=f=300,lowpass=f=3400,acompressor=threshold=-20dB:ratio=4:attack=5:release=80,acrusher=bits=12:mode=log:mix=0.15,volume=2dB,alimiter=limit=0.89" \
  -ac 1 -ar 48000 -c:a pcm_s16le "$out"
echo "Voix téléphone -> $out"
