echo "Updating and pulling development packages..."
sudo apt update
sudo apt -y upgrade
sudo apt -y install git golang build-essential python3-pip python3-virtualenv python3-venv code curl wl-clipboard

echo "Getting Node.js and installing latest lts version..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

source $HOME/.bashrc

nvm install --lts

nvm use --lts

echo "Creating Projects Directory..."
mkdir -p $HOME/Projects 2>/dev/null
