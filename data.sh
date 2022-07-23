#!/bin/bash

echo -e "\e[1;31m [INFO] Create Folder \e[0m"
mkdir 'MTREC Train Frequency Log'

echo -e "\e[1;31m [INFO] Downloading CSV \e[0m"
wget -O 'MTREC_Train_Frequency_Log.csv' --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31" "https://rapidrail-train-freq-history-csv.mtrec.workers.dev/"
cp 'MTREC_Train_Frequency_Log.csv' 'MTREC Train Frequency Log/MTREC_Train_Frequency_Log.csv'
rm 'MTREC_Train_Frequency_Log.csv'

echo -e "\e[1;31m [INFO] Downloading JSON \e[0m"
wget -O 'MTREC_Train_Frequency_Log.json' --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31" "https://rapidrail-train-freq-history-json.mtrec.workers.dev/"
cp 'MTREC_Train_Frequency_Log.json' 'MTREC Train Frequency Log/MTREC_Train_Frequency_Log.json'
rm 'MTREC_Train_Frequency_Log.json'

echo -e "\e[1;31m [INFO] Generating Date & Time file in UTC+08 \e[0m"
echo "`env TZ=UTC-08 date`" > "Date & Time UTC +08.txt"

echo -e "\e[1;31m [INFO] Done \e[0m"
