#!/bin/bash

gcc cBNO080.c -o cBNO080 -lm -lbcm2835
sudo ./cBNO080 | python3 readC.py
