#!/usr/bin/env bash
#
# 1. you need to activate first venv out site this script
# source ../venv/Scripts/activate
# 2. run app in background
if test $# -lt 1; then #??
  # show appropriate error
  echo "Error: Python-App as argument is required: <app.py>"
  echo "Exit script."
  exit 1 #??
fi #??
APP=$1
echo "run $APP ..."
flask --app "$APP" run --host=127.0.0.1 --port=4000
# echo "run $APP in background"
# nohup flask --app "$APP" run --host=127.0.0.1 --port=4000  > log.txt 2>&1 &



#check_venv=$(echo $PS1 |xargs|grep "venv"|cut -d' ' -f1)
#echo "prompt: $check_venv"
## check if image and container name are empty
#if [[ -z "$check_venv" ]]; then
#  echo "Virtual environment is not activated!"
#  echo "Submit following command: "
#  echo "source ../venv/Scripts/activate"
#  exit 3
#fi
