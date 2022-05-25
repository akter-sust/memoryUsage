# memoryUsage

To record memory usage run `memory_history.sh` file

requirements
1. Install bc

    For linux/Ubuntu: 
    
      `sudo apt-get update -y`
      
      `sudo apt-get install -y bc`
      
2. Install jq

    For linux/Ubuntu: 
    
      `sudo apt-get update -y`
      
      `sudo apt-get install jq`

the memory usage will be saved in the same folder and name will be history_memory_<DATE>.txt
  
the memory usage will be saved in 15 sec if the usage is less than 2Gi and in 1 sec if the usage is more than 30Gi. 
  
To run the file as a bash script, might need to change the mod usin `chmod +x memory_history.sh` and run in termina using `./memory_history.sh`
  
  
Use `memory_statistics.py` for see the memory usage statistics. to run it you need to install python and pandas.
the input file name is passing as a command argument. `python memory_statistics.py <filename>`
