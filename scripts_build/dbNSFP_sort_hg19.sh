"""#!/bin/sh

version="3.2a"

cat dbNSFP${version}_variant.chr* \
	| $HOME/snpEff/scripts_build/dbNSFP_sort.pl 7 8 \
	> dbNSFP${version}_hg19.txt

"""
### Forloop script written for a low memory usage.Above script failed inspite of providing 100 GB RAM. Following script might consume more time for I/O but consumes less memory.

#!/bin/sh
version="3.2a"
touch dbNSFP${version}_hg19.txt 
for file in dbNSFP${version}_variant.chr*; do cat $file|/home/tojjam/exomeSeq/snpEff/scripts/dbNSFP_sort.pl 7 8 >>dbNSFP${version}_hg19.txt; done
