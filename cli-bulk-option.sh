#!/bin/bash

# Variables

# This is an array of the subsite names, do not include the .example.com part, that is the suffix above
# No new lines, one space between each
sites=(subsite1 subsite2 subsite3 subsite4)

for sitename in ${sites[@]}
do
	echo "$sitename Public? "
	wp option get blog_public --url=$sitename
done
