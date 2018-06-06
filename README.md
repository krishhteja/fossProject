# fossProject
Free and Open Source Software Project -  Developing of SDN-enabled management system for blockchain transaction channels with a quantum cryptography encoding.


1. Prerequisites

xinetd (http://manpages.ubuntu.com/manpages/bionic/man8/xinetd.8.html)
curl
dialog
Locale  te_IN.UTF-8 must be enabled, if not, following these steps to enable it

sudo nano /etc/locale.gen
# uncomment the locale you want to enable
# after change, regenerate
sudo locale-gen

2. Install

cd /perim_channelswitch
make

3. To run with localization: Telugu

LANG=te_IN.UTF-8 fossPrj_gui