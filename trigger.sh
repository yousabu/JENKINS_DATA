#!/bin/bash

crumb=$(curl -u "admin:2856017" -s 'http://192.168.122.183:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
curl -u "admin:2856017" -H "$crumb" -X POST http://192.168.122.183:8080/job/env/build?delay=0sec
