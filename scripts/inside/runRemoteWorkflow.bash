#!/bin/bash

# array=(abc def ghi jkl mno pqr)
# for item in ${array[*]}; do
# echo $2
# echo '{"ref": "master", "inputs": {"secondInput": "'${item}'", "thirdInput": "'$2'"}}'
curl -i -H "Authorization: Bearer $1" \
-d '{"ref": "master", "inputs": {"secondInput": "", "thirdInput": "'$2'"}}' \
https://api.github.com/repos/BogdanZeleniuk/HOME-PROJECT-QA-TEST/actions/workflows/mainTest.yaml/dispatches
done
