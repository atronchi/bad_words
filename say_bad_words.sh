#!/bin/bash
SWEAR_FILE=/tmp/bad_words

if [ ! -e $SWEAR_FILE ]; then
    VULGAR_FILE=https://www.freewebheaders.com/wordpress/wp-content/uploads/main-bad-words-list-txt-file.zip
    curl $VULGAR_FILE | funzip | iconv -t UTF-8 > $SWEAR_FILE
fi

cat $SWEAR_FILE | say

