#!/bin/bash
cd /shun/snap2html/DiogenesList-master/
python /shun/snap2html/DiogenesList-master/diogeneslist.py /shun/GD index
sed -i "s#\[LINK ROOT\]#https://ak.bk201.cf#g"  /shun/snap2html/DiogenesList-master/index.html
sed -i "s#\[LINK PROTOCOL\]##g"  /shun/snap2html/DiogenesList-master/index.html
sed -i "s#\[SOURCE ROOT\]##g"  /shun/snap2html/DiogenesList-master/index.html
sed -i "s#\\\\\\\root\\\\\\\rclone\\\\\\\00##g"  /shun/snap2html/DiogenesList-master/index.html
sed -i "s#1>index#1>呵哒!劳资转身就是一脚!#g" /shun/snap2html/DiogenesList-master/index.html
sed -i "s#e>index#e>小圈子影视分享#g" /shun/snap2html/DiogenesList-master/index.html
cp /shun/snap2html/DiogenesList-master/index.html /shun/snapGit/
cd /shun/snapGit
git add .
git commit -m 'snap2htmlDailyUpdate'
git push  https://github.com/sorrymyself/snap.git
