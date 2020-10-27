#!/bin/bash

wrk -c 1000 -t 16 -d 30 http://localhost:8088/api/hello
