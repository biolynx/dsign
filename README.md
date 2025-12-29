# D'Sign — Site Portfolio Créatif

Un site web moderne et minimaliste d'une page pour un créatif multidisciplinaire.

## Fonctionnalités

✨ **Design Moderne**
- Layout épuré et minimaliste
- Typographie audacieuse avec logo signature
- Base noir & blanc avec accent violet
- Défilement fluide et animations subtiles

🎨 **Sections**
1. **Hero** - Introduction plein écran avec logo signature
2. **À propos** - Présentation personnelle
3. **Services** - Photographie, Vidéo, Design Graphique, Contenu Visuel
4. **Portfolio** - Présentation du travail visuel
5. **Mindset** - Philosophie créative
6. **Contact** - Informations de contact simples

🚀 **Performance**
- Design responsive mobile-first
- Animations optimisées
- Chargement paresseux des images
- Défilement fluide

## Instructions d'Installation

### 1. Ajouter les Images du Portfolio

Placez 6 images de portfolio dans le dossier `images/` avec ces noms :
- `work-1.jpg` (Travail de photographie)
- `work-2.jpg` (Miniature vidéo)
- `work-3.jpg` (Design graphique)
- `work-4.jpg` (Identité visuelle)
- `work-5.jpg` (Travail de photographie)
- `work-6.jpg` (Contenu visuel)

**Spécifications d'image recommandées :**
- Format : JPG ou PNG
- Dimensions : 1200x900px (ratio 4:3)
- Taille de fichier : Moins de 500 Ko chacune (optimisé pour le web)

### 2. Utiliser des Images Temporaires (Provisoire)

Si vous n'avez pas encore d'images, vous pouvez utiliser des services de placeholder :

**Option A : Unsplash (Photographie de haute qualité)**
```
https://source.unsplash.com/1200x900/?photography
https://source.unsplash.com/1200x900/?video
https://source.unsplash.com/1200x900/?design
etc.
```

**Option B : Placeholder.com**
```
https://via.placeholder.com/1200x900/000000/FFFFFF?text=Photographie
https://via.placeholder.com/1200x900/000000/FFFFFF?text=Video
etc.
```

Mettez simplement à jour les attributs `src` dans `index.html` pour utiliser ces URLs temporairement.

### 3. Personnaliser le Contenu

Éditez `index.html` pour personnaliser :
- Adresse email : Remplacez `hello@dsign.studio`
- Nom Instagram : Remplacez `@dsign` par votre identifiant
- Texte À propos
- Descriptions des services
- Citation sur le mindset créatif

### 4. Personnalisation des Couleurs

Pour changer la couleur d'accent, éditez `css/style.css` :
```css
:root {
    --color-accent: #6366f1; /* Changez ceci pour votre couleur préférée */
}
```

Alternatives populaires :
- Bleu électrique : `#3b82f6`
- Violet profond : `#7c3aed`
- Magenta : `#ec4899`

## Compatibilité Navigateurs

✅ Chrome, Firefox, Safari, Edge (dernières versions)
✅ Navigateurs mobiles (iOS Safari, Chrome Mobile)

## Stack Technique

- **HTML5** - Balisage sémantique
- **CSS3** - Styling moderne avec CSS Grid & Flexbox
- **JavaScript Vanilla** - Pas de dépendances
- **Google Fonts** - Inter & Playfair Display

## Structure des Fichiers

```
D'SIGN/
├── index.html          # Fichier HTML principal
├── css/
│   └── style.css      # Tous les styles
├── js/
│   └── script.js      # Fonctionnalités JavaScript
├── images/            # Images du portfolio (ajoutez les vôtres)
│   ├── work-1.jpg
│   ├── work-2.jpg
│   ├── work-3.jpg
│   ├── work-4.jpg
│   ├── work-5.jpg
│   └── work-6.jpg
└── README.md          # Ce fichier
```

## Démarrage Rapide

1. Ouvrez `index.html` dans votre navigateur pour prévisualiser
2. Ajoutez vos images de portfolio dans le dossier `images/`
3. Personnalisez le contenu dans `index.html`
4. Ajustez les couleurs dans `css/style.css` si nécessaire
5. Déployez sur votre service d'hébergement

## Suggestions d'Hébergement

- **Netlify** - Déploiement par glisser-déposer (gratuit)
- **Vercel** - Rapide et simple (gratuit)
- **GitHub Pages** - Hébergement avec contrôle de version (gratuit)
- **Domaine personnalisé** - Pointez votre domaine vers l'un des services ci-dessus

## Crédits

Conçu et développé pour D'Sign Studio Créatif
Construit avec passion et précision ✨

---

**Besoin d'aide ?** Ouvrez `index.html` et commencez à personnaliser !
