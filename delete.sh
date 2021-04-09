bosh delete-deployment -d web-ide -n

rm -rf dev_releases/

bosh delete-release paas-ta-webide-release -n
