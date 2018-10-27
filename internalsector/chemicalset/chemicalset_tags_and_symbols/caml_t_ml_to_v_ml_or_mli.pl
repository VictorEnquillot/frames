#!/usr/bin/perl -w
die "Purpose:\n to generate entity_category_v.ml file from entity_category_t.ml\nUsage:\n perl $0 entity_category_t.ml\n" if $#ARGV < 0 ;

use File::Basename;
use Time::localtime;

$verbose=0;
$verbose=1;
$terse=0;
$terse=1;
$here = "main_loop";
$ml_or_mli = shift (@ARGV);

if ( ($ml_or_mli eq "ml") || ($ml_or_mli eq "mli") ) {
    print "  generation of >$ml_or_mli< code\n";
}
else {
    print "$0 Error in ${here}:\n";
    print "  ml_or_mli >$ml_or_mli< specificy ml or mli \n";
    exit;
}

foreach $T_ml_file_fullname (@ARGV) {
    
    @t_ml_lines = do_read_t_ml_file ($T_ml_file_fullname);;

    if ($ml_or_mli eq "ml") {
	($V_ml_or_mli_file_fullname = $T_ml_file_fullname) =~ s/_t.ml/_v.ml/;
    }
    elsif ($ml_or_mli eq "mli") {
	($V_ml_or_mli_file_fullname = $T_ml_file_fullname) =~ s/_t.ml/_v.mli/;
    }
    else {
	print "$0 Error in ${here}:\n";
        print "  ml_or_mli >$ml_or_mli< should be ml or mli \n";
	exit;
    }
    print " from   : $T_ml_file_fullname\n" unless ($terse);
    print " create : $V_ml_or_mli_file_fullname\n" unless ($terse);

# Globals
    $entity_name = do_entity_name_off_file_name (${V_ml_or_mli_file_fullname});
    $category_name = do_category_name_off_file_name (${V_ml_or_mli_file_fullname});

    print "here: entity_name >$entity_name<\n" if $verbose;
    print "here: category_name >$category_name<\n" if $verbose;

    open(OUT, ">$V_ml_or_mli_file_fullname");

    $lin_nb = do_write_v_ml_or_mli_file ($V_ml_or_mli_file_fullname, @t_ml_lines);

    print " $lin_nb lines written\n" ;

    close OUT;
}
exit;

sub do_write_v_ml_or_mli_file {
    my ($here) = (caller(0))[3];
    
# arguments :
    my $v_ml_or_mli_file_fullname = shift @_;
    my @t_ml_l = @_;
  
# check arguments :
   if ( $v_ml_or_mli_file_fullname eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   v_ml_or_mli_file_fullname >$v_ml_or_mli_file_fullname< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my @out_l = ();
    my $lin_nb = 0;

# begin :
    my $ent_nam = do_entity_name_off_file_name (${v_ml_or_mli_file_fullname});
    my $cat_nam = do_category_name_off_file_name (${v_ml_or_mli_file_fullname});

    @out_l = do_collect_v_lines ($ent_nam, $cat_nam, @t_ml_l);

    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no output lines\n";
	exit;
    }
    print OUT join ("", @out_l);

    $lin_nb = ($#out_l);
    return $lin_nb;

} # do_write_v_ml_or_mli_file

sub do_collect_v_lines {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   Global t_ml_l is empty\n";
	exit;
    }

# Global :
    %Father_h = do_constructor_hash (@t_ml_l);
    @Top_type_abb_l = do_top_type_abbreviation_list (@t_ml_l);
    @Uppta_l = do_upper_type_abbreviation_list ();

# local :
    my @out_l = ();

# begin :
    if ($ml_or_mli eq "ml") {
	push (@out_l, do_header_ml_or_mli_code ($ent_nam, $cat_nam));
	push (@out_l, do_modules_ml_code ($ent_nam, $cat_nam));
	push (@out_l, do_printing_ml_code ($ent_nam, $cat_nam, @t_ml_l));
	push (@out_l, do_naming_ml_code ($ent_nam, $cat_nam, @t_ml_l));
	push (@out_l, do_extending_ml_code ($ent_nam, $cat_nam, @t_ml_l));
	push (@out_l, do_upgrading_ml_code ($ent_nam, $cat_nam, @t_ml_l));
	push (@out_l, do_downgrading_ml_code ($ent_nam, $cat_nam, @t_ml_l));
	push (@out_l, do_upper_type_abbreviation_ml_code ($ent_nam, $cat_nam));
	push (@out_l, do_top_type_abbreviation_ml_code ($ent_nam, $cat_nam));
	push (@out_l, do_halfbridge_abbreviation_ml_or_mli_code ($ent_nam, $cat_nam));
	push (@out_l, do_created ($ent_nam, $cat_nam));
    }
    elsif ($ml_or_mli eq "mli") {
	push (@out_l, do_header_ml_or_mli_code ($ent_nam, $cat_nam));
	push (@out_l, do_printing_mli_code ($ent_nam, $cat_nam, @t_ml_l));
	push (@out_l, do_naming_mli_code ($ent_nam, $cat_nam, @t_ml_l));
	push (@out_l, do_extending_mli_code ($ent_nam, $cat_nam, @t_ml_l));
	push (@out_l, do_upgrading_mli_code ($ent_nam, $cat_nam, @t_ml_l));
	push (@out_l, do_downgrading_mli_code ($ent_nam, $cat_nam, @t_ml_l));
	push (@out_l, do_upper_type_abbreviation_mli_code ($ent_nam, $cat_nam));
	push (@out_l, do_top_type_abbreviation_mli_code ($ent_nam, $cat_nam));
	push (@out_l, do_halfbridge_abbreviation_ml_or_mli_code ($ent_nam, $cat_nam));
	push (@out_l, do_created ($ent_nam, $cat_nam));
    }

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }

    return @out_l;

} # do_collect_v_lines

sub do_read_t_ml_file {
    my ($here) = (caller(0))[3];
    
    my $fil_nam = (shift @_);
    my $nam = "";
    my $pth = "";
    my $suf = "";
    my @res_l = ();

    ($nam, $pth, $suf) = fileparse ($fil_nam, '.\w+');
    
    if ( $suf ne ".ml" ) {
	print "$0 Error in $here:\n";
        print "   file name suffix >$suf< is not >.ml<\n";
	exit
    }
    
    open(INP, "<$T_ml_file_fullname");
    foreach (<INP>){
	if (! ($_ =~ /^\s*\(\*/) ) {push @res_l, $_}
    }
    close INP;

    print "result  >(",join(", ", @res_l),")<\n" if $verbose;

    return (@res_l);

} # do_read_t_ml_file

sub do_entity_name_off_file_name {
    my ($here) = (caller(0))[3];

# arguments :
    my $fil_nam = (shift @_);

# check arguments :
    if ( $fil_nam eq "" ) {
	print "$0 Error in do_entity_name_off_file_name:\n";
        print "   file name >$fil_nam< is not defined\n";
	exit
    }

    @l = reverse (split /_/, $fil_nam);

    if ( $#l < 2 ) {
	print "$0 Error in do_entity_name_off_file_name:\n";
        print "   file name >$fil_nam< has invalid form\n";
	exit
    }

    $t = shift @l;
    $c = shift @l;
    $e = join ("_", @l);

# ensure result :
    if ( $c eq "") {
	print "$0 Error in ${here}:\n";
        print "   no category name created\n";
	exit;
    }

    return $e

} # do_entity_name_off_file_name

sub do_category_name_off_file_name {
    my ($here) = (caller(0))[3];

# arguments :
    my $fil_nam = (shift @_);

# check arguments :
    if ( $fil_nam eq "" ) {
	print "$0 Error $here:\n";
        print "   input file name >$fil_nam< is not defined\n";
	exit
    }

    @l = reverse (split /_/, $fil_nam);

    if ( $#l < 2 ) {
	print "$0 Error in $here:\n";
        print "   input file name >$fil_nam< has invalid form\n";
	exit
    }

    $t = shift @l;
    $c = shift @l;
    $e = join ("_", @l);

# ensure result :
    if ( $c eq "") {
	print "$0 Error in ${here}:\n";
        print "   no category name created\n";
	exit;
    }

    return $c

} # do_category_name_off_file_name

sub do_header_ml_or_mli_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }

# local :
    my @out_l = ();
    my $Ent_nam = ucfirst ${ent_nam};
    my $Cat_nam = ucfirst ${cat_nam};
    my $cva = do_category_value_abbreviation (${cat_nam});

    push (@out_l, "(** {3 The Symbol functionalities for a ${Ent_nam}.} *)\n\n");

    if ( $ml_or_mli eq "ml") {
	push (@out_l, "let nam_mod = \"${Ent_nam}_${cat_nam}_${cva}\";;\n\n");
	push (@out_l, "(** {6 Modules.} *)\n\n");
    }

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }

    return @out_l;

} # do_header_ml_or_mli_code

sub do_modules_ml_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }

# local :
    my @out_l = ();
    my $Ent_nam = ucfirst ${ent_nam};
    my $Cat_nam = ucfirst ${cat_nam};
    my $Ent_cat = "${Ent_nam}_${cat_nam}";

    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});
    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mct = "${Mca}_${cta}";

    my $Mod_nam = "${Ent_nam}_${cat_nam}";

    push (@out_l, "module ${Mct} = ${Mod_nam}_${cta};;\n");

# exception :
    if ( ${Ent_cat} eq "Block_symbol" )    {
	push (@out_l, "module Brs_v = Bridge_symbol_v;;\n");
    }
    if ( ${Ent_cat} eq "Fragment_symbol" )    {
	push (@out_l, "module Bls_v = Block_symbol_v;;\n");
	push (@out_l, "module Sgs_t = Segment_symbol_t;;\n");
	push (@out_l, "module Sgs_v = Segment_symbol_v;;\n");
    }
    if ( ${Ent_cat} eq "Segment_symbol" )    {
	push (@out_l, "module Bls_v = Block_symbol_v;;\n");
    }
    
    return @out_l;

} # do_modules_ml_code

sub do_extending_mli_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $Ent_cat = "${Ent_nam}_${cat_nam}";
    my $Top_symbol = "${Ent_nam}_${cat_nam}";
    my $top_symbol = lc $Top_symbol;

    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});

# begin :
    my @out_l = ();
    my $Cdodns = "";
    my $cons = "";

    if ( ${Ent_cat} eq "Fragment_symbol" ) {

        push (@out_l, "\n(** {9 Extending.} *)\n\n");
	push (@out_l, "\n"); 
	push (@out_l, "val fragment_symbol_extension_of_segment_symbol_of_fragment_symbol :\n");
	push (@out_l, "    Segment_symbol_t.segment_symbol ->\n");
	push (@out_l, "      Fragment_symbol_t.fragment_symbol ->\n");
	push (@out_l, "	Fragment_symbol_t.fragment_symbol\n");
	push (@out_l, ";;\n");
	push (@out_l, " \n");

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }
    }

    return @out_l;

} # do_extending_mli_code

sub do_extending_ml_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $Ent_cat = "${Ent_nam}_${cat_nam}";
    my $top_symbol = "${ent_nam}_${cat_nam}";

    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});

# begin :
    my @out_l = ();
    my $Cons = "";
    my $cons = "";
		
    if ( ${Ent_cat} eq "Fragment_symbol" ) {

    push (@out_l, "\n(** {6 Extending.} *)\n\n");
 
    push (@out_l, "(** {6 Extending.} *)\n");
    push (@out_l, "\n");
    push (@out_l, "let fragment_symbol_extension_of_segment_symbol_of_fragment_symbol smb_seg smb_frg =\n");
    push (@out_l, "  match (smb_seg, smb_frg) with\n");
    push (@out_l, "  | (Sgs_t.Head_segment_symbol (Sgs_t.Zeroone_segment_symbol smb_s),\n"); 
    push (@out_l, "     Frs_t.Buried_fragment_symbol\n");
    push (@out_l, "       (Frs_t.Onefork_fragment_symbol (Frs_t.Onebifork_fragment_symbol smb_f)) ) ->\n");
    push (@out_l, "	 begin \n");
    push (@out_l, "	   match (smb_s, smb_f) with\n");
    push (@out_l, "	   | (Sgs_t.Zo_N_h_2C_h_2, Frs_t.Obf_CcocNch_C_h_ ) ->\n"); 
    push (@out_l, "	       Frs_t.Head_fragment_symbol \n");
    push (@out_l, "		 (Frs_t.Zerobifork_fragment_symbol Frs_t.Zbf_Gly_CcocNch_C_h_)\n");
    push (@out_l, "	   | (Sgs_t.Zo_N_h_2C_h_2, Frs_t.Obf_CdodN_ ) -> (* Proline *)\n");
    push (@out_l, "	       Frs_t.Head_fragment_symbol\n");
    push (@out_l, "		 (Frs_t.Zerobifork_fragment_symbol Frs_t.Zbf_Gly_CdodN_)\n");
    push (@out_l, "	   | _ -> \n");
    push (@out_l, "	       begin\n");
    push (@out_l, "		 Format.fprintf Format.err_formatter\n"); 
    push (@out_l, "		   \"@.--- Fatal error 1 in fragment_symbol_extension_of_segment_symbol_of_fragment_symbol\n");
    push (@out_l, "		  Unknown doublet >(segment %a, fragment %a)<@.\"\n"); 
    push (@out_l, "		  Sgs_v.print smb_seg print smb_frg;\n");
    push (@out_l, "		 assert false\n");
    push (@out_l, "	       end\n");
    push (@out_l, "	 end\n");
    push (@out_l, "	\n");   
    push (@out_l, "  | (Sgs_t.Buried_segment_symbol (Sgs_t.Oneone_segment_symbol smb_s), \n");
    push (@out_l, "     Frs_t.Buried_fragment_symbol\n");
    push (@out_l, "       (Frs_t.Onefork_fragment_symbol (Frs_t.Onebifork_fragment_symbol smb_f)) ) ->\n");
    push (@out_l, "       begin\n"); 
    push (@out_l, "	 match (smb_s, smb_f) with\n");
    push (@out_l, "	 | (Sgs_t.Oo_CcocNch_C_h_2, Frs_t.Obf_CcocNch_C_h_ ) -> \n");
    push (@out_l, "	     Frs_t.Buried_fragment_symbol\n");
    push (@out_l, "	       (Frs_t.Onefork_fragment_symbol\n");
    push (@out_l, "		  (Frs_t.Onebifork_fragment_symbol Frs_t.Obf_Gly_CcocNch_C_h_))\n");
    push (@out_l, "\n");	       
    push (@out_l, "	 | (Sgs_t.Oo_CcocNch_C_h_2, Frs_t.Obf_CdodN_ ) ->  (* Proline *)\n");
    push (@out_l, "	     Frs_t.Buried_fragment_symbol\n");
    push (@out_l, "	       (Frs_t.Onefork_fragment_symbol\n");
    push (@out_l, "		  (Frs_t.Onebifork_fragment_symbol Frs_t.Obf_Gly_CdodN_))\n");
    push (@out_l, "\n");	       
    push (@out_l, "	   | _ -> \n");
    push (@out_l, "	       begin\n");
    push (@out_l, "		 Format.fprintf Format.err_formatter\n"); 
    push (@out_l, "		   \"@.--- Fatal error 1 in fragment_symbol_extension_of_segment_symbol_of_fragment_symbol\n");
    push (@out_l, "		  Unknown doublet >(segment %a, fragment %a)<@.\"\n"); 
    push (@out_l, "		  Sgs_v.print smb_seg print smb_frg;\n");
    push (@out_l, "		 assert false\n");
    push (@out_l, "	       end\n");
    push (@out_l, "       end\n");

    push (@out_l, "  | _ -> \n");
    push (@out_l, "	       begin\n");
    push (@out_l, "		 Format.fprintf Format.err_formatter\n"); 
    push (@out_l, "		   \"@.--- Fatal error 1 in fragment_symbol_extension_of_segment_symbol_of_fragment_symbol\n");
    push (@out_l, "		  Unknown doublet >(segment %a, fragment %a)<@.\"\n"); 
    push (@out_l, "		  Sgs_v.print smb_seg print smb_frg;\n");
    push (@out_l, "		 assert false\n");
    push (@out_l, "	       end\n");
    push (@out_l, ";;\n");
    push (@out_l, "\n");

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }
	 }
	 
    return @out_l;

} # do_extending_ml_code


sub do_upgrading_mli_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $Ent_cat = "${Ent_nam}_${cat_nam}";
    my $Top_symbol = "${Ent_nam}_${cat_nam}";
    my $top_symbol = lc $Top_symbol;

    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});

# begin :
    my @out_l = ();
    my $Cdodns = "";
    my $cons = "";

    if ( ${Ent_cat} eq "Fragment_symbol" ) {
    push (@out_l, "\n(** {9 Downgrading.} *)\n\n");
 
    push (@out_l, "val fragment_symbol_of_head_fragment_symbol :\n");
    push (@out_l, "  Fragment_symbol_t.head_fragment_symbol ->\n");
    push (@out_l, "  Fragment_symbol_t.fragment_symbol\n");
    push (@out_l, ";;\n");
    push (@out_l, "\n");
    push (@out_l, "val fragment_symbol_of_buried_fragment_symbol :\n");
    push (@out_l, "  Fragment_symbol_t.buried_fragment_symbol ->\n");
    push (@out_l, "  Fragment_symbol_t.fragment_symbol\n");
    push (@out_l, ";;\n");
    push (@out_l, "\n");
    push (@out_l, "val fragment_symbol_of_leaf_fragment_symbol :\n");
    push (@out_l, "  Fragment_symbol_t.leaf_fragment_symbol ->\n"); 
    push (@out_l, "  Fragment_symbol_t.fragment_symbol\n");
    push (@out_l, ";;\n");

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }
    }

    return @out_l;

} # do_upgrading_mli_code

sub do_upgrading_ml_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $Ent_cat = "${Ent_nam}_${cat_nam}";
    my $top_symbol = "${ent_nam}_${cat_nam}";

    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});

# begin :
    my @out_l = ();
    my $Cons = "";
    my $cons = "";
		
    if ( ${Ent_cat} eq "Fragment_symbol" ) {

    push (@out_l, "\n(** {6 Upgrading.} *)\n\n");
 
    push (@out_l, "let fragment_symbol_of_head_fragment_symbol smb =\n");
    push (@out_l, "  Frs_t.Head_fragment_symbol smb\n");
    push (@out_l, ";;\n");
    push (@out_l, "\n");
    push (@out_l, "let fragment_symbol_of_buried_fragment_symbol smb =\n");
    push (@out_l, "  Frs_t.Buried_fragment_symbol smb\n");
    push (@out_l, ";;\n");
    push (@out_l, "\n");
    push (@out_l, "let fragment_symbol_of_leaf_fragment_symbol smb = \n");
    push (@out_l, "  Frs_t.Leaf_fragment_symbol smb\n");
    push (@out_l, ";;\n");

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }
	 }
	 
    return @out_l;

} # do_upgrading_ml_code


sub do_downgrading_mli_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $Ent_cat = "${Ent_nam}_${cat_nam}";
    my $Top_symbol = "${Ent_nam}_${cat_nam}";
    my $top_symbol = lc $Top_symbol;

    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});

# begin :
    my @out_l = ();
    my $Cdodns = "";
    my $cons = "";

    if ( ${Ent_cat} eq "Fragment_symbol" ) {
    push (@out_l, "\n(** {9 Downgrading.} *)\n\n");
 
    push (@out_l, "val head_fragment_symbol_off_fragment_symbol :\n");
    push (@out_l, "  Fragment_symbol_t.fragment_symbol ->\n");
    push (@out_l, "  Fragment_symbol_t.head_fragment_symbol \n");
    push (@out_l, ";;\n");
    push (@out_l, "\n");
    push (@out_l, "val buried_fragment_symbol_off_fragment_symbol :\n");
    push (@out_l, "  Fragment_symbol_t.fragment_symbol ->\n");
    push (@out_l, "  Fragment_symbol_t.buried_fragment_symbol\n");
    push (@out_l, ";;\n");
    push (@out_l, "\n");
    push (@out_l, "val leaf_fragment_symbol_off_fragment_symbol :\n");
    push (@out_l, "  Fragment_symbol_t.fragment_symbol ->\n");
    push (@out_l, "  Fragment_symbol_t.leaf_fragment_symbol\n"); 
    push (@out_l, ";;\n");

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }
    }

    return @out_l;

} # do_downgrading_mli_code

sub do_downgrading_ml_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $Ent_cat = "${Ent_nam}_${cat_nam}";
    my $top_symbol = "${ent_nam}_${cat_nam}";

    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});

# begin :
    my @out_l = ();
    my $Cons = "";
    my $cons = "";
		
    if ( ${Ent_cat} eq "Fragment_symbol" ) {

    push (@out_l, "\n(** {6 Downgrading.} *)\n\n");
 
    push (@out_l, "let head_fragment_symbol_off_fragment_symbol = function\n");
    push (@out_l, "  | Frs_t.Head_fragment_symbol smb -> smb\n");
    push (@out_l, "  | _ -> failwith \"Not_Head_fragment_symbol:head_fragment_symbol_off_fragment_symbol\"");
    push (@out_l, ";;\n");
    push (@out_l, "\n");
    push (@out_l, "let buried_fragment_symbol_off_fragment_symbol = function\n");
    push (@out_l, "  | Frs_t.Buried_fragment_symbol smb -> smb\n");
    push (@out_l, "  | _ -> failwith \"Not_Buried_fragment_symbol:buried_fragment_symbol_off_fragment_symbol\"");
    push (@out_l, ";;\n");
    push (@out_l, "\n");
    push (@out_l, "let leaf_fragment_symbol_off_fragment_symbol = function\n");
    push (@out_l, "  | Frs_t.Leaf_fragment_symbol smb -> smb\n");
    push (@out_l, "  | _ -> failwith \"Not_Leaf_fragment_symbol:leaf_fragment_symbol_off_fragment_symbol\"");
    push (@out_l, ";;\n");

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }
	 }
	 
    return @out_l;

} # do_downgrading_ml_code

sub do_printing_mli_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $Ent_cat = "${Ent_nam}_${cat_nam}";
    my $Top_symbol = "${Ent_nam}_${cat_nam}";
    my $top_symbol = lc $Top_symbol;

    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});

# begin :
    my @out_l = ();
    my $Cdodns = "";
    my $cons = "";

    push (@out_l, "\n(** {6 Converting.} *)\n\n");
    push (@out_l, "\n(** {9 Printing.} *)\n\n");
 
# Generic print :
    
    push (@out_l, "val print : Format.formatter ->\n");
    push (@out_l, "  ${Top_symbol}_${cta}.${top_symbol} ->\n");
    push (@out_l, "     unit\n");
    push (@out_l, ";;\n");

    foreach $_ (@t_ml_l) {

	if ($_ =~ /^and /){

	    ($a, $t_ml, $r) = split /\s+/, $_;
	    $T_ml = ucfirst $t_ml;
	    
	    s/and /val print_/ ;
	    s/ =/ : Format.formatter ->/;

	    push (@out_l, "\n");
	    push (@out_l, $_);
	    push (@out_l, "  ${Top_symbol}_${cta}.${t_ml} ->\n");
	    push (@out_l, "     unit\n");
	    push (@out_l, ";;\n");
	}

	if ($_ =~ /^type /){

	    ($a, $t_ml, $r) = split /\s+/, $_;
	    $T_ml = ucfirst $t_ml;
	    
	    s/type /val print_/ ;
	    s/ =/ : Format.formatter ->/;

	    push (@out_l, $_);
	    push (@out_l, "  ${Top_symbol}_${cta}.${t_ml} ->\n");
	    push (@out_l, "     unit\n");
	    push (@out_l, ";;\n");
	}

    }

# closure :


# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }

    return @out_l;

} # do_printing_mli_code

sub do_naming_mli_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print  "$0 Error in ${here}:\n";
        print  "   no t.ml lines\n";
	exit;
    }

# local :
    my @out_l = ();
    my $Cdodns = "";
    my $cons = "";

# begin :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $Top_symbol = "${Ent_nam}_${cat_nam}";
    my $top_symbol = lc $Top_symbol;

    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});

    my $Ent_cat = "${Ent_nam}_${cat_nam}";

    push (@out_l, "\n(** {9 Naming.} *)\n\n");
 
# Generic name :
    
    push (@out_l, "val name :\n");
    push (@out_l, "  ${Top_symbol}_${cta}.${top_symbol} ->\n");
    push (@out_l, "     string\n");
    push (@out_l, ";;\n");

    foreach $_ (@t_ml_l) {

	if ($_ =~ /^and /){

	    ($a, $t_ml, $r) = split /\s+/, $_;
	    $T_ml = ucfirst $t_ml;
	    
	    s/and /val name_/ ;
	    s/ =/ :/;

	    push (@out_l, "\n");
	    push (@out_l, $_);
	    push (@out_l, "  ${Top_symbol}_${cta}.${t_ml} ->\n");
	    push (@out_l, "     string\n");
	    push (@out_l, ";;\n");

	}

	if ($_ =~ /^type /){

	    ($a, $t_ml, $r) = split /\s+/, $_;
	    $T_ml = ucfirst $t_ml;

	    s/type /val name_/ ;
	    s/ =/ :/;

	    push (@out_l, $_);
	    push (@out_l, "  ${Top_symbol}_${cta}.${t_ml} ->\n");
	    push (@out_l, "     string\n");
	    push (@out_l, ";;\n");
	}

    }

# closure :


# ensure result :
    if ( is_empty_array (@out_l)) {
	print  "$0 Error in ${here}:\n";
        print  "   no lines created\n";
	exit;
    }

    return @out_l;

} # do_naming_mli_code

sub do_printing_ml_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $Ent_cat = "${Ent_nam}_${cat_nam}";
    my $top_symbol = "${ent_nam}_${cat_nam}";

    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});

# begin :
    my @out_l = ();
    my $Cons = "";
    my $cons = "";

    push (@out_l, "\n(** {6 Converting.} *)\n\n");
    push (@out_l, "\n(** {9 Printing.} *)\n\n");
 
    foreach $_ (@t_ml_l) {

	if ($_ =~ /^and /){
	    s/and /and print_/ ;
	    s/ =/ ppf = function/;

	    push (@out_l, "\n");
	    push (@out_l, $_);
	}

	if ($_ =~ /^type /){
	    s/type /let rec print_/ ;
	    s/ =/ ppf = function/;

	    push (@out_l, $_);
	}

	if ($_ =~ /^  \| /){
	    if ($_ =~ /^  \| (\w+) of (\w+)/) {
		($Cons, $cons) = ($_ =~ /^  \| (\w+) of (\w+)/);

		print "$here: Cons >$Cons< cons >$cons<\n" if $verbose;

		if (${Cons} eq "") {
		    print "$here: Error line is\n";
		    print $_;
		    print "$here: Cons >$Cons< cons >$cons<\n";
		    exit;
		}
		push (@out_l, "  | ${Mca}_${cta}.${Cons} smb ->\n");

		if ( ($C, $S, $c) = ($_ =~ /^  \| (\w+) of ([A-Z]\w+)\.(\w+)/))
		    {$cons=$c}

# exception :
		if ( ( ${Ent_cat} eq "Block_symbol" ) &&
		     ( $Cons eq "Halfbridge_block_symbol") )
		{
		    push (@out_l, "      Brs_v.print ppf smb\n");
		}
		elsif ( ( ${Ent_cat} eq "Fragment_symbol" ) &&
		     ( $cons =~ /_block_symbol/) )
		{
		    push (@out_l, "      Bls_v.print_${cons} ppf smb\n");
		}
		elsif ( ( ${Ent_cat} eq "Segment_symbol" ) &&
		     ( $cons =~ /_block_symbol/) )
		{
		    push (@out_l, "      Bls_v.print_${cons} ppf smb\n");
		}
		else {
		    push (@out_l, "      print_${cons} ppf smb\n");
		}
		
	    }
	    else {
#   | Rg_Ar (* Ar *)
		($Symbol, $Text) = ($_ =~ /^  \| (\w+) (.*)?$/);

		print "$here: Symbol >$Symbol< Text >$Text<\n";
	
		if (${Symbol} eq "") {
		    print "$here: Error at line is\n";
		    print $_;
		    exit;
		}

		push (@out_l, "  | ${Mca}_${cta}.${Symbol} -> ${Text}\n");
		push (@out_l, "      Format.fprintf ppf \"${Symbol}\"\n");
	    }
	}
    }

# Generic print :
    push (@out_l, ";;\n");
    push (@out_l, "let print = print_${top_symbol}\n;;\n");

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }

    return @out_l;

} # do_printing_ml_code

sub do_naming_ml_code {
    my ($here) = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);
    my @t_ml_l = @_;

# check arguments :
   if ( $ent_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@t_ml_l)) {
	print  "$0 Error in ${here}:\n";
        print  "   no t.ml lines\n";
	exit;
    }

# local :
    my @out_l = ();
    my $Cons = "";
    my $cons = "";

# begin :
    my $top_symbol = "${ent_nam}_${cat_nam}";
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});
    my $Mct = "${Mca}_${cta}";
    my $Ent_cat = "${Ent_nam}_${cat_nam}";

    push (@out_l, "\n(** {9 Naming.} *)\n\n");
 
    foreach $_ (@t_ml_l) {

	if ($_ =~ /^and /){
	    s/and /and name_/ ;
	    s/ =/ = function/;

	    push (@out_l, "\n");
	    push (@out_l, $_);
	}

	if ($_ =~ /^type /){
	    s/type /let rec name_/ ;
	    s/ =/ = function/;

	    push (@out_l, $_);
	}

	if ($_ =~ /^  \| /){
	    if ($_ =~ /^  \| (\w+) of (\w+)/){
		($Cons, $cons) = ($_ =~ /^  \| (\w+) of (\w+)/);
		push (@out_l, "  | ${Mct}.${Cons} smb ->\n");

		if ( ($C, $S, $c) = ($_ =~ /^  \| (\w+) of ([A-Z]\w+)\.(\w+)/))
		    {$cons=$c}

		print "$here: Cons >$Cons< cons >$cons<\n" if $verbose;

# exception :
		if ( ( ${Ent_cat} eq "Block_symbol" ) &&	
		     ( $Cons eq "Halfbridge_block_symbol") )
		{
		    push (@out_l, "      Brs_v.name smb\n");
		}
		elsif ( ( ${Ent_cat} eq "Fragment_symbol" ) &&
		     ( $cons =~ /_block_symbol/) )
		{
		    push (@out_l, "      Bls_v.name_${cons} smb\n");
		}

		elsif ( ( ${Ent_cat} eq "Segment_symbol" ) &&
		     ( $cons =~ /_block_symbol/) )
		{
		    push (@out_l, "      Bls_v.name_${cons} smb\n");
		}

		else {
		    push (@out_l, "      name_${cons} smb\n");
		}
	    }
	    else {
		($Symbol, $Text) = ($_ =~ /^  \| (\w+) (.*)$/);
		push (@out_l, "  | ${Mct}.${Symbol} -> ${Text}\n");
		push (@out_l, "      Format.sprintf \"${Symbol}\"\n");
	    }
	}
    }

# Generic name :
    push (@out_l, ";;\n\n");
    push (@out_l, "let name = name_${top_symbol}\n;;\n");

# ensure result :
    if ( is_empty_array (@out_l)) {
	print  "$0 Error in ${here}:\n";
        print  "   no lines created\n";
	exit;
    }

    return @out_l;

} # do_naming_ml_code

sub do_halfbridge_abbreviation_ml_or_mli_code {
    my ($here) = (caller(0))[3];
    
# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);

# check arguments :
   if ( $ent_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input category_name >$cat_nam< is not defined\n";
	exit;
    }

# local :
    my @res_l = ();
    my @out_l = ();
    
# begin :
    if ( ($ent_nam eq "block") && ($cat_nam eq "symbol") ) {
	if ($ml_or_mli eq "ml") {
	    push @out_l, "";
	    push @out_l, "let hbr smb_brg =";
	    push @out_l, "  Bls_t.Onezero_block_symbol (";
	    push @out_l, "    Bls_t.Halfbridge_block_symbol smb_brg)";
	    push @out_l, ";;";
	    push @out_l, "";
	}
	else {
	    push @out_l, "";
	    push @out_l, "val hbr :";
	    push @out_l, "  Bridge_symbol_t.bridge_symbol ->";
	    push @out_l, "    Block_symbol_t.oneend_block_symbol";
	    push @out_l, ";;";
	    push @out_l, "";
	}
	@res_l = map ($_ = $_. "\n", @out_l);
    }

    return @res_l;
    
} # do_halfbridge_abbreviation_ml_or_mli_code

sub do_top_type_abbreviation_ml_code {
    my ($here) = (caller(0))[3];
    
# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);

# check arguments :
   if ( $ent_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@Top_type_abb_l)) {
	print  "$0 Error in ${here}:\n";
        print  "   no Top_type_abb_l lines\n";
	exit;
    }
    if (@r = has_empty_element_hash (%Father_h)) {
	print "$0 Error in ${here}:\n";
        print "   Hash has empty elements:\n";
	print "$here: empty elements are >",join (" ", @r),"<\n";
	exit;
    }
    do_hash_print (%Father_h) if $verbose;

# local :
    my @out_l = ();
    
# begin :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});
    my $Mct = "${Mca}_${cta}";

    foreach $Simpt (@Top_type_abb_l) {
	$simpt = lc $Simpt;
	@l = do_father_list ($Simpt, %Father_h);
	@r = reverse @l;
	$t = shift @r;                           # null skipped
	$parenthesis_nb = $#r;
	$Top_symbol = shift @r;                  # top skipped 

# Block_symbols :
	$let = "let $simpt =";
 	$type_def = join ("", map ($_ = " (${Mct}." . $_, @r));
 	$argument = " ${Mct}.$Simpt" . (")" x ($parenthesis_nb));

 	print "Top_symbol $Top_symbol\n$type_def" if $verbose;
 	print "$let\n$type_def" if $verbose;
 	print "$argument\n" if $verbose;
 
 	print "$let ${type_def}${argument};;\n" if $verbose; 
 	push (@out_l, "$let\n${type_def}${argument}\n;;\n\n"); 
    }    

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
	print "   List not created\n";
	exit;
    }
    
    return (@out_l);
    
} # do_top_type_abbreviation_ml_code

sub do_upper_type_abbreviation_list {
    my ($here) = (caller(0))[3];
    
# arguments :
    print $here," Global Top_type_abb_l ",join ("\n",@Top_type_abb_l),"\n" if $verbose;
    
# check arguments :
    if ( is_empty_array (@Top_type_abb_l)) {
	print "$0 Error in ${here}:\n";
        print "   Global Top_type_abb_l is empty\n";
	exit;
    }

# local :
    my @out_l = ();
    my %Hash = ();
    my $S = "";
    
# begin :
    %Hash = do_upper_to_top_abbreviation_hash ();

# ensure result :
    @out_l = (keys %Hash);
    
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
	print "   List from Hash keys not created\n";
	exit;
    }

    print $here," list ",join ("\n",@out_l),"\n" if $verbose;
    return (@out_l);
    
} # do_upper_type_abbreviation_list

sub do_top_to_upper_abbreviation_hash {
    my ($here) = (caller(0))[3];
    
# check arguments :
    if ( is_empty_array (@Top_type_abb_l)) {
	print "$0 Error in ${here}:\n";
        print "   Global Top_type_abb_l is empty\n";
	exit;
    }

# local :
    my @out_l = ();
    my %Hash = ();
    my $S = "";
    
# begin :
    if ( $entity_name eq "atom") {
	foreach $top (@Top_type_abb_l) {           # Atom symbol Upper are : ze zo oo oe 
	    $upp = "";
#	    $upp = "a" . (lc $top) ;

	    if (
		(($upp = $top) =~ s/Rg_//) 
		|| (($upp = $top) =~ s/Fo_/cfo_/)
		|| (($upp = $top) =~ s/Si_/csi_/)
		|| (($upp = $top) =~ s/Clf_/lclf_/)
		|| (($upp = $top) =~ s/Slf_/lslf_/)
		|| (($upp = $top) =~ s/Stf_/ltlf_/)
		|| (($upp = $top) =~ s/Mon_/m_/)
		|| (($upp = $top) =~ s/Pon_/p_/)
		|| (($upp = $top) =~ s/Ptw_/pp_/)
		|| (($upp = $top) =~ s/Pth_/ppp_/)
		) 
	    {
		print " atom top $top => upp $upp\n" if $verbose;
		$Hash{$top} = $upp;
	    }
	    else {$Hash{$top} = "c" . (lc $top) };  # for Core
	} # foreach
    }
    elsif ( $entity_name eq "block") {
	foreach $top (@Top_type_abb_l) {           # Block symbol Upper are : ze zo oo oe 
	    $upp = "";
	    if (
		(($upp = $top) =~ s/Zz/Ze/) 
		|| (($upp = $top) =~ s/Zb[a-z][a-z]?/Ze/) 
		|| (($upp = $top) =~ s/Z[qt]/Ze/)
		|| (($upp = $top) =~ s/Z[a-z]o/Zo/)
		|| (($upp = $top) =~ s/Zo[a-z]/Zo/)
		|| (($upp = $top) =~ s/O[a-z]z/Oe/)
		|| (($upp = $top) =~ s/O[a-z]?o[a-z]?/Oo/)
		|| (($upp = $top) =~ s/O[s]tsss/Oe/)
		|| (($upp = $top) =~ s/O[s]bss/Oe/)
		|| (($upp = $top) =~ s/O[bt]f/Oe/)
		|| (($upp = $top) =~ s/O[d]b[a-z][a-z]/Oe/)
		|| (($upp = $top) =~ s/O[d]z[a-z][a-z]/Oe/) 
		|| (($upp = $top) =~ s/Oz/Oe/)
		|| (($upp = $top) =~ s/B/Oe/)
		) 
	    {
		print " block top $top => upp $upp\n" if $verbose;
		$Hash{$top} = $upp;
	    }
	    else {$Hash{$top} = ""};
	} # foreach
    }
    elsif ( $entity_name eq "fragment") {
	foreach $top (@Top_type_abb_l) {           # Fragment symbol Upper are : h e l
	    $upp = ""; 
	    if (
		(($upp = $top) =~ s/Zz_/C_/)      # Clozed
		|| (($upp = $top) =~ s/Z[bt]f/H/) # Head
		|| (($upp = $top) =~ s/O[bt]f/B/) # Buried
		|| (($upp = $top) =~ s/Oo/F/)     # Glycine
		|| (($upp = $top) =~ s/Oz/L/)     # Leaf
		|| (($upp = $top) =~ s/B/L/)      # Leaf
		) 
	    {
		print " fragment top $top => upp $upp\n" if $verbose;
		$Hash{$top} = $upp;
	    }
	    else {$Hash{$top} = ""};

	} # foreach
    }
    elsif ( $entity_name eq "segment") {
	foreach $top (@Top_type_abb_l) {           # segment symbol Upper are : h e
	    $upp = ""; 
	    if (
		(($upp = $top) =~ s/Zo/H/)    # Head
		|| (($upp = $top) =~ s/Oo/B/) # Buried
		|| (($upp = $top) =~ s/Oo/B/) # Glycine
		) 
	    {
		print " fragment top $top => upp $upp\n" if $verbose;
		$Hash{$top} = $upp;
	    }
	    else {$Hash{$top} = ""};

	} # foreach
    }
    else {
	print "$0 Error in ${here}:\n";
        print "   entity name >$entity_name< should be >block< or >fragment<\n";
	exit;
    }    
# ensure result :
    if (@r = has_empty_element_hash (%Hash)) {
	print "$0 Error in ${here}:\n";
        print "   Hash has empty elements:\n";
	print "$here: empty elements are >",join ("\n", @r),"<\n";
	exit;
    }
    do_hash_print (%Hash) if $verbose;

    return (%Hash);
    
} # do_top_to_upper_abbreviation_hash {
    
sub do_upper_to_top_abbreviation_hash {
    my ($here) = (caller(0))[3];
    
# arguments :
    
# check arguments :
    if ( is_empty_array (@Top_type_abb_l)) {
	print "$0 Error in ${here}:\n";
        print "   no Top_type_abb_l lines\n";
	exit;
    }

# local :
    my @out_l = ();
    my %Hash = ();
    my $S = "";
    
# begin :
    %Top_to_Upper_h = do_top_to_upper_abbreviation_hash ();;

    foreach $top (keys %Top_to_Upper_h) {  # ze zo oo oe 
	$upp = $Top_to_Upper_h{$top};
	$Hash{$upp} = $top;
	print "$here: upp $upp => top $top\n" if $verbose;
    } # foreach
    
# ensure result :
    if (@r = has_empty_element_hash (%Hash)) {
	print "$0 Error in ${here}:\n";
        print "   Hash has empty elements please correct subroutine:\n";
	print "$here: empty elements are >",join (" ", @r),"<\n";
	exit;
    }
    do_hash_print (%Hash) if $verbose;

    return (%Hash);
    
} # do_upper_to_top_abbreviation_hash {
    
sub do_upper_type_abbreviation_mli_code {
    my ($here) = (caller(0))[3];
    
# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);

# check arguments :
   if ( $ent_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@Top_type_abb_l)) {
	print  "$0 Error in ${here}:\n";
        print  "   no Top_type_abb_l lines\n";
	exit;
    }
    if ( is_empty_hash (%Father_h)) {
	print  "$0 Error in ${here}:\n";
        print  "   no Father_h lines\n";
	exit;
    }

# local :
    my @out_l = ();
    
# begin :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});
    my $Mct = "${Mca}_${cta}";

    %Upp_to_Top_h = do_upper_to_top_abbreviation_hash ();
    if ( is_empty_hash (%Upp_to_Top_h)) {
	print "$0 Error in ${here}:\n";
	print "   Upp_to_Top_h is empty\n";
	exit;
    }
    
    do_hash_print (%Father_h) if $verbose;

    foreach $Uppta (@Uppta_l) {
	$uppta = lc $Uppta;
	$Topta = $Upp_to_Top_h{$Uppta};

	@l = do_father_list ($Topta, %Father_h);

    if ( is_empty_array (@l)) {
	print "$0 Error in ${here}:\n";
	print "   father_list is empty\n";
	exit;
    }

	@r = reverse @l;
	$t = shift @r;                           # null skipped
	$Top_symbol = shift @r;                  # Top skipped 
	$Upper_symbol = shift @r;                # Upper skipped
	$upper_symbol = lc $Upper_symbol;

# Block_symbols :
	$val = "val $uppta : ${Top_symbol}_${cta}.${upper_symbol};;\n";
	print "$val" if $verbose;
 	push (@out_l, $val);
    }    

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
	print "   List not created\n";
	exit;
    }
    
    return (@out_l);
    
} # do_upper_type_abbreviation_mli_code

sub do_upper_type_abbreviation_ml_code {
    my ($here) = (caller(0))[3];
    
# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);

# check arguments :
   if ( $ent_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@Top_type_abb_l)) {
	print  "$0 Error in ${here}:\n";
        print  "   Global Top_type_abb_l is empty\n";
	exit;
    }
    if (@r = has_empty_element_hash (%Father_h)) {
	print "$0 Error in ${here}:\n";
        print "   Father_h has empty elements:\n";
	print "$here: empty elements are >",join (" ", @r),"<\n";
	exit;
    }
    do_hash_print (%Father_h) if $verbose;

# local :
    my @out_l = ();
    
# begin :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});
    my $Mct = "${Mca}_${cta}";

    %Upp_to_Top_h = do_upper_to_top_abbreviation_hash ();

    if (@r = has_empty_element_hash (%Upp_to_Top_h)) {
	print "$0 Error in ${here}:\n";
        print "   Upp_to_Top_h has empty elements:\n";
	print "$here: empty elements are >",join (" ", @r),"<\n";
	exit;
    }
    do_hash_print (%Upp_to_Top_h) if $verbose;
    
    foreach $Uppta (@Uppta_l) {
	$uppta = lc $Uppta;
	$Topta = $Upp_to_Top_h{$Uppta};

    if ( $Topta eq "") {
	print "$0 Error in ${here}:\n";
	print "   Topta is empty for Uppta >$Uppta<\n";
	exit;
    }

	@l = do_father_list ($Topta, %Father_h);

    if ( is_empty_array (@l)) {
	print "$0 Error in ${here}:\n";
	print "   father_list is empty for Topta >$Topta<\n";
	exit;
    }

	@r = reverse @l;
	$t = shift @r;                           # null skipped
	$parenthesis_nb = $#r-1;
	$Top_symbol = shift @r;                  # Top skipped 
	shift @r;                                # Upper skipped

# Block_symbols :
	$let = "let $uppta =";
 	$type_def = join ("", map ($_ = " (${Mct}." . $_, @r));
 	$argument = " ${Mct}.$Topta" . (")" x ($parenthesis_nb));

 	print "Top_symbol $Top_symbol\n$type_def\n" if $verbose;
 	print "$let\n$type_def" if $verbose;
 	print "$argument\n" if $verbose;
 
 	print "$let ${type_def}${argument};;\n" if $verbose; 
 	push (@out_l, "$let\n${type_def}${argument}\n;;\n\n"); 
    }    

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
	print "   List not created\n";
	exit;
    }
    
    return (@out_l);
    
} # do_upper_type_abbreviation_ml_code

sub do_top_type_abbreviation_mli_code {
    my ($here) = (caller(0))[3];
    
# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);

# check arguments :
   if ( $ent_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print  "$0 Error in ${here}:\n";
        print  "   input category_name >$cat_nam< is not defined\n";
	exit;
    }
    if ( is_empty_array (@Top_type_abb_l)) {
	print  "$0 Error in ${here}:\n";
        print  "   no Top_type_abb_l lines\n";
	exit;
    }
    if ( is_empty_hash (%Father_h)) {
	print  "$0 Error in ${here}:\n";
        print  "   no Father_h lines\n";
	exit;
    }

# local :
    my @out_l = ();
    
# begin :
    my $Ent_nam = ucfirst $ent_nam;
    my $Cat_nam = ucfirst $cat_nam;
    my $cta = do_category_type_abbreviation (${cat_nam});
    my $Mca = do_module_category_abbreviation (${ent_nam}, ${cat_nam});
    my $Mct = "${Mca}_${cta}";

    foreach $Simpt (@Top_type_abb_l) {
	$simpt = lc $Simpt;
	@l = do_father_list ($Simpt, %Father_h);
	@r = reverse @l;
	@C_l = shift @r;
	@C_l = @r;

	$top_symbol = lc (shift @C_l); 
	$Top_symbol = ucfirst $top_symbol;

	$val = "val $simpt : ${Top_symbol}_${cta}.${top_symbol};;\n\n";

 	print "$val" if $verbose;
 
 	push (@out_l, "$val"); 
    }    

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
	print "   List not created\n";
	exit;
    }
    
    return (@out_l);
    
} # do_top_type_abbreviation_mli_code

sub do_top_type_abbreviation_list {
    my ($here) = (caller(0))[3];
    
# arguments :
    my @t_ml_l = @_;
    
# check arguments :
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my @out_l = ();
    my $S = "";
    
# begin :
    foreach $_ (@t_ml_l) {

# simple type :
	if (($_ =~ /^  \| (\w+)/) && !($_=~ /^  \| (\w+) of (\w+)/)) {
	    ($S)= ($_ =~ /^  \| (\w+)/);
	    push (@out_l, $S);		
	}
	
    } # foreach
    
# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
	print "   List not created\n";
	exit;
    }
    
    print $here," Top_type_abb_l list \n",join ("\n",@out_l),"\n" if $verbose;
    return (@out_l);
    
} # do_top_type_abbreviation_list
    
sub do_constructor_hash {
    my ($here) = (caller(0))[3];

# arguments :
    my @t_ml_l = @_;

# check arguments :
    if ( is_empty_array (@t_ml_l)) {
	print "$0 Error in ${here}:\n";
        print "   no t.ml lines\n";
	exit;
    }

# local :
    my %hash = ();
    my $constructor = "";
    my $Cons = "";
    my $c = "";
    my $t = "";
    my $r = "";

# begin :
    foreach $_ (@t_ml_l) {

# type :
	if (($_ =~ /^and /) || ($_ =~ /^type /)) {
	   ($t, $c, $r) = split /\s+/, $_;
	   $constructor = $c;
	}

# Constructors :
	if ($_ =~ /^  \| /){
	    if ($_ =~ /^  \| (\w+) of (\w+)/){
		($Cons, $c) = ($_ =~ /^  \| (\w+) of (\w+)/);
		$hash{$Cons} = $constructor;		
		if ( $constructor eq "" ) {
		    print  "$0 Error in ${here}:\n";
		    print  "   constructor for type >$Cons< is not defined\n";
		    exit;
		}
	    }
	    else {
		($Symb, $Text) = ($_ =~ /^  \| (\w+) (.*)$/);
		$hash{$Symb} = $constructor;		
	    }
	}
    }

# ensure result :
    if (@r = has_empty_element_hash (%hash)) {
	print "$0 Error in ${here}:\n";
        print "   Hash has empty elements:\n";
	print "$here: empty elements are >",join (" ", @r),"<\n";
	exit;
    }
    do_hash_print (%hash) if $verbose;

    return (%hash);

} # do_constructor_hash

sub do_created {
    my $here = (caller(0))[3];

# arguments :
    my $ent_nam = lc (shift @_);
    my $cat_nam = lc (shift @_);

# check arguments :
   if ( $ent_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input entity_name >$ent_nam< is not defined\n";
	exit;
    }
    if ( $cat_nam eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category_name >$cat_nam< is not defined\n";
	exit;
    }

# local    
    my @out_l = ();
    my $date = today ();
    my $fil = ${ent_nam} . "_" . ${cat_nam} . "_t.ml";

# begin :
    push (@out_l, "\n");
    push (@out_l, "(* created by $0 ${fil} ${date} *)\n");

# ensure result :
    if ( is_empty_array (@out_l)) {
	print "$0 Error in ${here}:\n";
        print "   no lines created\n";
	exit;
    }

    return (@out_l);

} # do_created

sub today {
    my @monthes = ("January","February","March","April","May","June","July","August","September","October","Ndodvember","December");

    my $time= localtime;
    ($mday, $month, $year) = ($time->mday, $time->mon, $time->year);
    
    my $Year  = $year+1900;
    my $Month = $monthes[$month];
    my $res  = $mday ." ".$Month." ".$Year;

    return $res

} # today

sub do_category_name_abbreviation {
    my ($here) = (caller(0))[3];

# arguments :
    my $cat = shift @_;
    
# check arguments :
    if ( $cat eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input category >$cat< is not defined\n"
    }

# local :
    my $res = "";
    my %hash = ();

# begin :
    $hash{"database"} ="D";
    $hash{"designator"} ="d";
    $hash{"formula"} ="f";
    $hash{"index"} ="i";
    $hash{"path"} ="p";
    $hash{"state"} ="S";
    $hash{"symbol"} ="s";
    $hash{"tag"} ="t";
    $hash{"value"} ="v";
    
    $res = $hash{$cat};
    if ( $res eq "" ) {
	print "$0 : Error in ${here}:\n";
        print "   category >$cat< is not known\n";
	print "\nknown categories and abbreviations are:\n";
        do_hash_print (%hash);
	exit
    }

    return $res

} # do_category_name_abbreviation

sub do_module_name_abbreviation {
    my ($here) = (caller(0))[3];

# arguments :
    my $mod = shift @_;

# chack arguments :
    if ( $mod eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   input module >$mod< is not defined\n";
	exit;
    }

# local :
    my $res = "";
    my %hash = ();

# begin :
    $hash{"molecule_aminoacid_olc"}="Ao";
    $hash{"molecule_aminoacid"}="Aa";
    $hash{"molecule_aminoacid_tlc"}="AT";
    $hash{"atom"}="At";
    $hash{"chemicalset"}="Cs";
    $hash{"block"}="Bl";
    $hash{"bond"}="Bn";
    $hash{"box"}="Bx";
    $hash{"bridge"}="Br";
    $hash{"peptideca"}="Pa";
    $hash{"chain"}="C_h_";
    $hash{"cterminal"}="Ct";
    $hash{"fragment"}="Fr";
    $hash{"grouping"}="Gr";
    $hash{"mendeleev"}="Mn";
    $hash{"molecule"}="Ml";
    $hash{"nucleicacid"}="Na";
    $hash{"residuetwig"}="Pc";
    $hash{"polypeptide"}="Pl";
    $hash{"protein"}="Pr";
    $hash{"residue"}="Rs";
    $hash{"residue_embedded"}="Re";
    $hash{"residue_nterminal"}="Rn";
    $hash{"polypeptide_sidegroup"}="Sc";
    $hash{"segment"}="Sg";
    $hash{"web_index"}="Wb";
    $hash{"sequence_index"}="Sq";
    $hash{"closed_fragment"}="CCC";
    $hash{"monomer"}="MMM";
    
    $res = $hash{$mod};

    if ( $res eq "" ) {
	print "$0 : Error in ${here}:\n";
        print "   module >$mod< is not known\n";
	print "\nknown modules and abbreviations are:\n";
        do_hash_print (%hash);
	exit
    }

    return $res

} # do_module_name_abbreviation

sub do_module_category_abbreviation {
# Ex. block, symbol -> Bls
    my ($here) = (caller(0))[3];

# arguments :
    my $mod = shift @_;
    my $cat = shift @_;

# check arguments :
    if ( $mod eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   module >$mod< is not defined\n";
	exit;
    }
    if ( $cat eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   category >$cat< is not defined\n";
	exit;
    }

# local :
    my $res = "";

# begin :
    my $mna = do_module_name_abbreviation ($mod);
    my $cna = do_category_name_abbreviation ($cat); 

    $res = "${mna}" . "${cna}";

    return $res;

} # module_category_abbreviation

sub do_category_type_abbreviation {
    my ($here) = (caller(0))[3];

# arguments :
    my $cat = shift @_;

# check arguments :
    if ( $cat eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   category >$cat< is not defined\n";
	exit;
    }

# local :
    my $res = "";
    my %hash = ();

    $hash{"designator"}="t";
    $hash{"symbol"}="t";
    $hash{"state"}="t";
    $hash{"path"}="p";
    $hash{"index"}="t";
    $hash{"formula"}="t";
    $hash{"tag"}="t";
    $hash{"database"}="t";
    $hash{"value"}="t";
    
    $res = $hash{$cat};

    if ( $res eq "" ) {
	print "$0 : Error in ${here}:\n";
        print "   category >$cat< is not known\n";
	print "\nknown categories and abbreviations are:\n";
        do_hash_print (%hash);
	exit
    }

    return $res

} # do_category_type_abbreviation

sub do_category_value_abbreviation {
    my ($here) = (caller(0))[3];

# arguments :
    my $cat = shift @_;

# check arguments :
    if ( $cat eq "" ) {
	print "$0 Error in ${here}:\n";
        print "   category >$cat< is not defined\n";
	exit;
    }

# local :
    my $res = "";
    my %hash = ();

    $hash{"designator"}="v";
    $hash{"symbol"}="v";
    $hash{"state"}="v";
    $hash{"path"}="p";
    $hash{"index"}="v";
    $hash{"formula"}="v";
    $hash{"tag"}="v";
    $hash{"database"}="v";
    $hash{"value"}="v";
    
    $res = $hash{$cat};

    if ( $res eq "" ) {
	print "$0 : Error in ${here}:\n";
        print "   category >$cat< is not known\n";
	print "\nknown categories and abbreviations are:\n";
        do_hash_print (%hash);
	exit
    }

    return $res

} # do_category_value_abbreviation

sub do_hash_print {
    my ($here) = (caller(0))[3];
    my (%hash) = @_ ;

    my $name   = ""  ;
    my $maxlen = 0 ;

    die "$here: hash not empty \n" if is_empty_hash (%hash) ;
        
    foreach $name (sort keys(%hash)) {
        if (length $name > $maxlen) {
            $maxlen = length $name ;
        }
    }

    foreach $name (sort keys(%hash)) {
        print " " x ($maxlen + 1 - length($name))," \"$name\" : ";
        print "$hash{$name}\n";
    }

} # hash_print

sub is_empty_array {
# return 1 if empty
    my $here = (caller(0))[3];

    my @array = @_; 
    my $result = 0 ;

    $result = ($#array == -1 ); 
   
    print "$here: \$result = $result \n" if $debug ;

    return ( $result );
} # is_empty_array

sub is_empty_hash {
# return 1 if empty
    my $here = (caller(0))[3];
    my (%hash) = @_;
    my $ref = \%hash ;
    my @array = () ;

    @array = keys %hash ;

    $result = ( is_empty_array (@array)) ;
    print "$here: \$result = $result \n" if $debug ;
    print "$here: \$ref = $ref \n" if $debug ;

    return ($result) ;

} # is_empty_hash

sub has_empty_element_hash {
# return 1 if empty
    my $here = (caller(0))[3];
    my (%hash) = @_;
    my @res_l = () ;

    foreach $name (keys(%hash)) {
	if ( $hash{$name} eq "" ) {
	    push (@res_l, $name)
	}
    }
    
    return (reverse @res_l) ;

} # has_empty_element_hash

sub do_father_list {
    my $Son = ucfirst (shift @_);
    my (%father_h) = @_;
    my @out_l = ();

# begin :
    my $F = $Son;

    while ($F ne "") {
	$f = $father_h{$Son};
	$F = ucfirst $f;
	push (@out_l, $F);
	if ($F ne "") {$Son=$F}
    }

    return @out_l;

} # do_father

sub unique {
    my (@word_l);
    foreach $w (@word_l) {
	if ($w ne $word_l[$#word_l]) {
	    push(@word_l, $w);
	}
    }
    @word_l;
}

