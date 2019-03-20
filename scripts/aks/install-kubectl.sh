apk add --update ca-certificates
apk add --update -t deps curl
az aks install-cli
for f in *.sh
do
	chmod +x $f
done