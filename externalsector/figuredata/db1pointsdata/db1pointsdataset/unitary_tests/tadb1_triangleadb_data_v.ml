(** {3 Triangleadb_data} *)

open Gentest_v;;

testing "Adb1 Triangleadb_data_v";;

(* toplevel 
   #use "tadb1_triangleadb_data_v.ml";; 
*)

module Eak_v = Entryadb_db_tagadb_v
module Tak_v = Triangleadb_db_tagadb_v
module Tas_t = Triangleadb_symbol_t
module Tas_v = Triangleadb_symbol_v
module Tad_v = Triangleadb_data_v
module Lst_v = List_v

let smb_ena = "adb1";;
let tci_ena = [1];;
let kya_ena = Eak_v.make smb_ena tci_ena [];;
let smb_tra = "T";;
let tci_tra = [1; 1];;
let kya_tra = Tak_v.make smb_tra tci_tra kya_ena;;

testi 0 (
kya_ena
(* : Entryadb_db_tagadb_t.entryadb_db_tagadb *)
= 
[("adb1", [1])]
);;

testi 1 (
kya_tra
(* : string list *)
= 
[("T", [1; 1]); ("adb1", [1])]
);;

testi 2 (
Tad_v.triangleadb_data_list_off_entryadb_db_tagadb kya_ena
(* : string list list *)
=
[
 [
  "triangle T"; 
  "vertex A       1. 1. 0."; 
  "vertex B       0. 0. 0.";
  "vertex C       2. 0. 0.";
] ;
   [
    "triangle U"; 
    "vertex A       0. 0. 0.";
    "vertex B       0. 1. 0."; 
    "vertex C       1. 0. 0."]
]
);;

testi 3 (
Tad_v.triangleadb_symbol_list_off_entryadb_db_tagadb kya_ena
(* : string list *)
= 
["T"; "U"]
);;

testi 4 (
Tad_v.triangleadb_tree_canonical_index_list_off_entryadb_db_tagadb kya_ena
=
[[1; 1]; [2; 1]]
);;

testi 5 (
Tak_v.entryadb_db_tagadb_off_triangleadb_db_tagadb kya_tra 
(* : Entryadb_db_tagadb_t.entryadb_db_tagadb *) 
= 
[("adb1", [1])]
);;

