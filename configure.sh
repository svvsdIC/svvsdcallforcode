args=($@)
j=0
while [[ "${args[$j]}" != "" ]]
	do
		case "${args[$j]}" in
			 --run-app ) run=true
					;;
		esac
		((j++))
	done

echo -ne "IBM PI API Key: "
read piapikey
cat << EOF > .env
PERSONALITY_INSIGHTS_URL=https://gateway.watsonplatform.net/personality-insights/api
PERSONALITY_INSIGHTS_IAM_APIKEY=$piapikey

TWITTER_CONSUMER_KEY=<twitter-consumer-key>
TWITTER_CONSUMER_SECRET=<twitter-consumer-secret>
EOF

if [[ "$run" == "true" ]]
then
	exec ./run.sh $@
fi

