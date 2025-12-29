# Instructions pour ajouter l'arrière-plan artistique

## Étape 1 : Localiser la section Hero

Dans le fichier `index.html`, trouvez cette section (autour de la ligne 117) :

```html
        <!-- Animated Background -->
        <div class="absolute inset-0 overflow-hidden">
            <div class="absolute top-1/4 left-1/4 w-96 h-96 bg-primary/20 rounded-full blur-3xl animate-float"></div>
            <div class="absolute bottom-1/4 right-1/4 w-96 h-96 bg-purple-500/20 rounded-full blur-3xl animate-float" style="animation-delay: 2s;"></div>
        </div>
```

## Étape 2 : Remplacer par le nouveau code

Remplacez **UNIQUEMENT** la partie entre `<!-- Animated Background -->` et la `</div>` qui suit par le contenu du fichier `hero-background.html`.

Le résultat final devrait ressembler à ceci :

```html
    <!-- Hero Section -->
    <section id="hero" class="relative min-h-screen flex items-center justify-center overflow-hidden bg-gradient-to-br from-gray-900 via-gray-800 to-black">
        <!-- Animated Creative Background -->
        <div class="absolute inset-0 overflow-hidden">
            [... tout le contenu du fichier hero-background.html ...]
        </div>

        <div class="relative z-10 text-center px-6 max-w-5xl mx-auto">
            [... le reste du Hero ...]
```

## Effets ajoutés :

✨ **4 orbes flottants** avec différents délais d'animation
🎨 **Lignes diagonales animées** avec dégradés
⭕ **Cercles pulsants** qui changent de taille et d'opacité
🔷 **Polygones rotatifs** pour un effet géométrique
✨ **Étoiles décoratives** qui tournent
🌟 **Particules flottantes** (6 au total)
📐 **Grille subtile** en arrière-plan
🔗 **Lignes de connexion** style réseau neuronal

Tous les éléments sont animés pour un effet dynamique et créatif !
