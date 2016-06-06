#!/bin/sh

docdir="${PWD}/docs"
indexfile=$docdir"/index.html"
files="*.jpg"

percentagedocumented=$(grep -E -o "\((\d*)% documented\)" $indexfile)
percentage=$(grep -E -o '[0-9]{1,3}' <<< $percentagedocumented)

shield="https://img.shields.io/badge/Documented-"$percentage"%25-blue.svg"

echo $shield
