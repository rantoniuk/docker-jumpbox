#!/bin/bash
/bin/grep "$1" /authorized-keys | cut -d: -f2 | tail -1
