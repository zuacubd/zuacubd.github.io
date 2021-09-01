#Script to convert a .bib file (e.g. downloaded from DBLP) into a markdown file.

if [ $# -lt 2 ]
then
        echo "Usage: $0 <.bib file> <your name>"
        exit
fi

BIB=$1
AUTHOR=$2

cat $BIB |awk '{if (index($0,"article")>0)f=1; else if (f==1&&index($0,"}")==1) {f=0; print "\n"} else if (f==1) print $0;}' > journals.tmp
cat $BIB |awk '{if (index($0,"inproceedings")>0)f=1; else if (f==1&&index($0,"}")==1) {f=0; print "\n"} else if (f==1) print $0;}' > confs.tmp

cat journals.tmp | awk '{if (NF<1) {print b; b=""} else b=b" "$0;}' > journals_pp.tmp
cat confs.tmp | awk '{if (NF<1) {print b; b=""} else b=b" "$0;}' > confs_pp.tmp

cat > bib2md.tmp << EOF1

cat journals_pp.tmp |sed 's/{//g' | sed 's/}//g'|awk -F ',' '{if (NF>0) {print \$1 "\t" \$2 "\t" \$3 "\t" \$4 "\t" \$NF}}'|awk -F '\t' '{print "* " \$1"," \$2 "," \$3 "," \$4 "," \$NF}'|sed 's/author//g'|sed 's/title//g' | sed 's/journal//g'|sed 's/year//g' |sed 's/=//g'|awk '{if (NF>0) print \$0}' | sed -E 's/[ ]+/ /g' | sed "s/\\\\\//g" |sed "s/'//g" | sed 's/$AUTHOR/\*\*$AUTHOR\*\*/g' >> journals.md

cat confs_pp.tmp |sed 's/{//g' | sed 's/}//g'|awk -F ',' '{if (NF>0) {print \$1 "\t" \$2 "\t" \$3 "\t" \$4 "\t" \$NF}}'|awk -F '\t' '{print "* " \$1"," \$2 "," \$3 "," \$4 "," \$NF}'|sed 's/author//g'|sed 's/booktitle//g' | sed 's/title//g'|sed 's/year//g' |sed 's/=//g'|awk '{if (NF>0) print \$0}' | sed -E 's/[ ]+/ /g' |sed "s/\\\\\//g" |sed "s/'//g"  | sed 's/$AUTHOR/\*\*$AUTHOR\*\*/g' >> confs.md

EOF1

sh bib2md.tmp

