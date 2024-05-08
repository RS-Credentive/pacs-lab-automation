for cert in *.crt
do 
    subject=`openssl x509 -subject -noout -in $cert | sed "s/[ \"]//g" | sed "s/.*CN=//g" |  sed "s/.*serialNumber=//g"`
    issuer=`openssl x509 -issuer -noout -in $cert | sed "s/[ \"]//g" | sed "s/.*CN=//g" |  sed "s/.*serialNumber=//g"`
    echo $issuer \-\-\> $subject
done