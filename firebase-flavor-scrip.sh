echo "Current Config =======> ${CONFIGURATION}"

if [ "${CONFIGURATION}" == "Debug" ] || [ "${CONFIGURATION}" == "Release" ] || [ "${CONFIGURATION}" == "Debug-dev" ] || [ "${CONFIGURATION}" == "Release-dev"  ]; then

cp -r "${PROJECT_DIR}/dev/GoogleService-Info.plist" "${PROJECT_DIR}/Runner/GoogleService-Info.plist"

echo "Development plist copied"

elif [ "${CONFIGURATION}" == "Debug-sit" ] || [ "${CONFIGURATION}" == "Release-sit" ]; then

cp -r "${PROJECT_DIR}/sit/GoogleService-Info.plist" "${PROJECT_DIR}/Runner/GoogleService-Info.plist"

echo "SIT plist copied"

elif [ "${CONFIGURATION}" == "Debug-uat" ] || [ "${CONFIGURATION}" == "Release-uat" ]; then

cp -r "${PROJECT_DIR}/uat/GoogleService-Info.plist" "${PROJECT_DIR}/Runner/GoogleService-Info.plist"

echo "UAT plist copied"

elif [ "${CONFIGURATION}" == "Debug-prod" ] || [ "${CONFIGURATION}" == "Release-prod" ]; then

cp -r "${PROJECT_DIR}/prod/GoogleService-Info.plist" "${PROJECT_DIR}/Runner/GoogleService-Info.plist"

echo "Production plist copied"

fi