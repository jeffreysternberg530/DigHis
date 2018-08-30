#! /bin/bash

cd /Users/jeffreysternberg/Documents/Digital\ History

# People traveling from Berlin to Hagen (1)

grep "People traveling from" RawWePages.txt |\
	grep -v "Wilmington North Carolina" | \ # add more of these to throw things out.
    sed 's/People traveling from /"/g' | \
    sed 's/ to /", "/g' | \
    sed 's/ (/",/g'  | \
    sed 's/)$//g' > edgelist.csv