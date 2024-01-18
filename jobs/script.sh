#!/bin/bash
nginx -g 'daemon off;' &
cerbot --nginx --non-interactive --agree-tos --email und6993@gmail.com --domains az.realstw.com
tail -f > /dev/null