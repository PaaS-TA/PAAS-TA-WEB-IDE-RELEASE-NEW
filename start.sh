bosh create-release --sha2 --force --tarball ./paas-ta-webide-release-1.0.tgz --name paas-ta-webide-release --version 1.0


bosh upload-release ./paas-ta-webide-release-1.0.tgz
