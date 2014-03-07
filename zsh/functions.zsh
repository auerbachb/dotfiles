function zsh_stats() {
  history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

function record(){
  if [ $1 ]; then
    sox -d $1
  else
    sox -d `date '+%A%d.mp3'`
  fi
}
