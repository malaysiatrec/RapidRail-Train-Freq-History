# RapidRail Trains Frequency History
Provides RapidRail Trains Frequency History starting from 22 July 2022 02:50:52 PM 

## Why?
To allow public do analysis based on the history of RapidKL train frequency published on PULSE and make comparison and determine the changes of train frequency from time to time.

## Available Dataset
1. ```MTREC Train Frequency Log```
- Available in 2 formats  : ```csv``` and ```json```

## Frequency 
The ```MTREC Train Frequency Log``` will be updated every **5 minutes** on our backend system and published to Github every **10 minutes**.

## Dataset Explaination
1. ```MTREC Train Frequency Log```

CSV : 
- ```date``` : Date when the Train Frequency being logged
- ```time``` : Time when the Train Frequency being logged
- ```line_short_code``` : The abbreviation of the line name when the Train Frequency being logged
- ```headsign``` ： The terminal for the train when the Train Frequency being logged
- ```freq_in_sec``` : The frequency of the train in seconds

JSON : 
- ```timestamp``` : The date and time when the Train Frequency being logged
- ```line_short_code``` : The abbreviation of the line name when the Train Frequency being logged
- ```headsign``` ： The terminal for the train when the Train Frequency being logged
- ```freq_in_sec``` : The frequency of the train in seconds


``Notes``:
- There will be four same ``line_short_code`` for ``SPL (Sri Petaling Line)`` because our backend will log the train frequencies in CBD and non CBD station. <br> The first two ``SPL`` are logged in **CBD station** while the others are logged **in Non CBD Station**.

- N/A in ```freq_in_sec``` during normal train services : PULSE didn't return ``headway_sec`` from their API during that time

## Data Source
- PULSE by Prasarana , ``headway_sec`` from their API

## Credits
- Sam Sam
- Kai Xian
