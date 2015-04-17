CERT_FILE=/usr/local/etc/openssl/cert.pem
rm -f $CERT_FILE

security find-certificate -a -p /Library/Keychains/System.keychain >> $CERT_FILE
security find-certificate -a -p /System/Library/Keychains/SystemRootCertificates.keychain \
  >> $CERT_FILE

CA_URL="https://raw.githubusercontent.com/bagder/ca-bundle/master/ca-bundle.crt"
curl $CA_URL >> $CERT_FILE

c_rehash /usr/local/etc/openssl

