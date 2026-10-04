#!/usr/bin/env bash
# Extrait la dernière image d'un clip (pour enchaîner la scène suivante en raccord).
# Usage : ./derniere_image.sh clip.mp4 [sortie.png]
set -euo pipefail
in="${1:?Usage: $0 clip.mp4 [sortie.png]}"
out="${2:-${in%.*}_last.png}"
# -sseof lit uniquement la fin du fichier ; -update 1 écrase l'image à chaque frame,
# il ne reste donc que la toute dernière.
ffmpeg -hide_banner -loglevel error -y -sseof -1 -i "$in" -update 1 -q:v 1 "$out"
echo "Dernière image -> $out"
