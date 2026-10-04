# Personnages — création dans Seedream 4.5

> Objectif : obtenir pour chaque personnage **UNE image de référence maître** (le "visage officiel") + une planche de vues + une planche d'expressions. Ces fichiers seront réutilisés dans **tous** les épisodes.

## Méthode (à suivre dans cet ordre)

1. **Portrait héros** (texte seul) → générer 4 variantes, en choisir **une**. Itérer jusqu'à ce qu'il soit parfait : tout le reste en découle.
2. **Référence visage** `REF_INES_face.png` : à partir du portrait héros (en image de référence), un portrait neutre de face, fond gris uni, lumière neutre.
3. **Planche de vues (turnaround)** : à partir de la référence visage.
4. **Planche d'expressions** : à partir de la référence visage.
5. **Contrôle** avec la checklist en bas de page. Si un détail manque (cicatrice, boucle d'oreille…), on corrige en édition Seedream plutôt que de regénérer.

**Règles clés (issues des recherches) :**
- Dans Seedance, **une seule image par personnage** (la référence visage, ou un plan buste). Plusieurs images d'un même perso *réduisent* la cohérence (le modèle ne sait plus laquelle croire).
- Toutes les références d'un perso ont **la même lumière neutre** et **le même angle** (face ou 3/4) — mélanger lumière chaude et froide fait changer la couleur des yeux.
- **Ne jamais changer la tenue** dans les références. Un changement de tenue = décision de scénario, pas un accident.
- Fond **gris uni** pour les références : Seedance ne "colle" pas un décor parasite.

Nomenclature : `production/refs/REF_<PERSO>_<type>_v<N>.png`

---

## INÈS FERRAND

### 1. Portrait héros — `REF_INES_hero`
Format : **3:4**, 2K

```
Character portrait of Inès: 27-year-old woman, warm olive-brown skin, oval face, large hazel-amber eyes with light dark circles, thick dark eyebrows, thin pale scar crossing her RIGHT eyebrow, small beauty mark under her LEFT eye, voluminous dark-brown curly hair in a messy low bun with two loose curls framing her face, single small gold hoop earring on her LEFT ear only, open white knee-length pharmacist coat with sleeves rolled to the forearms, burgundy ribbed turtleneck sweater, dark grey trousers, small green enamel cross pin on the left lapel, analog watch with a red leather strap on her LEFT wrist. Medium shot from the waist up, three-quarter view, arms crossed, tired but sharp half-smile, standing behind a pharmacy counter at night, emerald-green neon light on one side of her face, warm amber light on the other. Stylized 3D animated feature film look, slightly exaggerated proportions, large expressive eyes, soft stylized skin shading, hand-painted textures, cinematic composition. Rainy Paris night. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights, saturated canary-yellow used only as a rare accent. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic. Avoid: photorealism, live-action, real human, anime, flat 2D, yellow clothing, extra fingers, deformed hands, distorted face, text artifacts, watermark, logo.
```

### 2. Référence visage — `REF_INES_face` ⭐ (LA référence utilisée dans Seedance)
Format : **1:1**, 2K — Image 1 = `REF_INES_hero`

```
Using the character from Image 1, create a clean character reference portrait: same exact face, hair, earring, scar, beauty mark and outfit. Front view, head and shoulders, neutral calm expression, looking straight at the camera, mouth closed. Plain medium-grey seamless background, soft even neutral studio lighting, no colored light, no shadows on the face. Stylized 3D animated feature film look, soft stylized skin shading, hand-painted textures. Not photorealistic. Avoid: photorealism, real human, anime, flat 2D, text, watermark, logo.
```

### 3. Planche de vues — `REF_INES_turnaround`
Format : **16:9**, 2K — Image 1 = `REF_INES_face`

```
Character turnaround reference sheet of the woman from Image 1, same exact face, hair, accessories and outfit. Four full-body views side by side on one plain light-grey background: front view, three-quarter view, side profile, back view. Neutral standing pose, arms relaxed. Even neutral studio lighting, identical proportions and scale in every view, consistent design. Outfit: open white knee-length pharmacist coat, burgundy ribbed turtleneck sweater, dark grey trousers, white sneakers, green enamel cross pin on left lapel, red leather watch strap on LEFT wrist, single gold hoop on LEFT ear. Stylized 3D animated feature film look. Not photorealistic. Avoid: text, labels, watermark, extra limbs, different outfits between views.
```

### 4. Planche d'expressions — `REF_INES_expressions`
Format : **16:9**, 2K — Image 1 = `REF_INES_face`

```
Expression sheet of the woman from Image 1, same exact face, hair, scar on RIGHT eyebrow, gold hoop on LEFT ear, burgundy turtleneck and white coat collar. Six head-and-shoulders portraits in a 3x2 grid on a plain light-grey background: neutral, tired sarcastic half-smile, wide-eyed fear, suspicious frown, whispering with hand near mouth, shocked disbelief with parted lips. Even neutral studio lighting, identical design in every panel. Stylized 3D animated feature film look. Not photorealistic. Avoid: text, labels, watermark, different hairstyles between panels.
```

### Checklist Inès ✅
- [ ] Cicatrice sur le sourcil **DROIT** (à l'image : à gauche quand elle nous fait face)
- [ ] Grain de beauté sous l'œil **GAUCHE**
- [ ] **Une seule** boucle d'oreille dorée, oreille **GAUCHE**
- [ ] Chignon bas en bataille + 2 mèches bouclées devant
- [ ] Col roulé **bordeaux** (pas rouge vif, pas jaune)
- [ ] Blouse blanche ouverte, manches retroussées, pin's croix verte
- [ ] Montre bracelet **rouge**, poignet **GAUCHE**

---

## L'INCONNU — ÉLIAS VAUTRIN

### 1. Portrait héros — `REF_ELIAS_hero`
Format : **3:4**, 2K

```
Character portrait of a stranger: very tall thin man around 45, slightly stooped, long angular face, hollow cheeks, short neatly trimmed salt-and-pepper beard, pale grey eyes, kind but haunted expression, wet dark hair with grey streaks swept back, long dark navy trench coat soaked by rain with the collar up, charcoal scarf, white gauze bandage on his LEFT hand with a small red stain, white hospital ID wristband on his RIGHT wrist, holding a bright canary-yellow dome umbrella with a curved wooden handle in his RIGHT hand. Medium shot from the waist up, standing in heavy rain on a Paris street at night, the yellow umbrella glowing above him, emerald-green neon reflected on his wet face. Stylized 3D animated feature film look, slightly exaggerated proportions, large expressive eyes, soft stylized skin shading, hand-painted textures, cinematic composition. Rainy Paris night. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights, saturated canary-yellow used only as a rare accent. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic. Avoid: photorealism, live-action, real human, anime, flat 2D, extra fingers, deformed hands, distorted face, text artifacts, watermark, logo.
```

### 2. Référence visage — `REF_ELIAS_face` ⭐
Format : **1:1**, 2K — Image 1 = `REF_ELIAS_hero`

```
Using the character from Image 1, create a clean character reference portrait: same exact face, beard, hair, trench coat with collar up and charcoal scarf. Front view, head and shoulders, neutral calm expression, looking straight at the camera, mouth closed, no umbrella. Plain medium-grey seamless background, soft even neutral studio lighting, no colored light. Stylized 3D animated feature film look, soft stylized skin shading, hand-painted textures. Not photorealistic. Avoid: photorealism, real human, anime, flat 2D, text, watermark, logo.
```

### 3. Planche de vues — `REF_ELIAS_turnaround`
Format : **16:9**, 2K — Image 1 = `REF_ELIAS_face`

```
Character turnaround reference sheet of the man from Image 1, same exact face, beard and hair. Four full-body views side by side on one plain light-grey background: front view, three-quarter view, side profile, back view. Neutral standing pose, holding a closed bright canary-yellow umbrella with a curved wooden handle in his RIGHT hand. Long dark navy trench coat, collar up, charcoal scarf, dark trousers, worn black leather shoes, white gauze bandage on LEFT hand, white hospital wristband on RIGHT wrist. Even neutral studio lighting, identical proportions in every view. Stylized 3D animated feature film look. Not photorealistic. Avoid: text, labels, watermark, extra limbs, different outfits between views.
```

### 4. Planche d'expressions — `REF_ELIAS_expressions`
Format : **16:9**, 2K — Image 1 = `REF_ELIAS_face`

```
Expression sheet of the man from Image 1, same exact face, beard, swept-back wet hair, trench coat collar and charcoal scarf. Six head-and-shoulders portraits in a 3x2 grid on a plain light-grey background: neutral, gentle reassuring smile, sad tired eyes, urgent pleading, confused frown, looking past the viewer with growing alarm. Even neutral studio lighting, identical design in every panel. Stylized 3D animated feature film look. Not photorealistic. Avoid: text, labels, watermark.
```

### Checklist Élias ✅
- [ ] Barbe courte poivre et sel, yeux **gris pâle**
- [ ] Trench **bleu marine** col relevé + écharpe anthracite
- [ ] Bandage blanc + petite tache rouge, main **GAUCHE**
- [ ] Bracelet d'hôpital blanc, poignet **DROIT**
- [ ] Parapluie **jaune canari**, manche bois courbé, main **DROITE**

---

## Astuces si ça dérive

- **La cicatrice / la boucle d'oreille disparaît** → c'est le premier détail perdu ("feature erosion"). Corriger par édition Seedream ("add a thin pale scar crossing her right eyebrow, keep everything else identical").
- **Gauche/droite inversés** → regénérer, ne pas retourner l'image en miroir (ça inverse aussi la raie, la montre, etc.).
- **Le style glisse vers l'anime ou le réalisme** → remettre le bloc [STYLE] en entier, mot pour mot.
