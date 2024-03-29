#!/bin/bash

# Run script with : bash install_scripts.sh

sudo add-apt-repository universe
sudo apt update -y
sudo apt install snap


echo "************************************************************************"
echo "If you want to install anything that this script does not automatically install, add \".deb\" file to \"Installers\" directory"
echo "[For the complete list of packages this script contains refer to readme]"
echo "If you plan on installing anaconda and JDownloader, make sure the setup files are downloaded in the \"Installers\" directory before continuing"
read response
echo "Installing ExFat, remote mounting protocols, auto-cpufreq (power management software) and Java support, Press Enter to continue"
read response
sudo apt install default-jdk -y
sudo add-apt-repository universe -y
sudo apt update
sudo apt install exfat-fuse exfat-utils nfs-common cifs-utils -y
sudo apt install snap -y
sudo snap install auto-cpufreq -y
sudo snap install synaptic -y

echo "Do you want to install anaconda? (make sure you have the installer in the 'installers' folder) [type y/n]"
read var
if [ $var == "y" ] 
then
    rm -r ~/anaconda3
    echo Anaconda Installation will start, press enter when ready
    read response
    chmod 777 ./Installers/Anaconda*
    ./Installers/Anaconda*
fi

echo "Do you want to install Jdownloader? [type y/n]"
read var
if [ $var == "y" ] 
then 
    echo JDownloader Installation will start, press enter when ready
    read response
    sh ./Installers/JD2*
fi


echo "Do you want to install all deb files (updated?) in installers directory? [type y/n]"
read deb_response
echo "Do you want to install VLC Media Player? [type y/n]"
read vlc_response
echo "Do you want to install Disk-Utility? [type y/n]"
read DskUlt_response
echo "Do you want to install GParted (Partition Manager)? [type y/n]"
read pm_response
echo "Do you want to install ClipIt (Clipboard Manager)? [type y/n]"
read clpt_response
echo "Do you want to install Slack? [type y/n]"
read slack_response
echo "Do you want to install DarkTable (Picture Editor)? [type y/n]"
read darktable_response
echo "Do you want to install RawTherapee (Picture Editor)? [type y/n]"
read rawtp_response
echo "Do you want to install Git? [type y/n]"
read git_response
echo "Do you want to install Brave (Browser)? [type y/n]"
read brave_response
echo "Do you want to install Rambox (Social media Tool)? [type y/n]"
read rambox_response
echo "Do you want to install Mailspring (Email client)? [type y/n]"
read mailspring_response
echo "Do you want to install Caffeine (keep computer awake)? [type y/n]"
read caffeine_response
echo "Do you want to install Code Editor (VSCode)? [type y/n]"
read vscode_response


if [ $deb_response == "y" ] 
then
	sudo apt install ./Installers/*.deb -y
fi
if [ $vlc_response == "y" ] 
then
	sudo apt install vlc -y
fi
if [ $DskUlt_response == "y" ] 
then
	sudo apt install gnome-disk-utility -y
fi
if [ $pm_response == "y" ] 
then
	sudo apt install gparted -y
fi
if [ $clpt_response == "y" ] 
then
	sudo apt install clipit -y
fi
if [ $slack_response == "y" ] 
then
	sudo apt install slack -y
fi
if [ $darktable_response == "y" ] 
then
	sudo apt install darktable -y
fi
if [ $rawtp_response == "y" ] 
then
	sudo apt install rawtherapee -y
fi
if [ $git_response == "y" ] 
then
	sudo apt install git -y
fi
if [ $caffeine_response == "y" ] 
then
	sudo apt install -y caffeine
fi
if [ $brave_response == "y" ] 
then
	sudo snap install -y brave
fi
if [ $rambox_response == "y" ] 
then
	sudo snap install -y rambox
fi
if [ $mailspring_response == "y" ] 
then
	sudo snap install -y mailspring
fi
if [ $vscode_response == "y" ] 
then
	sudo snap install --classic code
	#sudo apt install software-properties-common apt-transport-https wget -y
	#wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	#sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	#sudo apt update -y
	#sudo apt install code -y
fi

sudo apt install upgrade -y
sudo apt autoremove -y
sudo apt purge -y


#!/bin/bash

echo "################################################################################"
echo "## Congrats! Everything has been installed!                                   ##"
echo "## Complete package list [Check whether everything was installed correctly]:  ##"
echo "## Exfat, Java, Anaconda, MailSpring, Jdownloader, VLC, Disk-Utility          ##"
echo "## GParted, Clipit, Slack, DarkTable, RawTherapee, Git, VSCode                ##"
echo "##                         Courtsey of Sounak Banerjee                        ##"
echo "################################################################################"
read response
echo "Open a new terminal Window and run the following commands:"
echo "On Ubuntu:"
echo "sudo echo JAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64\" >> ~/.bashrc"
echo "On Other OS:"
echo "su"
echo "echo JAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64\" >> /etc/environment"
echo "exit"
echo "sudo echo \"source /etc/environment\" >> ~/.bashrc"
