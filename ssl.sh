CA_URL="https://raw.githubusercontent.com/bagder/ca-bundle/e9175fec/ca-bundle.crt"
CERT_FILE=/usr/local/etc/openssl/cert.pem

rm -f $CERT_FILE
curl $CA_URL > $CERT_FILE
c_rehash /usr/local/etc/openssl
