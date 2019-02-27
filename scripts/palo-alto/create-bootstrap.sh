INGRESS_BLOB_URI=$1
INGRESS_FILE_SHARE_NAME=$2
EGRESS_BLOB_URI=$1
EGRESS_FILE_SHARE_NAME=$2

wget -O igress.xml $INGRESS_BLOB_URI
wget -O egress.xml $EGRESS_BLOB_URI

az storage file upload --share-name $INGRESS_FILE_SHARE_NAME --source ingress.xml
az storage file upload --share-name $EGRESS_FILE_SHARE_NAME --source egress.xml

