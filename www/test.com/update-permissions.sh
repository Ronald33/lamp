#!/bin/bash
[[ -z "${1}" ]] && USER='root' || USER=${1}
chown -R $USER public_html
chgrp -R www-data public_html
find . -type d -exec chmod 775 {} \;
find . -type f -exec chmod 664 {} \;
chmod -R g+s public_html