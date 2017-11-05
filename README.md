Bad words!
==========

Here are some handy scripts to make your mac swear.

#curl https://www.freewebheaders.com/wordpress/wp-content/uploads/main-bad-words-list-txt-file.zip | funzip | iconv -t UTF-8 > bad_words
#curl https://www.freewebheaders.com/wordpress/wp-content/uploads/full-list-of-bad-words-banned-by-google-txt-file.zip | funzip | iconv -t UTF-8 > full_bad_words

# crontab!
Useful for co-workers who need to remember to lock their screen when they're away!

    * * * * * head -$((${RANDOM} % `wc -l < /tmp/full_bad_words` + 1)) /tmp/full_bad_words | tail -1 | say

