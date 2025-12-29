# 🚀 Guide de Déploiement sur Vercel

## Problème Résolu

L'erreur **404 NOT_FOUND** que vous rencontrez est due à une mauvaise configuration. J'ai créé les fichiers nécessaires :

- ✅ `vercel.json` - Configuration Vercel
- ✅ `.gitignore` - Fichiers à ignorer dans Git

## 📋 Étapes pour Déployer

### Option 1 : Déploiement via Git (Recommandé)

#### 1. Initialiser Git (si pas déjà fait)

```bash
cd "D:\P&ID SOFTWARE\D'SIGN"
git init
```

#### 2. Ajouter les fichiers au commit

```bash
git add .
git commit -m "Initial commit: D'Sign website"
```

#### 3. Créer un dépôt GitHub

- Allez sur [github.com](https://github.com)
- Cliquez sur **New repository**
- Nommez-le `dsign-website`
- Ne cochez PAS "Initialize with README" (vous en avez déjà un)
- Cliquez sur **Create repository**

#### 4. Pousser vers GitHub

```bash
git remote add origin https://github.com/VOTRE-USERNAME/dsign-website.git
git branch -M main
git push -u origin main
```

#### 5. Connecter à Vercel

1. Allez sur [vercel.com](https://vercel.com)
2. Cliquez sur **Add New Project**
3. Importez votre dépôt GitHub `dsign-website`
4. Vercel détectera automatiquement que c'est un site statique
5. **IMPORTANT** : Dans les paramètres, vérifiez :
   - **Framework Preset** : `Other`
   - **Root Directory** : `./` (par défaut)
   - **Build Command** : Laissez vide
   - **Output Directory** : `./` (par défaut)
6. Cliquez sur **Deploy**

### Option 2 : Déploiement via CLI Vercel

#### 1. Installer Vercel CLI

```bash
npm install -g vercel
```

#### 2. Se connecter à Vercel

```bash
vercel login
```

#### 3. Déployer

```bash
cd "D:\P&ID SOFTWARE\D'SIGN"
vercel
```

Suivez les instructions :
- **Set up and deploy** : Yes
- **Which scope** : Votre compte
- **Link to existing project** : No
- **What's your project's name** : dsign-website
- **In which directory** : `./` (appuyez sur Entrée)
- **Want to override settings** : No

#### 4. Déployer en production

```bash
vercel --prod
```

## 🔧 Structure Requise

Votre projet doit avoir cette structure :

```
D'SIGN/
├── index.html          ← Fichier principal (obligatoire)
├── vercel.json         ← Configuration Vercel (créé)
├── .gitignore          ← Fichiers à ignorer (créé)
├── css/
│   └── style.css
├── js/
│   └── script.js
├── images/
│   └── (vos images)
└── README.md
```

## ⚠️ Points Importants

### 1. Supprimer les fichiers inutiles avant de commit

Ces fichiers ne doivent PAS être dans votre dépôt Git :
- `nul`
- `update-hero.js`
- `hero-background.html`
- `INSTRUCTIONS.md`
- `Spec`

Supprimez-les ou ajoutez-les au `.gitignore`.

### 2. Vérifier le fichier index.html

Assurez-vous que la ligne 117 ne contient PAS ce commentaire :
```html
<!-- Copiez cette section pour remplacer l'arrière-plan du Hero (lignes 117-121) -->
```

Supprimez-le si présent.

### 3. Ajouter une vraie photo de profil

Ajoutez `images/profile.jpg` pour remplacer le placeholder.

## 🎯 Commandes Git Complètes

```bash
# Aller dans le dossier
cd "D:\P&ID SOFTWARE\D'SIGN"

# Initialiser Git (si pas fait)
git init

# Ajouter tous les fichiers
git add .

# Créer le premier commit
git commit -m "Initial commit: D'Sign creative studio website"

# Ajouter le remote GitHub
git remote add origin https://github.com/VOTRE-USERNAME/dsign-website.git

# Pousser vers GitHub
git branch -M main
git push -u origin main
```

## 🌐 Après le Déploiement

Une fois déployé, Vercel vous donnera :
- ✅ URL de production : `https://dsign-website.vercel.app`
- ✅ URL de prévisualisation pour chaque commit
- ✅ Certificat SSL automatique
- ✅ CDN mondial

## 🔄 Mises à Jour Futures

Pour mettre à jour le site :

```bash
# Faire vos modifications dans index.html ou autre
# Puis :
git add .
git commit -m "Description de vos modifications"
git push
```

Vercel redéploiera automatiquement !

## 🆘 Résolution de Problèmes

### Erreur 404
- ✅ Vérifiez que `index.html` est à la racine
- ✅ Vérifiez que `vercel.json` est présent
- ✅ Relancez le déploiement

### Images ne s'affichent pas
- Vérifiez que le dossier `images/` contient bien vos images
- Vérifiez les chemins dans `index.html` : `images/work-1.jpg`

### Fonts Google ne chargent pas
- Normal, vérifiez votre connexion internet
- Les fonts sont chargées depuis Google Fonts CDN

## 📧 Besoin d'Aide ?

Si le problème persiste :
1. Vérifiez les logs de build sur Vercel
2. Assurez-vous que tous les fichiers sont bien commités
3. Contactez le support Vercel si nécessaire

---

**Votre site est prêt à briller ! 🎨✨**
