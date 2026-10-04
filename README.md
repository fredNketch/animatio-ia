# 3H33 — mini-série TikTok en animation IA

> *Chaque nuit à 3h33, Inès reçoit un message vocal… envoyé depuis son propre numéro.*

Dossier de production complet de l'**épisode 1 « Le parapluie jaune »** : 90 s, 9 scènes de 10 s, format vertical 9:16, en animation 3D stylisée.
Outils : **Seedream 4.5** (images) → **Seedance 2.0** (vidéo) → **ElevenLabs** (voix, bruitages, musique) → montage.

## Contenu du dossier

| Fichier | Contenu |
|---|---|
| `docs/00_recherche_bonnes_pratiques.md` | Synthèse des recherches + sources |
| `docs/01_bible_serie.md` | Pitch, règles du monde, motifs, charte visuelle, arc de saison |
| `docs/02_episode01_scenario.md` | Scénario minuté des 9 scènes + répliques |
| `docs/03_voix_audio_postprod.md` | Casting des voix ElevenLabs, remplacement des voix, bruitages, musique, mixage |
| `docs/04_montage_publication.md` | Montage, sous-titres, zones de sécurité, export, publication TikTok |
| `prompts/00_blocs_communs.md` | Blocs style / personnages / audio à copier tels quels |
| `prompts/01_personnages_seedream.md` | Fiches + prompts des personnages (portrait, référence, vues, expressions) |
| `prompts/02_decors_props_seedream.md` | Prompts des décors, accessoires, image clé de style, affiche |
| `prompts/03_ep01_keyframes_seedream.md` | Les 9 images de départ (keyframes) |
| `prompts/04_ep01_videos_seedance.md` | Les 9 prompts vidéo Seedance (réglages, références, plans horodatés) |
| `production/shot_ledger.csv` | Tableau de suivi : prises retenues, seeds, voix, statut |
| `scripts/` | Outils ffmpeg (voir plus bas) |

## Ordre de fabrication (checklist)

**Étape 1 — Références (Seedream 4.5)**
- [ ] `STYLE_KEY` : l'image qui fixe le look de toute la série
- [ ] Inès : portrait héros → **référence visage** → vues → expressions (+ checklist)
- [ ] Élias : idem
- [ ] Décors : comptoir, arrière-boutique, guichet, rue
- [ ] Accessoires : parapluie, téléphone, horloge, mot manuscrit
- [ ] Tout ranger dans `production/refs/`

**Étape 2 — Keyframes (Seedream 4.5)**
- [ ] 9 keyframes en 9:16 (+ `S09_KF_start`) → `production/keyframes/`
- [ ] Les mettre côte à côte : même style, mêmes persos, aucun jaune parasite

**Étape 3 — Vidéos (Seedance 2.0)**
- [ ] Tests en 720p / Fast → finales en 1080p, 10 s, 9:16, audio ON
- [ ] 3–4 prises par scène, noter la meilleure + seed dans `shot_ledger.csv`
- [ ] Ranger en `production/videos/EP01_S0X.mp4`

**Étape 4 — Voix & son (ElevenLabs)**
- [ ] Valider les voix (Morgane / Eric / Claire) en écoutant les aperçus
- [ ] Répliques à l'écran : extraire → Voice Isolator → Voice Changer → réinjecter
- [ ] Voix du téléphone : TTS v3 → `filtre_telephone.sh`
- [ ] Bruitages + pluie continue + musique

**Étape 5 — Montage & publication**
- [ ] `./scripts/assembler.sh EP01 pluie.mp3 musique.mp3` → pré-montage pour vérifier le rythme
- [ ] Montage fin, sous-titres, cartons horaires, étalonnage commun
- [ ] Export 1080×1920, 30 fps, −14 LUFS → publier avec l'étiquette IA

## Scripts

| Script | Usage |
|---|---|
| `scripts/derniere_image.sh clip.mp4` | Extrait la dernière image (raccord avec la scène suivante) |
| `scripts/extraire_audio.sh clip.mp4` | Extrait l'audio en WAV pour ElevenLabs |
| `scripts/filtre_telephone.sh voix.mp3` | Effet "message vocal" |
| `scripts/remplacer_audio.sh clip.mp4 voix.wav [sortie] [décalage]` | Remet la nouvelle voix sur le clip |
| `scripts/assembler.sh EP01 [pluie] [musique]` | Pré-montage auto 90 s + mix + −14 LUFS |

Prérequis : `ffmpeg` installé. Les médias lourds (mp4, wav, mp3) sont exclus de git (`.gitignore`) : sauvegarde-les sur un Drive.

## Les 5 règles d'or de la cohérence
1. **Une seule image de référence par personnage** dans Seedance, toujours la même.
2. **Les blocs de texte communs sont copiés mot pour mot**, jamais reformulés.
3. **Gauche/droite toujours précisés** pour les accessoires.
4. **Une seule voix par personnage, pour toute la série** (voice_id notés).
5. **Le jaune n'existe que pour l'anomalie.**
