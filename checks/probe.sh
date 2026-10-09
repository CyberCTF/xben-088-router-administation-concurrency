#!/bin/sh
# A login reaches the database and is refused.
curl -fsS --max-time 20 -d 'username=nobody&password=probe' http://toctou-admin-router/login | grep -q 'Invalid username.'
