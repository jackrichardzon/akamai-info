#!/bin/bash
#Simple script bash to expose data headers Akamai
#Akamai Info Headers -- RHack @Queseguridad

echo -e "             
 k m i H    rs In o
x X X   XXXX     X 
x X X   XXXX     X 
. . .   X.XX     X 
. . .   X.XX     X 
. . .   X.XX     . 
. . .   ..X.     . 
                   
| Akamai Headers Info | "
echo
echo
domain=$1
echo -n "Enter domain: "
read domain
echo
echo "###### Akamai Info Headers ######"
echo
curl -H "Pragma: akamai-x-cache-on, akamai-x-cache-remote-on, akamai-x-check-cacheable, akamai-x-get-cache-key, akamai-x-get-extracted-values, akamai-x-get-nonces, akamai-x-get-ssl-client-session-id, akamai-x-get-true-cache-key, akamai-x-serial-no, akama-xi-get-extracted-values, akamai-x--meta-trace, akamai-x-request-trace, akamai-x-get-request-id" -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3001.0 Safari/537.36' -H 'Referer: https://www.google.com/' -IXGET $domain
echo
echo
