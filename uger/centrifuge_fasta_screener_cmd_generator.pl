#!/usr/bin/env perl

use strict;
use warnings;


while(<>) {
    chomp;
    
    my $file = $_;
    
    if (-f $file) {
        my $cmd = "singularity run "
            . " -e -B /seq/RNASEQ /seq/RNASEQ/TOOLS/SINGULARITY/ctat-centrifuge/ctat_centrifuge.v0.0.1.simg "
            . " centrifuge -p 1 -k 1 -f "
            . " -U $file "
            . " -x /seq/RNASEQ/__ctat_genome_lib_building/centrifuge_indexes/abvh  "
            . " --report-file $file.centrifuge ";

        print "$cmd\n";
    }
}

