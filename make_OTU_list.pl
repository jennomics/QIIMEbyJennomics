#this script is for the very specific purpose of creating lists of OTU IDs in association with the workflow implemented in the IPython notebook, QIIMEbyJennomics. To run it, you just type:

#perl make_OTU_list.pl 

#!usr/bin/perl

open (IN97o,"biom_tables/97_open_filtered_no_chimeras.txt");
open (OUT97o, ">97_open.list");

@file = <IN97o>;

foreach $line (@file){
@linearray = split(/\s+/, $line);
if ($linearray[0] !~ /#/) {print OUT97o "$linearray[0]\n"};
}
close IN97o;
close OUT97o;
########################################################################

open (IN99o,"biom_tables/99_open_filtered_no_chimeras.txt");
open (OUT99o, ">99_open.list");

@file = <IN99o>;

foreach $line (@file){
@linearray = split(/\s+/, $line);
if ($linearray[0] !~ /#/) {print OUT99o "$linearray[0]\n"};
}
close IN99o;
close OUT99o;
########################################################################

open (IN97c,"biom_tables/97_closed_filtered.txt");
open (OUT97c, ">97_closed.list");

@file = <IN97c>;

foreach $line (@file){
@linearray = split(/\s+/, $line);
if ($linearray[0] !~ /#/) {print OUT97c "$linearray[0]\n"};
}
close IN97c;
close OUT97c;
########################################################################

open (IN99c,"biom_tables/99_closed_filtered.txt");
open (OUT99c, ">99_closed.list");

@file = <IN99c>;

foreach $line (@file){
@linearray = split(/\s+/, $line);
if ($linearray[0] !~ /#/) {print OUT99c "$linearray[0]\n"};
}
close IN99c;
close OUT99c;
