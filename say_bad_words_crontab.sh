export SWEAR_FILE=/tmp/full_bad_words

if [ ! -e $SWEAR_FILE ]; then
    VULGAR_FILE=https://www.freewebheaders.com/wordpress/wp-content/uploads/full-list-of-bad-words-banned-by-google-txt-file.zip
    curl $VULGAR_FILE | funzip | iconv -t UTF-8 > $SWEAR_FILE
fi

crontab <(echo '    * * * * * head -$((${RANDOM} % `wc -l < '$SWEAR_FILE'` + 1)) '$SWEAR_FILE' | tail -1 | say')

