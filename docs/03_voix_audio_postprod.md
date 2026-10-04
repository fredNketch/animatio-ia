# Voix & audio — le pipeline après Seedance

## Le problème
Seedance 2.0 génère l'audio **en même temps** que l'image (voix + synchro labiale + ambiance), mais tu ne peux pas lui donner **ta** voix de personnage en entrée. Résultat : d'un clip à l'autre, Inès n'a pas la même voix. Et le français n'est pas sa langue la plus fiable (il est meilleur en mandarin et en anglais).

## La solution : garder la *performance* de Seedance, remplacer le *timbre* avec ElevenLabs
Le **Voice Changer (Speech-to-Speech)** d'ElevenLabs conserve le rythme, les pauses, l'émotion et la durée exacte de la réplique, et change seulement **qui parle**. Comme la durée ne bouge pas, la nouvelle voix retombe pile sur les mouvements de bouche générés par Seedance.

```
Clip Seedance (voix native, sans musique)
   │
   ├─► 1. Extraire l'audio            scripts/extraire_audio.sh
   ├─► 2. Voice Isolator (ElevenLabs) → enlève pluie/bruits
   ├─► 3. Voice Changer (ElevenLabs)  → voix officielle du personnage
   └─► 4. Réinjecter dans le clip     scripts/remplacer_audio.sh  (ou directement au montage)
```

---

## 1. Casting des voix (bibliothèque ElevenLabs de ton compte)

J'ai cherché dans ta bibliothèque des voix françaises qui collent aux personnages. **Écoute les aperçus avant de valider** (ElevenLabs → Voices → recherche par nom), puis ajoute-les à "My Voices".

| Personnage | Voix principale | voice_id | Alternatives |
|---|---|---|---|
| **Inès** (27 ans, fatiguée, ironique) | **Morgane – douce + intensément expressive** | `ZYOBieLaunTiQrTrvNQq` | Lucie – Jeune Fille Parisienne `KmqhNPEmmOndTBOPk4mJ` · Emi `Crnn8UaAugljbB6XhAKo` |
| **Élias / l'inconnu** (45 ans, grave, doux, inquiétant) | **Eric – Calm, Low & Reflective** | `9osbeK6KzhDRV0yX4rTq` | Paul K – Deep Engaging Storyteller `MBIQRZjHPU6xEjGuB3b8` · Hugo – Deep French Storyteller `6DEjyaHWnTHsvXM5Byys` |
| **Opérateur téléphonique** | **Claire – Customer service** | `HuLbOdhRlvQQN8oPP0AJ` | Victoria Agent `uOw88F5bjqRiVuZLhXEA` |

> ⚠️ **Ces voix ne changent plus jamais** de la série. Note les voice_id dans `production/shot_ledger.csv`.

**Option "voix 100 % unique"** : créer les voix avec **Voice Design** (ElevenLabs) à partir d'une description. Avantage : voix exclusive et mieux optimisée pour le modèle v3 (les voix "professionnelles" de la bibliothèque sont des clones PVC, que v3 gère moins bien). Descriptions prêtes à l'emploi :
- **Inès** : *« Jeune femme française de 27 ans, accent parisien neutre, voix légèrement rauque de fatigue, débit posé, ironie sèche, peut chuchoter de façon intime et paniquer de façon crédible. »*
- **Élias** : *« Homme français d'environ 45 ans, voix grave, douce et lente, un peu rocailleuse, ton calme et triste, inquiétant malgré sa gentillesse. »*

Voice Design demande aussi une phrase d'essai de 100 caractères minimum (dis-moi laquelle tu veux et je lance la génération depuis ton compte).

---

## 2. Répliques à l'écran (lip-sync) → Voice Changer

Concerne : **D1 (S3), D2 (S5), D3 (S6), D4 (S7), D5 (S8)**

### Étapes
1. Dans Seedance, prompt avec le dialogue en français et **"no background music"** (déjà dans les prompts).
2. `./scripts/extraire_audio.sh production/videos/EP01_S03.mp4` → `EP01_S03_audio.wav`
3. ElevenLabs → **Voice Isolator** → charger le WAV → télécharger la version isolée.
4. ElevenLabs → **Voice Changer** → charger la voix isolée → choisir la voix du personnage.
5. `./scripts/remplacer_audio.sh EP01_S03.mp4 EP01_S03_voix.mp3 EP01_S03_final.mp4` (ou placer la piste au montage).

### Réglages Voice Changer recommandés
| Réglage | Valeur | Pourquoi |
|---|---|---|
| Modèle | Eleven Multilingual v2 (STS) | Gère le français |
| Stability | **40–50 %** | Assez bas pour suivre l'émotion de la source |
| Similarity | **80–90 %** | Timbre fidèle au personnage (au-delà, les défauts de la source ressortent) |
| Style exaggeration | **0 %** | Évite les artefacts |
| Remove background noise | **ON** | Double sécurité si tu sautes le Voice Isolator |
| Speaker boost | **ON** | Clarté |

### Si Seedance a "baragouiné" la réplique (mots faux, charabia)
Trois plans B, du meilleur au plus rapide :
1. **Ta propre performance** (le plus fiable) : lis le clip **en muet**, enregistre-toi au téléphone en disant la réplique **en rythme avec la bouche** (2–3 essais), puis passe ton enregistrement dans le **Voice Changer** avec la voix du perso. Peu importe ta voix : seul ton jeu et ton timing sont gardés.
2. **TTS + lip-sync** : générer la réplique en TTS (voix du perso), puis recaler la bouche avec un modèle de lip-sync (**Sync 3** ou **Sync Lipsync 2 Pro**, dispo dans les Flows de ton compte ElevenLabs).
3. **Masquer** : couper sur un contrechamp (l'autre perso qui écoute) pendant la réplique — la voix passe en hors champ.

---

## 3. Voix hors champ (téléphone, opérateur) → Text-to-Speech v3

Concerne : **V1, V2, V4** (voix d'Inès au téléphone) et **V3** (opérateur). Pas de lip-sync = on génère directement en TTS.

**Modèle :** Eleven v3 (balises d'émotion entre crochets). Réglage stabilité : **Creative** ou **Natural** (Robust ignore les balises). Si les balises ne réagissent pas avec la voix choisie, passer en Multilingual v2, stabilité 35 %.

Textes à coller **tels quels** :

**V1 — S1 (voix d'Inès, ~4 s)**
```
[whispers] Inès… [pause] c'est moi. [nervous] Enfin… c'est toi. [whispers] Écoute-moi bien.
```

**V2 — S2 (voix d'Inès, ~7 s)**
```
[whispers] Dans dix minutes, un homme avec un parapluie jaune va frapper au guichet. [pause] [urgently] Quoi qu'il te dise… n'ouvre pas.
```

**V3 — S3 (opérateur, ~3 s)** — voix Claire, Multilingual v2, stabilité 75 % (voix robotique et plate)
```
Le numéro que vous avez demandé n'est plus attribué.
```

**V4 — S9 (voix d'Inès, ~3 s)**
```
[panicked] [whispers] Trop tard… [breathing heavily] il est déjà à l'intérieur.
```

Puis appliquer l'effet téléphone : `./scripts/filtre_telephone.sh V1.mp3 V1_tel.wav` (et idem V2, V3, V4).

> Astuce cohérence : la voix du téléphone **est** Inès → même voice_id que ses répliques à l'écran. Le filtre téléphone suffit à la différencier.

---

## 4. Bruitages (ElevenLabs Sound Effects)

Générer chaque son séparément (durée indiquée), ou garder ceux de Seedance s'ils sont bons.

| Son | Prompt (EN) | Durée |
|---|---|---|
| **Pluie continue (lit sonore)** | `steady heavy rain on a city street at night, heard from inside a small shop through glass, no thunder` | 30 s, **loop ON** |
| Bourdonnement néon | `faint electric buzz of an old neon sign, constant, subtle` | 10 s, loop ON |
| Vibration téléphone | `smartphone vibrating loudly on a wooden counter, three buzzes` | 3 s |
| Trois coups sur vitre | `three sharp knocks with knuckles on thick shop window glass` | 2 s |
| Tiroir métallique | `steel sliding drawer of a night pharmacy window pushed in, metallic clank` | 2 s |
| Pas sur pavés mouillés | `slow footsteps of a man walking on wet cobblestones in the rain` | 6 s |
| Gouttes sur carrelage | `slow water drops falling from an umbrella onto ceramic tiles, quiet room` | 6 s, loop ON |
| Sirène lointaine | `distant police siren in a rainy city at night, far away` | 6 s |
| Impact final | `deep cinematic low boom hit with short reverb tail, ominous` | 3 s |

> 🎯 **Astuce de cohérence n°1** : la **pluie tourne en continu sous les 90 s**. Ce lit sonore unique "recoud" les 9 clips et masque les changements d'ambiance d'un clip IA à l'autre.

## 5. Musique (ElevenLabs Music)

**Option A — Video to Music** (recommandée) : une fois le montage image terminé, charger la vidéo dans un Flow ElevenLabs → nœud **Video to Music**, avec ce guidage :
```
dark minimal synth suspense score, slow pulsing heartbeat bass, sparse piano notes, tension rising toward the end, sudden silence for the final reveal
```

**Option B — Music** : instrumental, 90 s :
```
Instrumental dark suspense score for a mystery thriller, 90 seconds. Slow pulsing synth bass like a heartbeat, sparse detuned piano notes, rain atmosphere. Builds tension gradually from 0:30, peaks around 1:15, then drops to near silence at 1:22 for a final reveal, ending on a low ominous drone. No vocals.
```

## 6. Mixage (niveaux cibles)

| Piste | Niveau |
|---|---|
| Dialogues & voix téléphone | référence : crêtes vers **−6 dBFS** |
| Pluie continue | **−24 à −28 dB** sous les dialogues |
| Musique | **−20 dB** sous les dialogues (ducking pendant les répliques), remonte pendant S4 |
| Bruitages ponctuels (coups, tiroir, vibration) | bien présents, crêtes vers −8 dBFS |
| **Master final** | **−14 LUFS intégrés**, crête vraie **−1 dBTP** (`scripts/assembler.sh` le fait automatiquement) |

**Moment clé du mix (S9)** : musique coupée net sur le dernier plan, il ne reste que les gouttes sur le carrelage + le grondement final → le silence rend le cliffhanger beaucoup plus fort.
