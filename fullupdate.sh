echo "
  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    ░░░░▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒░░▒▒▒▒▒▒░░▒▒▒▒▒▒░░░░░░
  ░░░░░░▒▒░░▒▒░░▒▒░░▒▒░░▒▒░░▒▒░░░░░░▒▒░░░░░░░░
    ░░░░▒▒░░▒▒░░▒▒░░▒▒▒▒▒▒░░▒▒░░░░░░▒▒▒▒▒▒░░░░░░
  ░░░░░░▒▒░░▒▒░░▒▒░░▒▒▒▒░░░░▒▒░░░░░░░░░░▒▒░░░░
    ░░░░▒▒░░▒▒░░▒▒░░▒▒░░▒▒░░▒▒▒▒▒▒░░▒▒▒▒▒▒░░░░░░
  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    ░░▒▒▒▒▒▒▒▒▒▒░░▒▒░░▒▒░░▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒░░░░
  ░░░░▒▒░░▒▒░░▒▒░░░▒▒▒▒░░░▒▒░░▒▒░░▒▒░░▒▒░░░░░░
    ░░▒▒░░▒▒░░▒▒░░░░▒▒░░░░▒▒░░▒▒░░▒▒░░▒▒▒▒▒▒░░░░
  ░░░░▒▒░░▒▒░░▒▒░░░▒▒▒▒░░░▒▒░░▒▒░░▒▒░░░░░░▒▒░░
    ░░▒▒░░▒▒░░▒▒░░▒▒░░▒▒░░▒▒░░▒▒░░▒▒░░▒▒▒▒▒▒░░░░
  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
                        // github.com/mrcsmxms
"
echo "Update wird eingeleitet"
sudo dpkg --configure -a
sudo apt-get -f install -y

echo "die Abhaengigkeiten wurden geprueft und berichtigt."
echo "es wird nach Updates gesucht"
sudo apt-get update

echo "nicht mehr gebrauchte Pakete werden entfernt"
sudo apt-get autoremove -y

echo "Updates werden installiert"
sudo apt-get upgrade -y

echo "Update abgeschlossen !!" 

echo "Kerel-Updates werden heruntergeladen"
sudo rpi-update
echo "Kernel-Updates wurden heruntergeladen und installiert"
