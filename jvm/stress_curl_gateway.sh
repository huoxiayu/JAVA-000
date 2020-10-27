#!/bin/bash

wrk -c 1000 -t 8 -d 15 http://localhost:8088/api/hello
