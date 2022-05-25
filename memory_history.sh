#!/bin/sh


echo "Press [CTRL+C] to stop.."
filename=history_memory_$(date | tr -s ' ' '_'| tr -s ':' '_').txt
while :
do
  date >> $filename
  free -m | grep Mem: >> $filename
  used=$(free -m | grep Mem:| awk '{print $3}')
  # install bc for linux/ubuntu
  # sudo apt-get update -y
  # sudo apt-get install -y bc
  a=7.43938
  b=0.000257094 
  c=$(echo $b*$used | bc)
  wt=$(echo $a-$c | bc)
  # to install jq ubuntu: sudo apt-get install jq
  wt=$(echo $wt | jq '.|ceil')
  if [ "$wt" -lt "1" ]; then
    wt=1
  elif [ "$wt" -gt "10" ]; then
    wt=15
  fi
  sleep $wt
done
