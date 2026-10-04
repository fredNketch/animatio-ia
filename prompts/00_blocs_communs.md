# Blocs communs — à copier tels quels

Ces blocs sont **identiques dans tous les prompts** de la série. Ne jamais les reformuler : c'est la répétition mot pour mot qui stabilise le style et les personnages.
Les prompts sont en **anglais** (meilleure compréhension par Seedream/Seedance), les dialogues en **français**.

---

## [STYLE] — bloc style (Seedream + Seedance)

```
Stylized 3D animated feature film look, slightly exaggerated proportions, large expressive eyes, soft stylized skin shading, hand-painted textures, cinematic composition. Rainy Paris night. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights, saturated canary-yellow used only as a rare accent. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic.
```

## [NEG] — bloc négatif

Seedream : à ajouter en fin de prompt. Seedance : à ajouter en fin de prompt (les négatifs y fonctionnent).

```
Avoid: photorealism, live-action, real human, anime, flat 2D, yellow clothing, yellow sticky notes, extra fingers, deformed hands, distorted face, text artifacts, watermark, logo, subtitles.
```

## [INES] — ancres immuables d'Inès

```
Inès: 27-year-old woman, warm olive-brown skin, oval face, large hazel-amber eyes with light dark circles, thick dark eyebrows, thin pale scar crossing her RIGHT eyebrow, small beauty mark under her LEFT eye, voluminous dark-brown curly hair in a messy low bun with two loose curls framing her face, single small gold hoop earring on her LEFT ear only, open white knee-length pharmacist coat with sleeves rolled to the forearms, burgundy ribbed turtleneck sweater, dark grey trousers, small green enamel cross pin on the left lapel, analog watch with a red leather strap on her LEFT wrist.
```

## [ELIAS] — ancres immuables de l'Inconnu (Élias)

```
The stranger: very tall thin man around 45, slightly stooped, long angular face, hollow cheeks, short neatly trimmed salt-and-pepper beard, pale grey eyes, kind but haunted expression, wet dark hair with grey streaks swept back, long dark navy trench coat soaked by rain with the collar up, charcoal scarf, white gauze bandage on his LEFT hand with a small red stain, white hospital ID wristband on his RIGHT wrist, holding a bright canary-yellow dome umbrella with a curved wooden handle.
```

## [CONSIST] — verrou de cohérence (Seedance uniquement)

```
Maintain the exact appearance of the characters from the reference images: same face, same hair, same outfit, same accessories on the same side. Consistent character throughout, stable face, no morphing, no flicker, no deformation or drift.
```

## [AUDIO-DIAL] — audio pour les plans dialogués (Seedance)

```
Audio: clean close-mic dialogue only, spoken in French, light rain ambience, no background music, no other voices.
```

## [AUDIO-AMB] — audio pour les plans sans dialogue (Seedance)

```
Audio: ambience only — soft rain, faint electric hum of neon lights. No music, no voices, no speech.
```

---

## Règles d'usage

1. **Ordre d'un prompt Seedream :** sujet → composition/cadrage → lumière → [STYLE] → [NEG].
2. **Ordre d'un prompt Seedance :** rôle des références → plans horodatés (`[0s]`, `[5s]`…) → [CONSIST] → [STYLE] → [AUDIO-…] → [NEG].
3. **En image-to-video, on décrit le mouvement, pas l'image** (le keyframe montre déjà le décor et les persos).
4. **Gauche/droite** : toujours préciser le côté (cicatrice sourcil DROIT, boucle d'oreille GAUCHE, montre poignet GAUCHE, bandage main GAUCHE, bracelet d'hôpital poignet DROIT). C'est ce qui "saute" en premier entre deux plans.
5. **Jamais** de nom de studio, de film ou de personne réelle dans un prompt.
