#!/bin/sh -e

DAYOFWEEK=$(date +%u)

# Skip on weekends
if [ "$DAYOFWEEK" -eq 6 ] || [ "$DAYOFWEEK" -eq 7 ]; then
  exit
fi

#Office's internal server
COMPANY_SERVER='XXX.XXX.XXX.XXX'

# Exit early if not connected to Office network
# For now lets just assume am not working from home
RESPONSE=`ping -c 5 $COMPANY_SERVER`
if [ $? -gt 0 ]; then
    echo "Not connected to Office : $RESPONSE"
    exit
fi

# Phone number
HER_NUMBER='+91xxxxxxxxxx'

REASONS=(
  'need to fix this bug'
  'have to commit it today'
  'Gotta ship this feature'
  'Stuck in this endless meeting'
)
rand=$[ $RANDOM % ${#REASONS[@]} ]

RANDOM_REASON=${REASONS[$rand]}
MESSAGE="Running late at work - "$RANDOM_REASON

echo $MESSAGE
# Send a text message via "Messages" app in Mac
osascript sendSMS.scp $HER_NUMBER "$MESSAGE"

