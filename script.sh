bae3=$(curl -s 'https://api.discord.gx.games/v1/direct-fulfillment' \
    -H 'authority: api.discord.gx.games' \
    -H 'accept: */*' \
    -H 'accept-language: en-US,en;q=0.9' \
    -H 'content-type: application/json' \
    -H 'origin: https://www.opera.com' \
    -H 'referer: https://www.opera.com/' \
    -H 'sec-ch-ua: "Opera GX";v="105", "Chromium";v="119", "Not?A_Brand";v="24"' \
    -H 'sec-ch-ua-mobile: ?0' \
    -H 'sec-ch-ua-platform: "Windows"' \
    -H 'sec-fetch-dest: empty' \
    -H 'sec-fetch-mode: cors' \
    -H 'sec-fetch-site: cross-site' \
    -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0' \
    --data-raw '{"partnerUserId":"'$(openssl rand -hex 32 | sha256sum | cut -d ' ' -f1)'"}' \
    --compressed)

WORDTOREMOVE='{"token":"'
WORDTOREMOVE22='"}'

bea2=$(echo $bae3 | sed s/"$WORDTOREMOVE"//)
b2=$(echo $bea2 | sed s/"$WORDTOREMOVE22"//)

echo "https://discord.com/billing/partner-promotions/1180231712274387115/"$b2
