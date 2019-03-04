STORAGE_RESOURCE_GROUP_NAME=$1
SUBSCRIPTION_ID=$2
INGRESS_BLOB_URI=$1
INGRESS_FILE_SHARE_NAME=$2
EGRESS_BLOB_URI=$1
EGRESS_FILE_SHARE_NAME=$2


palo_alto_storage_account_name="$(az.cmd storage account list -g "${STORAGE_RESOURCE_GROUP_NAME}" --subscription ${SUBSCRIPTION_ID} --query [].name --output tsv)"
echo $palo_alto_storage_account_name

access_key="$()"

az storage file upload --share-name $INGRESS_FILE_SHARE_NAME --source ingress.xml
az storage file upload --share-name $EGRESS_FILE_SHARE_NAME --source egress.xml

