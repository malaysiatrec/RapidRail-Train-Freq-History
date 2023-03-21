# WARNING 
This repo won’t be updated anymore as the this feature will be discontinued from our side. Please be aware that no new data will be updated starting 21 March 2023.

# RapidRail Trains Frequency History
Provides RapidRail Trains Frequency History starting from 22 July 2022 02:50:52 PM 

Star this repo if it helps you!

## Why?
To allow public do analysis based on the history of RapidKL train frequency published on PULSE and make comparison and determine the changes of train frequency from time to time.

## Available Dataset
1. ```MTREC Train Frequency Log```
- Available in 2 formats  : ```csv``` and ```json```

## Frequency 
The ```MTREC Train Frequency Log``` will be updated every **5 minutes** on our backend system and published to Github every **10 minutes**. 

However , it may **not** be updated each 10 minutes , it may be delayed. 

Explaination from Github : ``The schedule event can be delayed during periods of high loads of GitHub Actions workflow runs. High load times include the start of every hour. To decrease the chance of delay, schedule your workflow to run at a different time of the hour.``

## Dataset Explaination
1. ```MTREC Train Frequency Log```

CSV : 
- ```date``` : Date when the Train Frequency being logged
- ```time``` : Time when the Train Frequency being logged
- ```line_short_code``` : The abbreviation of the line name when the Train Frequency being logged
- ```headsign``` ： The terminus for the train when the Train Frequency being logged
- ```freq_in_sec``` : The frequency of the train in seconds

JSON : 
- ```timestamp``` : The date and time when the Train Frequency being logged
- ```line_short_code``` : The abbreviation of the line name when the Train Frequency being logged
- ```headsign``` ： The terminus for the train when the Train Frequency being logged
- ```freq_in_sec``` : The frequency of the train in seconds


``Notes``:
- ~There will be four same ``line_short_code`` for ``SPL (Sri Petaling Line)`` because our backend will log the train frequencies in CBD and non CBD station. <br> The first two ``SPL`` are logged in **CBD station** while the others are logged **in Non CBD Station**.~ 

(Removed since ``26 July 2022, 05:56:18 PM`` to avoid confuse , PULSE showing same ``headway_sec`` for CBD stations / NON CBD stations)

- N/A in ```freq_in_sec``` during normal train services : PULSE didn't return ``headway_sec`` from their API during that time

## Alternative Links
If you are unable to retrieve the latest datasets from our Github repo due to the delay of Github actions , please use the link below to access our datasets.

- CSV : [https://rapidrail-train-freq-history-csv.mtrec.workers.dev/](https://rapidrail-train-freq-history-csv.mtrec.workers.dev/)
- JSON : [https://rapidrail-train-freq-history-json.mtrec.workers.dev/](https://rapidrail-train-freq-history-json.mtrec.workers.dev/)

## Data Source
- PULSE by Prasarana , ``headway_sec`` from their API

## Credits
- Sam Sam
- Kai Xian


