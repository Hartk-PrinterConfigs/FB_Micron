#!/bin/bash

file_name="shaper_calibrate_"
current_time=$(date "+%Y-%m-%d-%H-%M-%S")

/home/hartk/klipper/scripts/calibrate_shaper.py /tmp/calibration_data_x_*.csv -o /home/hartk/printer_data/config/ISGraphs/"$file_name"x_"$current_time".png
/home/hartk/klipper/scripts/calibrate_shaper.py /tmp/calibration_data_y_*.csv -o /home/hartk/printer_data/config/ISGraphs/"$file_name"y_"$current_time".png
rm /tmp/calibration_data_*.csv