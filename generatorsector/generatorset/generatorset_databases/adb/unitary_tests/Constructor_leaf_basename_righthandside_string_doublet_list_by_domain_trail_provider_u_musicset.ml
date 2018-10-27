open Make_test_v;;

testing "Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v
   Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_musicset.ml";; 

(* toplevel 
   #use "Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_musicset.ml";;

*)

let nam_dos = "musicset";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_ent_str_rhs_dol = Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

let extract_sublist str dol =
  let len = String.length str in
  Doublet_list_v.filter_if_left (fun l -> String.sub l 0 len = str ) dol
;;

test_number 1 (
extract_sublist "id3" nam_ent_str_rhs_dol
(* : (string, string) Doublet_t.doublet list *)
=
[("id3v1_file", "list id3v1_frame"); ("id3v2_file", "list id3v2_frame")]
);;

test_number 2 (
extract_sublist "A" nam_ent_str_rhs_dol
(* : (string, string) Doublet_t.doublet list *)
=
[("AENC", "singlet string"); 
 ("APIC", "singlet string");
 ("ASPI", "singlet string")]
);;

test_number 3 (
extract_sublist "C" nam_ent_str_rhs_dol
(* : (string, string) Doublet_t.doublet list *)
=
[("COMM", "singlet string"); 
 ("COMR", "singlet string")]
);;

test_number 4 (
extract_sublist "T" nam_ent_str_rhs_dol
(* : (string, string) Doublet_t.doublet list *)
=
[("TALB", "singlet string"); ("TBPM", "singlet string");
 ("TCOM", "singlet string"); ("TCON", "singlet string");
 ("TCOP", "singlet string"); ("TDAT", "singlet string");
 ("TDEN", "singlet string"); ("TDLY", "singlet string");
 ("TDOR", "singlet string"); ("TDRC", "singlet string");
 ("TDRL", "singlet string"); ("TDTG", "singlet string");
 ("TENC", "singlet string"); ("TEXT", "singlet string");
 ("TFLT", "singlet string"); ("TIME", "singlet string");
 ("TIPL", "singlet string"); ("TIT1", "singlet string");
 ("TIT2", "singlet string"); ("TIT3", "singlet string");
 ("TKEY", "singlet string"); ("TLAN", "singlet string");
 ("TLEN", "singlet string"); ("TMCL", "singlet string");
 ("TMED", "singlet string"); ("TMOO", "singlet string");
 ("TOAL", "singlet string"); ("TOFN", "singlet string");
 ("TOLY", "singlet string"); ("TOPE", "singlet string");
 ("TORY", "singlet string"); ("TOWN", "singlet string");
 ("TPE1", "singlet string"); ("TPE2", "singlet string");
 ("TPE3", "singlet string"); ("TPE4", "singlet string");
 ("TPOS", "singlet string"); ("TPRO", "singlet string");
 ("TPUB", "singlet string"); ("TRCK", "singlet string");
 ("TRDA", "singlet string"); ("TRSN", "singlet string");
 ("TRSO", "singlet string"); ("TSIZ", "singlet string");
 ("TSOA", "singlet string"); ("TSOP", "singlet string");
 ("TSOT", "singlet string"); ("TSRC", "singlet string");
 ("TSSE", "singlet string"); ("TSST", "singlet string");
 ("TXXX", "singlet string"); ("TYER", "singlet string")]
);;

test_number 5 (
extract_sublist "W" nam_ent_str_rhs_dol
(* : (string, string) Doublet_t.doublet list *)
=
[("WCOM", "singlet string");
 ("WCOP", "singlet string");
 ("WOAF", "singlet string");
 ("WOAR", "singlet string");
 ("WOAS", "singlet string");
 ("WORS", "singlet string");
 ("WPAY", "singlet string");
 ("WPUB", "singlet string");
 ("WXXX", "singlet string")]
);;

