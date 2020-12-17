bosh create-release --sha2 --force --tarball ./paas-ta-webide-release-2.0.tgz --name paas-ta-webide-release --version 2.0


bosh upload-release ./paas-ta-webide-release-2.0.tgz
