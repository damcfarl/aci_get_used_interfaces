#!/bin/bash


# Takes the first argument, parses output to CSV
#



cat $1 | egrep '/rsaccBaseGrp|tDn' | sed -e 's/^[ \t]*//;s/[ \t]*$//' | sed -e 'N;s/\n/ /' | sed 's!/!,!g' | sed 's/"//g' | sed 's/dn: uni,infra,accportprof-//' | sed 's/_IntProf//' | sed 's/hports-//' | sed 's/-typ-range,rsaccBaseGrp//' | sed 's/accbundle-//' | sed 's/accportgrp-//' | sed 's/ tDn: uni,infra,funcprof,//' |  sed 's/ tDn:/ZZZNoPolicyGroupZZZ/' | sort  -k2,2 -t- -n | sort -k1 | grep -v "ZZZNoPolicyGroupZZZ"
#


##cat $1 | egrep '/accportprof|tDn' | sed -e 's/^[ \t]*//;s/[ \t]*$//' | sed -e 'N;s/\n/ /' | sed 's!/!,!g' | sed 's/"//g' | sed 's/dn: uni,infra,accportprof-//' | sed 's/_IntProf//' | sed 's/hports-//' | sed 's/-typ-range,rsaccBaseGrp//' | sed 's/accbundle-//' | sed 's/accportgrp-//' | sed 's/ tDn: uni,infra,funcprof,//' | sed 's/-typ-range,portblk-block2//' |  sed 's/ tDn:/NoPolicyGroup/' | sort  -k2,2 -t- -n | sort -k1
