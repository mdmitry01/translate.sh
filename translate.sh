#!/usr/bin/env bash

# Read the target language from the first command line argument.
# If it's not set, we default to English
target_language="${1:-en}"

translated_text=$(
  curl \
    --compressed \
    --get \
    --data-urlencode 'client=gtx' \
    --data-urlencode 'sl=auto' \
    --data-urlencode 'dt=t' \
    --data-urlencode "tl=${target_language}" \
    --data-urlencode "q=$(xsel -o)" \
    -H 'user-agent: Opera/9.80 (J2ME/MIDP; Opera Mini/4.5.33867/35.2883; U; en) Presto/2.8.119 Version/11.10' \
    'https://translate.googleapis.com/translate_a/single' |
  jq -j '.[][][0]' 2>/dev/null
)

# Show a desktop notification with the translated text.
# We use `int:transient:1` to not store the notification in the notification center,
# see https://askubuntu.com/a/1185741
notify-send \
  -h int:transient:1 \
  -i accessories-dictionary \
  'Google Translate' "$translated_text"