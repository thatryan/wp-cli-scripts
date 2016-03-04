#!/bin/bash

# Variables

# This is the main domain of your multisite subsites, so sites in the network named subsite.example.com
suffix=example.com

# This is the direct path on your server where you want the imports to come from
impath=/home/user/imports

# This is an array of the subsite names, do not include the .example.com part, that is the suffix above
# No new lines, one space between each
# Be sure each file is named the same as the subsite name. eg: if importing to subsite1.example.com be sure the file
# is named subsite1.xml
sites=(subsite1 subsite2 subsite3 subsite4)


for sitename in ${sites[@]}
do
	wp import $impath/$sitename.xml --url=$sitename.$suffix

	echo "Completed import of $sitename"
done

echo "Completed!"
