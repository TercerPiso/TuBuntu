echo -ne "
-------------------------------------------------------------------------
 _____                           ___ _           
/__   \___ _ __ ___ ___ _ __    / _ (_)___  ___  
  / /\/ _ \ '__/ __/ _ \ '__|  / /_)/ / __|/ _ \ 
 / / |  __/ | | (_|  __/ |    / ___/| \__ \ (_) |
 \/   \___|_|  \___\___|_|    \/    |_|___/\___/   
-------------------------------------------------------------------------
                    Automated Xubuntu Installer
                       Core dependencies
-------------------------------------------------------------------------
"
sudo apt update
sudo apt upgrade
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt -y install brave-browser
sudo apt update
sudo apt install brave-browser -y
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update
sudo apt -y install qbittorrent
sudo apt -y install udisks2
wget 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip'
unzip DroidSansMono.zip -d ~/.fonts
fc-cache -fv
sudo apt -y install git
sudo apt -y install curl
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc
nvm install --lts
sudo apt-get install zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
chsh -s /usr/bin/zsh
sudo apt -y install gdebi-core
wget -O ./discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ./discord.deb
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt -y install python3.8 python-is-python3
# https://slack.com/intl/es-ar/downloads/instructions/ubuntu
wget 'https://downloads.slack-edge.com/releases/linux/4.29.149/prod/x64/slack-desktop-4.29.149-amd64.deb'
sudo gdebi ./slack-desktop-*.deb
sudo apt install v4l2loopback-dkms
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt -y install obs-studio
wget 'https://downloads.mongodb.com/compass/mongodb-compass_1.34.1_amd64.deb'
sudo gdebi mongodb-compass_1.34.1_amd64.deb
wget -O ./postman.tar.gz 'https://dl.pstmn.io/download/latest/linux64'
sudo mkdir /opt/postman
sudo chmod 777 /opt/postman
tar -xvf postman.tar.gz -C /opt/postman
cp Postman.desktop ~/.local/share/applications/Postman.desktop
sudo apt -y install libc6 libncurses5 libstdc++6 lib32z1 libbz2-1.0
brave-browser https://developer.android.com/studio/
echo /////////// DOWNLOAD ANDROID STUDIO BEFORE CONTINUE //////////////
read -n1 -s -r -p $'Press enter to continue...\n' key
sudo mkdir /opt/android-studio
sudo chmod 777 /opt/android-studio
tar -xvf ./android-studio-*.tar.gz -C /opt/android-studio
cp android.desktop ~/.local/share/applications/Android.desktop
wget -O ./code.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo gdebi code.deb
sudo apt -y install htop gparted gimp vlc mc neofetch gcc default-jre unrar
wget -O ./intellij.tar.gz 'https://download.jetbrains.com/idea/ideaIC-2022.3.tar.gz'
sudo mkdir /opt/intellij
sudo chmod 777 /opt/intellij
tar -xvf ./intellij.tar.gz -C /opt/intellij
cp Intellij.desktop ~/.local/share/applications/Intellij.desktop
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt -y install docker-ce docker-compose
sudo usermod -aG docker ${USER}
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -
sudo apt update
sudo apt -y install unityhub
echo -ne "
-------------------------------------------------------------------------
 _____                           ___ _           
/__   \___ _ __ ___ ___ _ __    / _ (_)___  ___  
  / /\/ _ \ '__/ __/ _ \ '__|  / /_)/ / __|/ _ \ 
 / / |  __/ | | (_|  __/ |    / ___/| \__ \ (_) |
 \/   \___|_|  \___\___|_|    \/    |_|___/\___/   
-------------------------------------------------------------------------
                    Automated Xubuntu Installer
                       Post install setting
-------------------------------------------------------------------------
"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml
cp ./configs/xconf/xfce4-keyboard-shortcuts.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
cp ./configs/xconf/xfce4-panel.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
cp ./configs/xconf/keyboard-layout.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/keyboard-layout.xml
cp ./configs/xconf/xfce4-power-manager.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
cp ./configs/xconf/xfwm4.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
cp ./configs/xconf/xsettings.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
mkdir -p $HOME/.config/xfce4/terminal
cp ./configs/terminalrc.txt $HOME/.config/xfce4/terminal/terminalrc
sudo apt -y install gtk2-engines-murrine gtk2-engines-pixbuf sassc
cd Qogir
./install.sh --tweaks round
cd ../Qogir-icon
./install.sh
cd ..
cp -R fonts $HOME/.local/share
sudo localectl set-locale LANG=es_ES.UTF-8
sudo systemctl enable docker
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt -y install ulauncher
cp configs/.zshrc ~/.zshrc
sudo mkdir "/usr/share/zsh-sudo/"
chsh -s $(which zsh)
sudo cp ./configs/sudo.plugin.zsh /usr/share/zsh-sudo/sudo.plugin.zsh
sudo cp ./configs/wallpaper.png /usr/share/backgrounds/xfce/wallpaper.png
sudo cp ./configs/vconsole.conf /etc/vconsole.conf