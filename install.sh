INSTALL_DIR="$HOME/install/dir"
REMOTE="https://github.com/mvezer/ai-assistant.git"

if [ -z $(command -v git) ]; then
  echo "You need to have 'git' installed in order to install the ai-assistant"
  exit 1
fi

echo "Installing ai-assistant..."
mkdir -p $INSTALL_DIR
git clone -n $REMOTE --depth 1 $INSTALL_DIR &> /dev/null
cd $INSTALL_DIR
git checkout HEAD ai-assistant &> /dev/null
echo "Install done"
echo ""
echo "Further steps:"
echo ""
echo "1. Add the install dir to your path."
echo "   add the following line to your .bashrc / .zshrc:"
echo ""
echo "    export PATH=\$PATH:$INSTALL_DIR"
echo ""
echo "2. Register and create an OpenAI beta API key here: https://beta.openai.com/"
echo ""
echo "3. Add the following line to your .bashrc / .zshrc:"
echo "    export OPENAI_API_KEY=\"your-very-secret-api-key\""
echo ""
echo "4. Install jq if you don't have it yet (https://stedolan.github.io/jq/)"
echo "    on Ubuntu and Ubuntu based distros: sudo apt update && suo apt install jq"
echo "    on arch and arch-based distros: sudo pacman -S jq"
echo "    on Mac (using homebrew): brew install jq"
echo "    on Mac (using macports): sudo port install jq"
echo ""
echo "5. use the ai-assistant by simply typing ai-assistant"
