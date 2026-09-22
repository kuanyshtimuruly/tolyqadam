#!/bin/bash
set -euo pipefail
cd /var/www/tolyqadam
git pull
chown -R root:www-data /var/www/tolyqadam
chmod -R g+rX /var/www/tolyqadam
nginx -t && systemctl reload nginx
