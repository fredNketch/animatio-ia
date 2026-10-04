# Épisode 1 — Vidéos · Seedance 2.0

## Réglages communs (toutes les scènes)

| Paramètre | Valeur |
|---|---|
| Mode | **Référence omni / multimodale** (images de référence + texte) |
| Format | **9:16** |
| Durée | **10 s** |
| Résolution | Tests en **720p** (ou Seedance 2.0 Fast) → version finale en **1080p** |
| Audio natif | **ON** (on garde la synchro labiale et l'ambiance ; les voix seront remplacées après) |
| Variantes | **3–4 par scène**, on garde la meilleure (pratique standard en micro-drama IA) |
| Seed | Noter la seed de la prise retenue dans `production/shot_ledger.csv` |

**Syntaxe des références :** les prompts utilisent `@Image1`, `@Image2`… dans l'ordre où tu charges les images. Adapte à ton interface (certaines plateformes insèrent le jeton automatiquement quand tu cliques sur l'image).

**Règles qui font la différence :**
1. **Une seule image de référence par personnage** (`REF_xxx_face`). Jamais la planche de vues + le portrait ensemble.
2. **Décrire le mouvement, pas l'image** : le keyframe montre déjà tout.
3. **Caméra fixe pendant que quelqu'un parle**, pas de "hoche la tête / tourne la tête" pendant la réplique (ça casse la synchro labiale).
4. **Un seul personnage parle par plan**, 5 à 10 mots maximum.
5. **2 à 3 plans maximum par clip de 10 s** (balises `[0s] [4s] [7s]`). Si la scène dérive, la générer en **2 clips de 5 s** et les monter bout à bout : la scène fait toujours 10 s au montage.
6. Demander **"no background music"** : une voix propre, sans musique, est indispensable pour le remplacement de voix dans ElevenLabs.

---

## S1 — HOOK (sans dialogue à l'écran)
Réfs : `@Image1` = `EP01_S01_KF` (première frame) · `@Image2` = `REF_INES_face`

```
@Image1 is the first frame. The woman is the character from @Image2.
[0s] Extreme close-up, static camera. She listens to her phone pressed against her ear, completely still, holding her breath.
[3s] Her eyes slowly widen, her pupils dilate, a slight tremble on her lips. A pulse of emerald-green neon light sweeps across her face and fades.
[6s] Very slow push-in toward her eyes. Rain shadows slide down her cheek. She swallows.
Maintain the exact appearance of the characters from the reference images: same face, same hair, same outfit, same accessories on the same side. Consistent character throughout, stable face, no morphing, no flicker, no deformation or drift.
Stylized 3D animated feature film look, slightly exaggerated proportions, large expressive eyes, soft stylized skin shading, hand-painted textures, cinematic composition. Rainy Paris night. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic.
Audio: ambience only — soft rain, faint electric hum of neon lights. No music, no voices, no speech.
Avoid: talking, mouth movement, distorted face, extra fingers, text, subtitles, watermark.
```

## S2 — Le message, l'horloge, le guichet (sans dialogue à l'écran)
Réfs : `@Image1` = `EP01_S02_KF` · `@Image2` = `REF_INES_face` · `@Image3` = `PROP_HORLOGE`

```
@Image1 is the first frame. The woman is the character from @Image2.
[0s] Static wide shot from the back of the pharmacy. She stands still behind the counter, phone at her ear, listening. Rain streams down the front window, the green pharmacy cross outside blinks slowly.
[4s] Cut to an insert close-up of the round wall clock from @Image3 showing exactly 3:33; the red second hand twitches back and forth but never moves forward.
[7s] Cut to a medium shot: she slowly turns her head toward the dark, rain-streaked night-service window, phone still at her ear.
Maintain the exact appearance of the characters from the reference images: same face, same hair, same outfit, same accessories on the same side. Consistent character throughout, stable face, no morphing, no flicker, no deformation or drift. The clock hands stay at 3:33.
Stylized 3D animated feature film look, hand-painted textures, cinematic composition. Rainy Paris night. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic.
Audio: ambience only — soft rain, faint electric hum of neon lights, a soft clock tick. No music, no voices, no speech.
Avoid: talking, distorted face, clock hands moving forward, yellow objects, text, subtitles, watermark.
```

## S3 — « Génial. Maintenant je me laisse des messages. »
Réfs : `@Image1` = `EP01_S03_KF` · `@Image2` = `REF_INES_face`

```
@Image1 is the first frame. The woman is the character from @Image2.
[0s] Medium close-up, locked static camera. She stares at her phone screen, unimpressed, then looks up and says in French, dry and tired: "Génial. Maintenant je me laisse des messages." Her head stays still while she speaks.
[5s] Cut to a close-up profile shot: she taps the screen and brings the phone back to her ear, waiting. Her eyebrows slowly knit into a worried frown. She does not speak.
Maintain the exact appearance of the characters from the reference images: same face, same hair, same outfit, same accessories on the same side. Consistent character throughout, stable face, no morphing, no flicker, no deformation or drift.
Stylized 3D animated feature film look, slightly exaggerated proportions, large expressive eyes, soft stylized skin shading, hand-painted textures, cinematic composition. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic.
Audio: clean close-mic dialogue only, spoken in French, light rain ambience, no background music, no other voices.
Avoid: nodding, head turning while speaking, distorted mouth, extra fingers, text, subtitles, watermark.
```

## S4 — Le parapluie jaune arrive (sans dialogue)
Réfs : `@Image1` = `EP01_S04_KF` · `@Image2` = `PROP_PARAPLUIE_ouvert`

```
@Image1 is the first frame. The umbrella is the one from @Image2.
[0s] Static wide shot of the empty rainy cobblestone street at night. Heavy rain, puddles rippling, the green pharmacy cross blinking on the right.
[4s] Slow dolly-in down the street toward the figure under the bright canary-yellow umbrella, who walks slowly and steadily toward the pharmacy. Only the long dark trench coat and legs are visible; the umbrella always hides the face.
[8s] The figure stops right in front of the pharmacy window; the umbrella tilts slightly; rain drips from its edge.
Consistent umbrella shape and color throughout, no morphing, no flicker.
Stylized 3D animated feature film look, hand-painted textures, cinematic composition. Rainy Paris night. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights, saturated canary-yellow used only as a rare accent. Volumetric light, subtle film grain. Not photorealistic.
Audio: heavy rain on cobblestones, slow footsteps splashing in puddles, a distant police siren. No music, no voices, no speech.
Avoid: visible face, other people, cars, text, subtitles, watermark.
```

## S5 — Trois coups. « Bonsoir. N'ayez pas peur. »
Réfs : `@Image1` = `EP01_S05_KF` · `@Image2` = `REF_INES_face` · `@Image3` = `REF_ELIAS_face`

```
@Image1 is the first frame. The woman is the character from @Image2. The man outside is the character from @Image3.
[0s] Medium shot. The man knocks three sharp times on the glass with his bandaged left hand. In the blurred foreground, the woman flinches and steps back.
[3s] Cut to a close-up of the man seen through the rain-streaked glass, locked static camera. He slowly raises his head from the shadow of the yellow umbrella; green neon reveals a gentle, exhausted face. He says softly in French: "Bonsoir. N'ayez pas peur." His head stays still while he speaks.
Maintain the exact appearance of the characters from the reference images: same face, same hair, same outfit, same accessories on the same side. Consistent character throughout, stable face, no morphing, no flicker, no deformation or drift.
Stylized 3D animated feature film look, slightly exaggerated proportions, large expressive eyes, soft stylized skin shading, hand-painted textures, cinematic composition. Rainy Paris night. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights, saturated canary-yellow used only as a rare accent. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic.
Audio: three loud knocks on glass, then clean close-mic dialogue only, spoken in French, rain ambience, no background music, no other voices.
Avoid: the woman speaking, nodding, distorted mouth, extra fingers, text, subtitles, watermark.
```

> 💡 Si la synchro labiale est faible : générer **S5a** (0–3 s, les coups, 5 s puis couper) et **S5b** (le gros plan dialogué, 5–7 s) séparément.

## S6 — « Je n'ouvre pas. Mettez votre ordonnance dans le tiroir. »
Réfs : `@Image1` = `EP01_S06_KF` · `@Image2` = `REF_INES_face` · `@Image3` = `REF_ELIAS_face`

```
@Image1 is the first frame. The woman is the character from @Image2. The hand in the second shot belongs to the man from @Image3.
[0s] Close-up, locked static camera. She leans toward the metal intercom grille and says firmly in French: "Je n'ouvre pas. Mettez votre ordonnance dans le tiroir." Her head stays still while she speaks.
[5s] Cut to an insert close-up of the steel sliding drawer of the night-service window: the man's LEFT hand wrapped in a white gauze bandage with a small red stain places a folded sheet of paper in the tray; a white hospital wristband is visible on his RIGHT wrist. The drawer slides inward with a metallic clank.
Maintain the exact appearance of the characters from the reference images: same face, same hair, same outfit, same accessories on the same side. Consistent character throughout, stable face, no morphing, no flicker, no deformation or drift.
Stylized 3D animated feature film look, slightly exaggerated proportions, large expressive eyes, soft stylized skin shading, hand-painted textures, cinematic composition. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic.
Audio: clean close-mic dialogue only, spoken in French, light rain ambience, then a metallic drawer clank. No background music, no other voices.
Avoid: nodding, head turning while speaking, extra fingers, deformed hands, text, subtitles, watermark.
```

## S7 — RETOURNEMENT : « C'est… mon écriture. »
Réfs : `@Image1` = `EP01_S07_KF` · `@Image2` = `REF_INES_face`

```
@Image1 is the first frame. The hands and face belong to the woman from @Image2.
[0s] Static top-down close-up. Her hands smooth the handwritten note flat on the counter, then her right hand slides the small pale-pink sticky note right next to it. The handwriting on both papers stays exactly the same, sharp and unchanged. Very slow push-in.
[6s] Cut to a close-up of her face, locked static camera, lit from below by the warm counter light: disbelief, short breaths. She whispers in French: "C'est… mon écriture."
Maintain the exact appearance of the characters from the reference images: same face, same hair, same outfit, same accessories on the same side. The text on the paper does not change. Consistent character throughout, stable face, no morphing, no flicker, no deformation or drift.
Stylized 3D animated feature film look, slightly exaggerated proportions, large expressive eyes, soft stylized skin shading, hand-painted textures, cinematic composition. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic.
Audio: paper rustling, a whispered line in French, close-mic, light rain ambience. No background music, no other voices.
Avoid: text morphing, yellow sticky notes, extra fingers, deformed hands, subtitles, watermark.
```

> 💡 Le texte manuscrit risque de "bouger" en vidéo. Plan B fiable : utiliser l'image fixe `PROP_MOT` 6 s dans le montage avec un lent zoom (effet Ken Burns) + générer seulement le gros plan visage (4 s) dans Seedance.

## S8 — « C'est toi qui m'as dit de venir, Inès. »
Réfs : `@Image1` = `EP01_S08_KF` · `@Image2` = `REF_ELIAS_face` · `@Image3` = `REF_INES_face`

```
@Image1 is the first frame. The man is the character from @Image2. The hand in the second shot belongs to the woman from @Image3.
[0s] Close-up through the rain-streaked glass, locked static camera. The man looks straight into the lens with sad, gentle eyes and says in a low, quiet voice in French: "C'est toi qui m'as dit de venir, Inès." His head stays still while he speaks. The yellow umbrella glow trembles on his wet face.
[5s] Cut to an insert close-up: her trembling hand, red leather watch strap on her LEFT wrist, hovers just above the green door-release button on the counter, without pressing it.
[7s] Cut to a close-up of her mint-green phone lying face-up on the dark wooden counter: the screen lights up and the phone vibrates against the wood.
Maintain the exact appearance of the characters from the reference images: same face, same hair, same outfit, same accessories on the same side. Consistent character throughout, stable face, no morphing, no flicker, no deformation or drift.
Stylized 3D animated feature film look, slightly exaggerated proportions, large expressive eyes, soft stylized skin shading, hand-painted textures, cinematic composition. Rainy Paris night. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights, saturated canary-yellow used only as a rare accent. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic.
Audio: clean close-mic dialogue only, spoken in French, rain ambience, then a phone vibrating loudly on wood. No background music, no other voices.
Avoid: nodding, distorted mouth, button being pressed, readable screen text, extra fingers, subtitles, watermark.
```

## S9 — CLIFFHANGER : le deuxième parapluie
Réfs : `@Image1` = `EP01_S09_KF_start` (**première frame**) · `@Image2` = `EP01_S09_KF` (**dernière frame**) · `@Image3` = `REF_INES_face` · `@Image4` = `REF_ELIAS_face`

> Si ton interface ne permet pas "first + last frame" en même temps que des références : utilise le mode **first/last frame** avec seulement `@Image1` et `@Image2` (les keyframes contiennent déjà les persos).

```
@Image1 is the first frame and @Image2 is the last frame. The woman is the character from @Image3. The man outside is the character from @Image4.
[0s] Close-up of the woman slowly raising her phone to her ear, listening, fear growing on her face. Static camera.
[3s] Cut to the man outside, seen through the rain-streaked glass under his yellow umbrella: he looks lost, then his eyes slowly slide past her shoulder toward the back of the pharmacy, alarmed.
[6s] Cut to the final shot: from near the front window looking toward the back. The woman is out of focus in the foreground, unaware. Slow rack focus to the half-open storage room door at the back: a second closed bright canary-yellow umbrella leans against the shelves, dripping, a puddle spreading on the checkered tiles. Hold. She does not turn around.
Maintain the exact appearance of the characters from the reference images: same face, same hair, same outfit, same accessories on the same side. Consistent character throughout, stable face, no morphing, no flicker, no deformation or drift.
Stylized 3D animated feature film look, hand-painted textures, cinematic composition. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights, saturated canary-yellow used only as a rare accent. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic.
Audio: ambience only — rain, neon hum, slow water drops falling on tiles, a low ominous room tone. No music, no voices, no speech.
Avoid: anyone speaking, a person in the storage room, the woman turning around, text, subtitles, watermark.
```

---

## Continuité entre scènes (raccords)

- **Raccord direct** (S1→S2, S5→S6, S8→S9) : si une prise finit bien, extraire sa **dernière image** (`scripts/derniere_image.sh`) et s'en servir comme référence ou première frame de la scène suivante plutôt que le keyframe.
- **Coupes franches** : entre deux scènes, couper sur un **changement de valeur de plan** (large → serré) ; les petites différences passent inaperçues.
- **Masquer une dérive** : un insert (horloge, téléphone, mains, pluie sur la vitre) de 1 s permet de cacher un raccord raté.

## Contrôle qualité de chaque prise ✅
- [ ] Visage stable du début à la fin (pas de "morphing")
- [ ] Accessoires du bon côté (cicatrice D, boucle G, montre G / bandage G, bracelet D)
- [ ] Parapluie jaune canari, forme constante
- [ ] Bouche qui bouge **uniquement** pendant les répliques prévues
- [ ] Pas de texte parasite, pas de sous-titres incrustés par le modèle
- [ ] Rien d'important dans les 20 % du bas et sur le bord droit (interface TikTok)
