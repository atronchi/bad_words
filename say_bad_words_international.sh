#!/bin/bash
export SWEAR_FILE=/tmp/bad_words

if [ ! -e $SWEAR_FILE ]; then
    VULGAR_FILE=https://www.freewebheaders.com/wordpress/wp-content/uploads/main-bad-words-list-txt-file.zip
    curl $VULGAR_FILE | funzip | iconv -t UTF-8 > $SWEAR_FILE
fi

for voice in $(ls -1 /System/Library/Speech/Voices/ | sed -e s/.SpeechVoice// -e s/Compact//); do
    head -$((${RANDOM} % `wc -l < $SWEAR_FILE` + 1)) $SWEAR_FILE | tail -1 | say -v $voice
done

