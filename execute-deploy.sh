#!/bin/bash

curl --data "travis-ci-test execute-deploy.sh 실행함." 'https://d-dive.slack.com/services/hooks/slackbot?token=7WOMm81rpCFOhNGNCt46ctS5&channel=%23mj-test'
cd /home/ec2-user/deploy/travice-ci-test
./deploy.sh > /dev/null 2> /dev/null < /dev/null &