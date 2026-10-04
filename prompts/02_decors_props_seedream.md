# Décors & accessoires — Seedream 4.5

> Les décors sont générés **vides** (sans personnage), en **9:16**, 2K. Ce sont des "plaques" que l'on réinjecte comme référence dans chaque keyframe. Même décor = même plaque, tout au long de la série.

Nomenclature : `production/refs/SET_<lieu>_v<N>.png` et `production/refs/PROP_<objet>_v<N>.png`

## 0. Image clé de style — `STYLE_KEY` (à faire en premier)

Elle fixe la "photographie" de toute la série. Format **9:16**, 2K.

```
Exterior of a tiny old Parisian night pharmacy on a narrow cobblestone street at 3 a.m., heavy rain, a glowing emerald-green pharmacy cross sign blinking above the storefront, warm amber light inside behind rain-streaked glass, wet cobblestones reflecting green and amber light, Haussmann-style buildings with dark windows, empty street, a single small bright canary-yellow umbrella far away at the end of the street. Vertical composition, low camera angle. Stylized 3D animated feature film look, slightly exaggerated proportions, hand-painted textures, cinematic composition. Rainy Paris night. Color palette: deep teal shadows, emerald-green neon light, warm amber practical lights, saturated canary-yellow used only as a rare accent. Volumetric light, subtle film grain, shallow depth of field. Not photorealistic. Avoid: photorealism, live-action, people in focus, readable shop names, text artifacts, watermark, logo.
```

---

## LIEU 1 — Pharmacie intérieur, côté comptoir → `SET_PHARMA_comptoir`

Vue depuis derrière le comptoir vers la vitrine. C'est le décor principal.

```
Interior of a tiny old Parisian night pharmacy at 3 a.m., seen from behind the wooden counter looking toward the front window. Narrow space, tall dark wooden shelves full of small medicine boxes in muted colors, an old cash register, a small computer screen glowing, on the right wall a round white wall clock with black hands showing exactly 3:33. The front wall has a small reinforced night-service window with a metal sliding tray at counter height, rain streaming down the glass, emerald-green light from the blinking pharmacy cross outside spilling inside. Warm amber ceiling lamp, deep teal shadows. Empty, no people. Vertical 9:16 composition. Stylized 3D animated feature film look, hand-painted textures, cinematic composition, volumetric light, subtle film grain. Not photorealistic. Avoid: yellow objects, yellow sticky notes, people, readable brand names, text artifacts, watermark, logo.
```

## LIEU 2 — Pharmacie intérieur, contrechamp → `SET_PHARMA_arriere`

Vue depuis la vitrine vers le fond : comptoir au premier plan, porte de l'arrière-boutique sombre au fond. **Indispensable pour le cliffhanger.**

```
Interior of the same tiny old Parisian night pharmacy at 3 a.m., reverse angle: seen from near the front window looking toward the back. Wooden counter in the foreground, tall dark wooden shelves of medicine boxes on both sides, at the back a half-open door leading to a dark storage room, black-and-white checkered tile floor, warm amber ceiling lamp, emerald-green neon light from outside washing over the shelves, deep teal shadows in the storage room. Empty, no people. Vertical 9:16 composition. Stylized 3D animated feature film look, hand-painted textures, cinematic composition, volumetric light, subtle film grain. Not photorealistic. Avoid: yellow objects, people, readable brand names, text artifacts, watermark, logo.
```

## LIEU 3 — Guichet de nuit → `SET_GUICHET`

```
Close view of a night-service window in an old Parisian pharmacy, seen from inside: a small rectangle of thick reinforced glass with a round metal intercom grille, a worn steel sliding drawer tray built into the counter below it, heavy rain streaming down the glass, blurred dark wet street outside with emerald-green neon reflections, a green door-release button with a key symbol on the counter next to the window. Warm amber light inside. Empty, no people. Vertical 9:16 composition. Stylized 3D animated feature film look, hand-painted textures, cinematic composition, volumetric light, subtle film grain. Not photorealistic. Avoid: yellow objects, people, text artifacts, watermark, logo.
```

## LIEU 4 — Rue extérieure → `SET_RUE`

Utiliser `STYLE_KEY` comme Image 1 pour garder la même rue.

```
Using the street from Image 1, same buildings, same pharmacy storefront and green cross: wider vertical view of the empty narrow cobblestone street at 3 a.m. in heavy rain, puddles reflecting the blinking emerald-green pharmacy cross, a single old street lamp with amber light, no umbrella, no people. Vertical 9:16 composition, eye-level camera. Stylized 3D animated feature film look, hand-painted textures, cinematic composition, volumetric light, subtle film grain. Not photorealistic. Avoid: people, cars, readable signs, text artifacts, watermark, logo.
```

---

## ACCESSOIRES (fond gris uni, 1:1, 2K)

### `PROP_PARAPLUIE`
```
Product-style reference of a bright canary-yellow classic dome umbrella, open, with a curved polished wooden handle and a thin black metal tip, rain droplets on the fabric, three-quarter view, on a plain medium-grey background, soft even studio lighting. Stylized 3D animated feature film look, hand-painted textures. Avoid: text, logo, watermark.
```

### `PROP_TELEPHONE`
```
Reference of a smartphone in a matte mint-green case with a cracked screen corner (top left), screen lit showing an incoming voice message notification as abstract shapes only, lying on a dark wooden counter, top-down view, plain composition. Stylized 3D animated feature film look. Avoid: readable text, brand logos, watermark.
```

### `PROP_HORLOGE`
```
Round white wall clock with a thin black frame, simple black hour markers, black hour and minute hands pointing at exactly 3:33, thin red second hand, front view, on a plain medium-grey background, soft even lighting. Stylized 3D animated feature film look. Avoid: brand names, extra hands, watermark.
```

### `PROP_MOT` — le mot manuscrit (scène 7)
Seedream rend bien le texte : on exploite ça. Format **9:16**, 2K.

```
Top-down close-up of a folded-open sheet of slightly damp off-white paper lying on a dark wooden pharmacy counter, handwritten in blue ink with a slightly slanted rounded feminine handwriting, the text reads exactly: "Ouvre-lui. Il est le seul qui peut te sauver. — Inès" followed by a small hand-drawn star. Next to it, a small pale-pink sticky note with the same handwriting reading exactly: "Rappeler Mme Lopez". Emerald-green and warm amber light, raindrop shadows. Stylized 3D animated feature film look, hand-painted textures. Avoid: yellow sticky notes, misspelled text, extra text, watermark, logo.
```
> Vérifier l'orthographe lettre par lettre. Si une lettre est fausse : édition Seedream "fix the spelling to exactly …, keep everything else identical".

---

## AFFICHE / COUVERTURE TIKTOK — `COVER_EP01` (après les persos)

Images de référence : Image 1 = `REF_INES_face`, Image 2 = `REF_ELIAS_face`, Image 3 = `STYLE_KEY`. Format **9:16**, 2K.

```
Vertical movie poster. Inès from Image 1 in the foreground, close-up, lit by cold phone light from below, wide frightened eyes, holding her mint-green phone near her ear. Behind her, seen through rain-streaked glass, the tall man from Image 2 standing in the rain under a glowing canary-yellow umbrella, face half in shadow. Street and pharmacy atmosphere from Image 3. Large bold condensed title at the top reading exactly "3H33", and smaller text at the bottom reading exactly "ÉPISODE 1 — LE PARAPLUIE JAUNE". Leave the bottom 20% of the image calm and uncluttered. Stylized 3D animated feature film look, hand-painted textures, cinematic composition, volumetric light. Color palette: deep teal shadows, emerald-green neon, warm amber, canary-yellow accent. Not photorealistic. Avoid: misspelled text, extra text, watermark, logo.
```
