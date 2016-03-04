#!/bin/bash

# Variables

# This is the main domain of your multisite subsites, so sites in the network named subsite.example.com
suffix=example.com

# This is the direct path on your server where you want the exports to go, be sure to create the directory first
expath=/home/user/exports

# This is an array of the subsite names, do not include the .example.com part, that is the suffix above
# No new lines, one space between each
sites=(subsite1 subsite2 subsite3 subsite4)

for sitename in ${sites[@]}
do
	wp export --dir=$expath --filename_format={site}.xml --url=$sitename.$suffix
done

echo "Exports completed"
