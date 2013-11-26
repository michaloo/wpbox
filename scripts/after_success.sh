if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo -e "Starting to upload release file\n"

  curl -H "Authorization: token ${GH_TOKEN}" \
     -H "Accept: application/vnd.github.manifold-preview" \
     -X POST \
     -d tag_name=${TRAVIS_BUILD_NUMBER} -d target_commitish=${TRAVIS_COMMIT} -d draft="true" \
     "https://api.github.com/repos/${TRAVIS_REPO_SLUG}/releases/${TRAVIS_BUILD_NUMBER}" > /dev/null

  curl -H "Authorization: token ${GH_TOKEN}" \
     -H "Accept: application/vnd.github.manifold-preview" \
     -H "Content-Type: application/zip" \
     --data-binary @wpbox.box \
     "https://uploads.github.com/repos/${TRAVIS_REPO_SLUG}/releases/${TRAVIS_BUILD_NUMBER}/assets?name=wpbox-${TRAVIS_BUILD_NUMBER}.zip" > /dev/null
fi