bosh delete-deployment -d paasta-web-ide

rm -rf dev_releases/

bosh delete-release paas-ta-webide-release
