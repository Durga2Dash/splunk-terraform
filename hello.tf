cat $SPLUNK_HOME/etc/splunk.version &> /dev/null
if [ $? -eq 0 ]; then
    echo "Package  is installed!"
else
    echo "Package  is NOT installed!"

fi
    sudo apt-get -y update
        sleep 10
        sudo wget https://download.splunk.com/products/splunk/releases/7.2.3/linux/splunk-7.2.3-06d57c595b80-Linux-x86_64.tgz
        sleep 10
        sudo tar xvzf splunk-7.2.3-06d57c595b80-Linux-x86_64.tgz -C /opt
        sleep 10

