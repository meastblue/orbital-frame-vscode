#!/bin/bash

echo "🌌 Installation d'Orbital Frame VS Code Themes"
echo "   Collection complète des thèmes Orbital Frame"

# Vérifier si VS Code est installé
if ! command -v code &> /dev/null; then
    echo "❌ VS Code n'est pas installé ou pas dans le PATH"
    echo "   Veuillez installer VS Code d'abord"
    exit 1
fi

# Définir les chemins
VSCODE_EXTENSIONS="$HOME/.vscode/extensions"
TARGET_DIR="$VSCODE_EXTENSIONS/orbital-frame-themes-1.0.0"

echo "📁 Installation dans $TARGET_DIR..."

# Créer le dossier de destination
mkdir -p "$TARGET_DIR"

# Copier tous les fichiers nécessaires
echo "📋 Copie des fichiers du thème..."
cp package.json "$TARGET_DIR/"
cp -r themes/ "$TARGET_DIR/"
cp -r src/ "$TARGET_DIR/" 2>/dev/null || echo "   Note: src/ non copié (normal si pas de compilation)"
cp -r media/ "$TARGET_DIR/" 2>/dev/null || echo "   Note: media/ non copié (normal si pas présent)"
cp -r out/ "$TARGET_DIR/" 2>/dev/null || echo "   Note: Extension non compilée, fonctionnalité WebView indisponible"
cp README.md "$TARGET_DIR/" 2>/dev/null || true
cp CHANGELOG.md "$TARGET_DIR/" 2>/dev/null || true
cp LICENSE "$TARGET_DIR/" 2>/dev/null || true
cp tsconfig.json "$TARGET_DIR/" 2>/dev/null || true

echo "✅ Installation terminée !"
echo ""
echo "🎨 Themes Orbital Frame installés :"
echo "   • Jehuty Dark   - Bleu spatial électrique" 
echo "   • Jehuty Light  - Blanc pur avec accents bleus"
echo "   • Anubis Dark   - Noir du vide avec rouge/orange"
echo "   • Anubis Light  - Blanc avec accents rouge/orange"
echo "   • Nephtis Dark  - Violet mystique avec or divin"
echo "   • Nephtis Light - Ivoire avec violet et or"
echo ""
echo "🚀 Pour activer un thème :"
echo "   1. Redémarrez VS Code"
echo "   2. Cmd/Ctrl + K puis Cmd/Ctrl + T"  
echo "   3. Choisissez votre Orbital Frame préféré"
echo ""
echo "🌌 Choose your frame, pilot your code!"