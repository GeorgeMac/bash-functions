function guard-it {
  if [[ $1 = "start" ]]; then
      screen -S guard -d -m bundle exec guard
      echo "Attempting to start guard in screen. Please check screen (screen -ls)"
  elif [[ $1 = "stop" ]]; then
      screen -X -S guard kill
      echo "Attempting to kill guard in screen. Please check screen (screen -ls)"
  elif [[ $1 = "view" ]]; then
      screen -r guard
  else
      echo "Useage guard-it start | stop | view"
  fi
}
