if [ $TRAVIS_TAG ]; then
  echo $GOOGLE_API_KEY |base64 --decode > app/keys.json
  echo "Assembling and publishing release"
  ./gradlew --info assembleRelease publishApkRelease
else
  echo "Assembling and testing Debug"
# no tests yet
#  ./gradlew assembleDebugUnitTest testDebug --tests="com.apchernykh.*"
fi