#!/bin/bash

# 設定ファイルに
# token=xxxx/xxx/xxxxxx
# という風に書いて使う
. ./secret.conf

# Slackで表示させるアイコン
icon_emoji=musical_note

function postToSlack() {
  hogehoge="{\"channel\": \"#times_nyango\", \"username\": \"iTunesで聞いてるやつ\", \"text\": \"$1\", \"icon_emoji\": \":$icon_emoji:\"}"
  curl -X POST --data-urlencode "payload=$hogehoge" https://hooks.slack.com/services/$token
}

while true;
do
newMessage=$(osascript getTrack.script)
if [ $? -eq 0 ]; then
	if [ "$message" != "$newMessage" ]; then
		echo "$newMessage"
		postToSlack "$newMessage"
		message=$newMessage
	fi
fi
sleep 1
done
