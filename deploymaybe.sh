if [ $TRAVIS_TAG ]; then
  echo $GOOGLE_API_KEY > app/keys.json
  echo "Assembling and publishing release"
  ./gradlew assembleRelease publishApkRelease
else
  echo "Assembling and testing Debug"
# no tests yet
#  ./gradlew assembleDebugUnitTest testDebug --tests="com.apchernykh.*"
fi