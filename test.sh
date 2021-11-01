#echo bonjour
curl -X GET "https://reports.exodus-privacy.eu.org/api/trackers"
curl -X GET \
  "https://reports.exodus-privacy.eu.org/api/applications" \
  -H 'authorization: Token 1cd7bc8f013e3576e62406e6a02ab483140bedf2'

#si prb certificat ssl avec curl :
#Téléchargez cacert.pem à partir de https://curl.haxx.se/docs/caextract.html
#export CURL_CA_BUNDLE="/path/to/cacert.pem
