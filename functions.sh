function guard-it () {
  if [ $1 = "start" ]; then
      screen -S guard -d -m bundle exec guard
  elif [ $1 = "stop" ]; then
      screen -X -S guard kill
  elif [ $1 = "check" ]; then
      screen -r guard
  else
      clear
  fi
}
