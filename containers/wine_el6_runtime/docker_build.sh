#!/bin/sh
cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1

docker build -t wine_el6_runtime .

