# Montage, sous-titres & publication TikTok

## 1. Montage (CapCut, DaVinci Resolve ou Premiere)

**Projet :** 1080 × 1920, **30 fps**, durée **exactement 90 s**.

1. Placer les 9 clips retenus dans l'ordre (`production/videos/EP01_S01_final.mp4` … `S09`).
2. **Couper serré** : si une prise a 0,5 s de flottement au début, on coupe et on comble avec un insert (pluie, horloge, croix verte). Chaque scène = 10 s au montage.
3. **Étalonnage léger commun** sur les 9 clips (même LUT/réglage) pour lisser les petites différences de couleur entre générations : un peu plus de contraste, ombres poussées vers le bleu-canard, verts saturés.
4. Pistes audio : voir `03_voix_audio_postprod.md` (voix → bruitages → pluie continue → musique).
5. Raccourci : `scripts/assembler.sh` fait un premier assemblage automatique (vidéos + mix audio + normalisation −14 LUFS) pour vérifier le rythme avant le montage fin.

## 2. Textes à l'écran & sous-titres

Une grande partie du public regarde **sans le son** au début : les sous-titres sont indispensables.

- **Sous-titres** : toutes les répliques, en blanc, contour/ombre noire, police grasse lisible (ex. Montserrat Bold / Inter Bold), 2 lignes max, **centrés vers 60–70 % de la hauteur** de l'image.
- **Voix du téléphone** : sous-titres *en italique* + petite icône 📞 ou couleur verte, pour qu'on comprenne tout de suite que c'est un message.
- **Cartons horaires** (`3h33`, `3h43`, `3h44`) : en haut à gauche, police type afficheur digital, vert néon.
- **Hook S1 (0–3 s)** : `3h33. Un message vocal… envoyé depuis MON numéro.` — gros, au centre-haut.
- **Fin S9** : `3H33 — Épisode 2 →` sur la dernière seconde.

### Zones de sécurité TikTok (1080 × 1920)
```
┌──────────────────────────┐
│   ~130 px haut : éviter   │
│                      ┌───┤
│   ZONE SÛRE          │ ~ │  ← ~140 px à droite : boutons
│   (visages, textes)  │140│     (like, commentaires, partage)
│                      │px │
│                      └───┤
├──────────────────────────┤
│  ~370 px bas : légende,   │  ← jamais de sous-titre ici
│  pseudo, musique          │
└──────────────────────────┘
```

## 3. Export
- **H.264, 1080 × 1920, 30 fps, ~12–16 Mb/s**, audio **AAC 48 kHz 320 kb/s**
- Loudness master **−14 LUFS**, crête **−1 dBTP**
- Nom : `3H33_EP01_final.mp4`

## 4. Publication

**Couverture :** l'image `COVER_EP01` (Seedream) — titre lisible en miniature dans le profil.

**Titre / légende (exemple) :**
```
3H33 — Épisode 1 : Le parapluie jaune ☂️
Chaque nuit à 3h33, elle reçoit un message… d'elle-même.
Toi, tu ouvres ou pas ? 👇
#3h33 #serie #mystere #animation #histoire #thriller #fictionIA
```

**Bonnes pratiques :**
- **Étiquette "contenu généré par IA"** : activer l'option dans "Plus d'options" avant de publier (obligatoire pour les contenus IA réalistes, et recommandé dans tous les cas pour éviter les signalements).
- **Le titre contient toujours le numéro d'épisode** et le nom de la série → les gens retrouvent la suite.
- **Playlist "3H33"** sur ton profil dès l'épisode 2 (fonction Playlist de TikTok, si ton compte y est éligible) + épingler l'épisode 1 en haut du profil.
- **Commentaire épinglé** à poster soi-même : *"Indice pour l'épisode 2 : regardez bien son poignet droit 👀"* → incite à revoir la vidéo (relectures = rétention).
- **La première heure compte** : répondre vite aux commentaires (les théories des spectateurs = engagement), et s'en servir pour orienter la suite.
- **Rythme régulier** : même jour/même heure à chaque épisode (ex. tous les 2–3 jours à 19h). Avoir **au moins 2 épisodes d'avance** avant de lancer l'épisode 1.
- **Ne jamais résoudre le cliffhanger** dans l'épisode : la suite se regarde dans le suivant.
