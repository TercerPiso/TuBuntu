echo -ne "
---------------------------------------------------------
     _____                           ___ _           
    /__   \___ _ __ ___ ___ _ __    / _ (_)___  ___  
      / /\/ _ \ '__/ __/ _ \ '__|  / /_)/ / __|/ _ \ 
     / / |  __/ | | (_|  __/ |    / ___/| \__ \ (_) |
     \/   \___|_|  \___\___|_|    \/    |_|___/\___/   
---------------------------------------------------------
                    Automated Ubuntu Installer
                         Tercer Piso LLC.
---------------------------------------------------------
"
sudo apt update
sudo apt upgrade
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'
sudo add-apt-repository -y ppa:obsproject/obs-studio
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -
sudo add-apt-repository -y ppa:agornostal/ulauncher
sudo apt update
sudo apt -y install curl apt-transport-https ca-certificates curl software-properties-common gdebi-core udisks2 zsh software-properties-common python3.8 python-is-python3 docker-ce docker-compose unityhub v4l2loopback-dkms obs-studio libc6 libncurses5 libstdc++6 lib32z1 libbz2-1.0 htop gparted gimp vlc mc neofetch gcc default-jre unrar gtk2-engines-murrine gtk2-engines-pixbuf sassc filezilla ulauncher
sudo usermod -aG docker ${USER}
wget 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
sudo -n gdebi ./google-chrome-stable_current_amd64.deb
wget 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip'
unzip DroidSansMono.zip -d ~/.fonts
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc
nvm install --lts
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
chsh -s /usr/bin/zsh
wget -O ./discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi -n ./discord.deb
wget -O ./mongodb-compass.deb https://downloads.mongodb.com/compass/mongodb-compass_1.40.4_amd64.deb
sudo gdebi -n mongodb-compass.deb
wget -O ./postman.tar.gz 'https://dl.pstmn.io/download/latest/linux64'
sudo mkdir /opt/postman
sudo chmod 777 /opt/postman
tar -xvf postman.tar.gz -C /opt/postman
mkdir ~/.local/share/applications
cp Postman.desktop ~/.local/share/applications/Postman.desktop
echo /////////// DOWNLOAD ANDROID STUDIO BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD ANDROID STUDIO BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD ANDROID STUDIO BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD ANDROID STUDIO BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD ANDROID STUDIO BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD ANDROID STUDIO BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD ANDROID STUDIO BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD ANDROID STUDIO BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD ANDROID STUDIO BEFORE CONTINUE //////////////
echo Descarga el zip y cerra el navegador cuando termine de descargar
google-chrome https://developer.android.com/studio/
read -n1 -s -r -p $'Presiona enter si bajaste el zip...\n' key
sudo mkdir /opt/android-studio
sudo chmod 777 /opt/android-studio
tar -xvf ~/Descargas/android-studio-*.tar.gz -C /opt/android-studio
tar -xvf ~/Downloads/android-studio-*.tar.gz -C /opt/android-studio
tar -xvf ./android-studio-*.tar.gz -C /opt/android-studio
cp android.desktop ~/.local/share/applications/Android.desktop
wget -O ./code.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo gdebi -n code.deb
echo /////////// DOWNLOAD INTELLIJ IDEA BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD INTELLIJ IDEA BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD INTELLIJ IDEA BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD INTELLIJ IDEA BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD INTELLIJ IDEA BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD INTELLIJ IDEA BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD INTELLIJ IDEA BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD INTELLIJ IDEA BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD INTELLIJ IDEA BEFORE CONTINUE //////////////
echo /////////// DOWNLOAD INTELLIJ IDEA BEFORE CONTINUE //////////////
echo Descarga el zip y cerra el navegador cuando termine de descargar
google-chrome https://www.jetbrains.com/idea/download/?section=linux
read -n1 -s -r -p $'Presiona enter si bajaste el zip...\n' key
sudo mkdir /opt/intellij
sudo chmod 777 /opt/intellij
tar -xvf ~/Descargas/ideaIC-*.tar.gz -C /opt/intellij
tar -xvf ~/Downloads/ideaIC-*.tar.gz -C /opt/intellij
tar -xvf ./ideaIC-*.tar.gz -C /opt/intellij
mv /opt/intellij/idea-IC-* /opt/intellij/idea-IC
cp Intellij.desktop ~/.local/share/applications/Intellij.desktop
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo gdebi -n dbeaver-ce_latest_amd64.deb
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp -R fonts $HOME/.local/share
sudo localectl set-locale LANG=es_ES.UTF-8
sudo systemctl enable docker
sudo mkdir "/usr/share/zsh-sudo/"
chsh -s $(which zsh)
sudo cp ./configs/sudo.plugin.zsh /usr/share/zsh-sudo/sudo.plugin.zsh
sudo cp ./configs/vconsole.conf /etc/vconsole.conf
cp configs/.zshrc ~/.zshrc
sudo mkdir /opt/wallpapers
sudo cp -R ./wallpapers/* /opt/wallpapers
gsettings set org.gnome.desktop.background picture-uri-dark file:///opt/wallpapers/new/18.png
echo -ne "
---------------------------------------------------------
     _____                           ___ _           
    /__   \___ _ __ ___ ___ _ __    / _ (_)___  ___  
      / /\/ _ \ '__/ __/ _ \ '__|  / /_)/ / __|/ _ \ 
     / / |  __/ | | (_|  __/ |    / ___/| \__ \ (_) |
     \/   \___|_|  \___\___|_|    \/    |_|___/\___/   
---------------------------------------------------------
                    Automated Ubuntu Installer
                         Tercer Piso LLC.
---------------------------------------------------------
"
echo Presione enter para reiniciar la pc y luego ejecute el comando a mano: p10k configure
read
sudo reboot
