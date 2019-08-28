#!/bin/bash
# Binary_storage stemcell 버전은 3468.51 버전으로 사용하십시요.
# vsphere 인 경우 에는 use-public-network-vsphere.yml 사용하여 public ip를 설정 하고 그 이외의 IaaS는 use-public-network.yml 사용한다.

bosh -d paasta-web-ide deploy paasta_web_ide.yml \
   -v releases_name="paas-ta-webide-release" \
   -v stemcell_os="ubuntu-xenial"\
   -v stemcell_version="315.36"\
   -v stemcell_alias="default"\
   -v web_ide_vm_type="large"\
   -v internal_networks_name=service_private \
   -v external_networks_name=public \
   -v paasta_webide_public_ip=["115.68.46.189"] \
   -v mariadb_disk_type=5G \
   -v server_port="8080"\
   -v serviceDefinition_id="af86588c-6212-11e7-907b-b6006ad3webide0"\
   -v serviceDefinition_plan1_id="a5930564-6212-11e7-907b-b6006ad3webide1"\
   -v mariadb_disk_type="10GB"\
   -v mariadb_port="3306"\
   -v mariadb_user_password="Paasta@2018"\

