# PAAS-TA-WEB-IDE-RELEASE-NEW

본 릴리즈는 파스타 4.6을 지원하기위하여, 새롭게 구성된 PAAS-TA-WEB-IDE-RELEASE이다.
Stemcell ubuntu-xenial 버전 315.36에 최적화 되어 있다.
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
│     └── pweb-ide-broker.jar <br>
└── README.md <br>


***paasta 4.6 공개시 사용 가능***

```
$ cd ~/
$ git clone https://github.com/PaaS-TA/PAAS-TA-WEB-IDE-RELEASE.git
$ cd ~/PAAS-TA-PORTAL-RELEASE
$ wget -O src.zip http://45.248.73.44/index.php/s/DoQgkoeZRQDX9sY/download
$ unzip src.zip
```
