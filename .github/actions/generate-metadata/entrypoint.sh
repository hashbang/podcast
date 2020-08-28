#!/bin/sh

duration=$(ffprobe -i $EP_FILE -show_entries stream=duration | \
             head -n -1 | \
             tail -n +2 | \
             cut -d= -f2)
echo "::set-output name=ep_duration::$(printf "%.2f" "${duration}")"
echo "::set-output name=ep_size::$(wc -c $EP_FILE | awk '{ print $1 }')"
