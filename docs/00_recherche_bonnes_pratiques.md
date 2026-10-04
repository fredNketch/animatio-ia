# Synthèse des recherches — bonnes pratiques (octobre 2026)

Ce document résume ce qui marche (et ce qui ne marche pas) avec Seedream 4.5, Seedance 2.0, ElevenLabs et le format micro-série TikTok. Chaque choix du dossier de production découle de ces points.

## 1. Seedance 2.0 — ce qu'il faut savoir

| Point | Ce qu'on en retient |
|---|---|
| **Durée** | Clips de 4 à 15 s → 10 s par scène est dans la zone confortable |
| **Entrées** | Jusqu'à 9 images, 3 vidéos, 3 audios de référence ; modes "première/dernière frame" et "référence omni" |
| **Visages réalistes** | Filtre très agressif depuis février 2026 sur les visages photoréalistes → **style animation 3D stylisée** pour toute la série |
| **Filtre IP** | Ne jamais citer de studio, de film, de personnage connu dans un prompt |
| **Cohérence perso** | **1 à 2 images max par personnage**, angles et lumières similaires. Plusieurs images d'un même perso = le modèle hésite → dérive |
| **Ancres** | Répéter dans chaque prompt les traits immuables (cheveux, cicatrice, accessoires, côté gauche/droit). Les accessoires disparaissent en premier |
| **Négatifs** | Fonctionnent ("no morphing, no flicker, no distortion") |
| **Image-to-video** | Décrire **le mouvement**, pas l'image (le keyframe la montre déjà) |
| **Timeline prompting** | Balises `[0s] [3s] [6s]…` : 3–4 temps forts max pour 10 s, un mouvement de caméra par temps |
| **Dérive** | "Une action continue par clip" : plus il y a de beats, plus ça dérive → 2–3 plans max par clip, sinon 2 clips de 5 s |
| **Audio natif** | Voix + synchro labiale + ambiance générées ensemble. Répliques courtes (**5–10 mots**), caméra fixe, pas de mouvement de tête pendant la réplique, **un seul locuteur par plan** |
| **Français** | Pas dans les langues les plus fiables pour le lip-sync (mandarin et anglais en tête) → prévoir le remplacement de voix |
| **Variantes** | Générer 3–4 prises par plan et choisir |

## 2. Seedream 4.5 — ce qu'il faut savoir

- Jusqu'à **14 images de référence** (commencer avec 1–3 et n'en ajouter que si ça aide).
- **Pas de seed** sur certaines intégrations : **la cohérence passe par les images de référence**, pas par un numéro.
- Désigner le rôle de chaque référence : *"the woman from Image 1 in the pharmacy from Image 2"*.
- **Planche personnage** : face, 3/4, profil, dos, gros plan visage, accessoires récurrents. Réutiliser **le même jeu de références** à chaque image ; seul le prompt change.
- **Excellent rendu du texte** → le mot manuscrit (S7) et le titre de l'affiche peuvent être générés directement.
- **Choisir le format avant tout** (9:16 ici) pour ne pas tout regénérer.

## 3. Voix — le pipeline qui marche

- La méthode la plus citée pour du lip-sync propre avec Seedance 2.0 : générer une **performance vocale propre (sans musique ni bruitages)** dans Seedance, extraire l'audio, le passer dans le **Voice Changer (speech-to-speech) d'ElevenLabs**, réinjecter. Le Voice Changer garde le rythme, l'émotion, les respirations → la voix retombe sur les lèvres.
- Réglages : stabilité basse = plus d'émotion ; similarité haute = timbre fidèle (mais amplifie les défauts de la source) ; "remove background noise" si la source est bruitée.
- **Eleven v3** et ses balises (`[whispers]`, `[nervous]`, `[sighs]`…) pour les voix hors champ. Stabilité *Creative/Natural* (le mode *Robust* ignore les balises). Les clones PVC sont moins bien optimisés pour v3 que les voix conçues (Voice Design).

## 4. Le format micro-série

- **0–3 s** : une réaction de visage, une phrase choc ou une révélation déjà en cours. Jamais de plan d'installation lent, de générique ou de résumé.
- Structure : **cold open → escalade → cliffhanger**. Sur 90–120 s : **un retournement + une complication**.
- **Un seul retournement**, de préférence **visuel**, vers le milieu.
- Cliffhanger : la révélation, la menace, la découverte ou le choix — **couper un temps avant la résolution**.
- **Peu de dialogue** par génération : ça casse le rythme et réduit le contrôle au montage.
- Les séries fidélisent mieux que les vidéos isolées : un format récurrent donne une raison de s'abonner.

## Sources
- [Seedance 2.0 Reference Guide — Magic Hour](https://magichour.ai/blog/seedance-20-reference-guide)
- [Seedance 2.0 Character Consistency — CrePal](https://crepal.ai/blog/aivideo/blog-seedance-2-0-character-consistency/)
- [Timeline prompting Seedance 2 — MindStudio](https://www.mindstudio.ai/blog/timeline-prompting-seedance-2-cinematic-ai-video)
- [Seedance 2.0 content restrictions & workarounds — MindStudio](https://www.mindstudio.ai/blog/seedance-2-0-content-restrictions-workarounds)
- [Seedance 2.0 face limit — Clipdance](https://clipdance.ai/blog/seedance-2-real-face-workaround)
- [Seedance 2.0 Audio Guide — Cutout.pro](https://www.cutout.pro/learn/blog-seedance-2-0-audio-guide/)
- [Seedance 2.0 + ElevenLabs lip-sync workflow — Mirrorize](https://mirrorize.ai/learn/the-best-lipsync-workflow-right-now-seedance-2-0-elevenlabs)
- [Seedance 2.0 Prompt Guide — ChatCut](https://chatcut.io/blog/seedance-2-prompt-guide)
- [Seedream 4.5 ref2i character consistency — Siray](https://blog.siray.ai/seedream-4-5-ref2i-character-consistency-without-a-seed/)
- [Seedream Prompt Guide 2026 — Evolink](https://evolink.ai/blog/seedream-prompt-guide-best-practices-2026)
- [Seedream 4.5 for storyboards — 10b.ai](https://10b.ai/blog/seedream-4-5-storyboard)
- [ElevenLabs — Prompting Eleven v3](https://elevenlabs.io/docs/best-practices/prompting)
- [ElevenLabs — v3 audio tags](https://elevenlabs.io/blog/v3-audiotags)
- [ElevenLabs Voice Changer skill](https://skills.sh/elevenlabs/skills/voice-changer)
- [Hooks & cliffhangers for AI micro-drama — invideo](https://invideo.io/blog/ai-micro-drama-hooks-cliffhangers/)
- [How to create a TikTok series in 2026 — VerticalClap](https://verticalclap.com/en/blog/creer-serie-tiktok-2025)
- [TikTok series guide 2026 — InfluenceFlow](https://influenceflow.io/resources/the-ultimate-guide-to-creating-and-monetizing-your-tiktok-series-in-2026/)
- Guides officiels des modèles Seedance et Seedream (via ton compte ElevenLabs)
