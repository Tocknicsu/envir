cd /tmp/ && wget http://downloads.sourceforge.net/project/denyhost/denyhost-2.10/denyhosts-2.10.tar.gz
tar xzf denyhosts*.tar.gz
cd DenyHosts*
sudo python setup.py install
sudo cp /usr/local/bin/daemon-control-dist /etc/init.d/denyhosts
sudo vim /etc/init.d/denyhosts
#DENYHOSTS_BIN = “/usr/local/bin/denyhosts.py”
sudo vi /etc/hosts.allow
