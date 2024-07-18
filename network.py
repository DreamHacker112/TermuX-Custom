#!/usr/bin/env python2
import requests

url = "http://www.google.com"
timeout = 5.0

try:
    request = requests.get(url, timeout=timeout)
    if request.status_code == 200:
        print("\033[1m\033[42m ⚡ Connected To Internet ⚡ \033[0m")
    else:
        print("\033[1m\033[42m 🌦 Unable To Connect 🌦 \033[0m")
except requests.ConnectionError:
    print("\033[1m\033[42m 🌦 Unable To Connect 🌦 \033[0m")
except requests.Timeout:
    print("\033[1m\033[42m 🌦 Connection Timed Out 🌦 \033[0m")
