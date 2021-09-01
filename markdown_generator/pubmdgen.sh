#!/bin/bash

./bib2md.sh Ganguly_Debasis.bib "Debasis Ganguly"

PUBFILE=../_pages/pubs.md

cat > $PUBFILE << EOF1
---
layout: archive
title: "Publications"
permalink: /pubs/
author_profile: true
---

EOF1

echo "### Conferences" >> $PUBFILE
echo "" >> $PUBFILE
cat confs.md >> $PUBFILE

echo "" >> $PUBFILE
echo "### Journals" >> $PUBFILE
echo "" >> $PUBFILE
cat journals.md >> $PUBFILE

rm confs.md
rm journals.md
rm *tmp

