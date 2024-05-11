if [[ -z ${MAIDENLESS} ]]; then
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
sudo apt -y install font-manager wl-clipboard xclip gettext cmake gcc g++ gdb ripgrep fd-find
echo "I use vim by the way..."
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release
sudo make install
cd ..
git clone https://github.com/LazyVim/starter $HOME/.config/nvim
rm -rf $HOME/.config/nvim/.git
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraMono.zip
unzip FriaMono.zip
font-manager -i ./*.otf
rm ./FiraMono.zip
rm ./*.otf
rm ./LICENSE
rm ./README.md
echo "Setup your terminal to use FiraMono and run nvim to setup and you are all set."
rm -rf neovim
fi
else
echo "You use Arch Linux. Figure it out yourself."
fi