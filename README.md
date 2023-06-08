# build-scrip-firebase-flavor
echo "Current Config =======> ${CONFIGURATION}"


# Name and path of the resource we're copying
GOOGLESERVICE_INFO_PLIST=GoogleService-Info.plist
GOOGLESERVICE_INFO_FILE_DEV=${PROJECT_DIR}/Flavors/dev/${GOOGLESERVICE_INFO_PLIST}
GOOGLESERVICE_INFO_FILE_UAT=${PROJECT_DIR}/Flavors/uat/${GOOGLESERVICE_INFO_PLIST}
GOOGLESERVICE_INFO_FILE_STG=${PROJECT_DIR}/Flavors/stg/${GOOGLESERVICE_INFO_PLIST}
GOOGLESERVICE_INFO_FILE_PROD=${PROJECT_DIR}/Flavors/prod/${GOOGLESERVICE_INFO_PLIST}

echo "Looking for ${GOOGLESERVICE_INFO_PLIST} in ${GOOGLESERVICE_INFO_FILE}"
if [ ! -f $GOOGLESERVICE_INFO_FILE_DEV ] || [ ! -f $GOOGLESERVICE_INFO_FILE_PROD ]
then
echo "No GoogleService-Info.plist found. Please ensure it's in the proper directory."
exit 1
fi
PLIST_DESTINATION=${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app

if [ "${CONFIGURATION}" == "Debug" ] || [ "${CONFIGURATION}" == "DevDebug" ] || [ "${CONFIGURATION}" == "DevRelease"  ]
then
echo "DEV: Will copy ${GOOGLESERVICE_INFO_PLIST} to final destination: ${PLIST_DESTINATION}"
# Copy DEV
cp "${GOOGLESERVICE_INFO_FILE_DEV}" "${PLIST_DESTINATION}"

elif [ "${CONFIGURATION}" == "UatDebug" ] || [ "${CONFIGURATION}" == "UatRelease" ]
then
echo "UAT: Will copy ${GOOGLESERVICE_INFO_PLIST} to final destination: ${PLIST_DESTINATION}"
# Copy UAT
cp "${GOOGLESERVICE_INFO_FILE_UAT}" "${PLIST_DESTINATION}"

elif [ "${CONFIGURATION}" == "StgDebug" ] || [ "${CONFIGURATION}" == "StgRelease" ]
then
echo "UAT: Will copy ${GOOGLESERVICE_INFO_PLIST} to final destination: ${PLIST_DESTINATION}"
# Copy STG
cp "${GOOGLESERVICE_INFO_FILE_STG}" "${PLIST_DESTINATION}"

elif [ "${CONFIGURATION}" == "ProdDebug" ] || [ "${CONFIGURATION}" == "ProdRelease" ]
then
echo "PROD: Will copy ${GOOGLESERVICE_INFO_PLIST} to final destination: ${PLIST_DESTINATION}"
# Copy PROD
cp "${GOOGLESERVICE_INFO_FILE_PROD}" "${PLIST_DESTINATION}"
fi



