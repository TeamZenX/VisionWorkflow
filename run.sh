branch=master
git clone -b $branch https://github.com/TeamZenX/Vision /root/TeamZenX
cp vision/.env /root/TeamZenX/.env
cd /root/TeamZenX
docker build . --rm --force-rm --compress --pull --file Dockerfile -t vision
docker run --privileged --env-file .env --rm -i vision
