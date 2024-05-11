echo "Updating and pulling development packages..."
sudo apt update
sudo apt -y upgrade
sudo apt -y install git golang build-essential python3-pip python3-virtualenv python3-venv code curl wget 

echo "Getting Node.js and installing latest lts version..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

source $HOME/.bashrc

nvm install --lts

nvm use --lts

echo "Creating Projects Directory..."
mkdir -p $HOME/Projects 2>/dev/null

if [[ -z "${NONSOYDEV}" ]]; then

echo "Done!!!"

else

echo "No Soy Dev Here!!!"
echo "Ensuring needed developer tools installed..."
sudo apt -y install wl-clipboard gettext cmake gcc g++ gdb ripgrep fd-find
echo "I use vim by the way..."
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ..
git clone https://github.com/LazyVim/starter $HOME/.config/nvim
rm -rf $HOME/.config/nvim/.git
echo "Run nvim to setup and you are all set."
rm -rf neovim
fi