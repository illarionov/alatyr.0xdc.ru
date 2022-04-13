#!/bin/sh

echo "mapX,mapY,pixelX,pixelY,enable"

cat DZB00403100073H005001_aa.tif.points  | \
   awk -v CONVFMT="%8.15f" -F ',' \
      '(NR==1){ next } { print $1 "," $2 "," $3 + 11.0 "," $4 }  '

cat DZB00403100073H005001_bb.tif.points  | \
   awk -v CONVFMT="%8.15f" -F ',' \
      '(NR==1){ next } { print $1 "," $2 "," $3 + 25.0 "," $4 - 23178.0 }  '

cat DZB00403100073H005001_cc.tif.points  | \
   awk -v CONVFMT="%8.15f" -F ',' \
      '(NR==1){ next } { print $1 "," $2 "," $3 "," $4 - 46364.0 }  '

