wget --output-document=paper.jar https://papermc.io/api/v1/paper/1.16.4/latest/download
sudo mv paper.jar /opt/minecraft/survival
sudo systemctl restart minecraft@survival
