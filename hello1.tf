echo "y" | sudo ufw enable
sudo ufw allow 8000
echo SPLUNK_HOME=\"/opt/splunk\" >> /etc/environment
source /etc/environment
cd /opt/splunk/bin
./splunk start  --accept-license --answer-yes --seed-passwd srinivas
