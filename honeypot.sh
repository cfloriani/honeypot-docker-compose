#!/bin/bash

while true; do nc -vnlp 21 < /app/banners/21.txt >> /app/logs/21.log; done&
while true; do nc -vnlp 25 < /app/banners/25.txt >> /app/logs/25.log; done&
while true; do nc -vnlp 110 < /app/banners/110.txt >> /app/logs/110.log; done&
while true; do nc -vnlp 143 < /app/banners/143.txt >> /app/logs/143.log; done&
while true; do nc -vnlp 465 < /app/banners/465.txt >> /app/logs/465.log; done&
while true; do nc -vnlp 587 < /app/banners/587.txt >> /app/logs/587.log; done&
while true; do nc -vnlp 993 < /app/banners/993.txt >> /app/logs/993.log; done&
while true; do nc -vnlp 995 < /app/banners/995.txt >> /app/logs/995.log; done&
while true; do nc -vnlp 3306 < /app/banners/3306.txt >> /app/logs/3306.log; done&
while true; do nc -vnlp 8080 < /app/banners/8080.txt >> /app/logs/8080.log; done&

tail -f /app/full_log