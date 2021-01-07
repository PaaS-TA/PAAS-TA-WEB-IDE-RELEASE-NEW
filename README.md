# PAAS-TA-WEB-IDE-RELEASE-NEW

본 릴리즈는 OnDemand를 지원하는 새롭게 구성된 PAAS-TA-WEB-IDE-RELEASE이다.
Stemcell ubuntu-trusty 는 지원하지 않는다.
src
---

src 폴더에 각 package의 설치파일이 위치해야 한다.

src <br>
├── docker <br>
│     └── docker.tar.gz <br>
├── eclipse-che <br>
│     └── eclipse-che.tar.gz <br>
├── mariadb <br>
│     └── mariadb-10.1.22-linux-x86_64.tar.gz <br>
├── java <br>
│     └── jre-8u77-linux-x64.tar.gz <br>
├── web-ide-broker <br>
│     └── web-ide-broker.jar <br>
└── README.md <br>


***BOSH 특정버전 이상에서 지원 안됨 ***

```
$ cd ~/
$ git clone https://github.com/PaaS-TA/PAAS-TA-WEB-IDE-RELEASE-NEW.git
$ cd ~/PAAS-TA-PORTAL-RELEASE-NEW
$ wget -O src.zip http://45.248.73.44/index.php/s/Mty2YMwtde4YwKN/download
$ unzip src.zip
```
