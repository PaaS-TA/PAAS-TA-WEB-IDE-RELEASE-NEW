#!/bin/bash

bosh -d paasta-web-ide deploy paasta_web_ide.yml \
   -o use-public-network-[Your_IaaS].yml \
   -v releases_name="paas-ta-webide-release" \
   -v stemcell_os="ubuntu-xenial" \
   -v stemcell_version="315.36" \
   -v stemcell_alias="default" \
   -v web_ide_vm_type="large" \
   -v vm_type_tiny="minimal" \
   -v vm_type_small="small" \
   -v internal_networks_name=default \
   -v external_networks_name=vip \
   -v eclipse_che_instances=1 \
   -v eclipse_che_public_ip=["xxx.xxx.xxx.xxx"] \
   -v server_port="8080" \
   -v serviceDefinition_id="af86588c-6212-11e7-907b-b6006ad3webide0" \
   -v serviceDefinition_plan1_id="a5930564-6212-11e7-907b-b6006ad3webide1" \
   -v mariadb_disk_type="10GB" \
   -v mariadb_port="3306" \
   -v mariadb_user_password="Paasta@2018" \
