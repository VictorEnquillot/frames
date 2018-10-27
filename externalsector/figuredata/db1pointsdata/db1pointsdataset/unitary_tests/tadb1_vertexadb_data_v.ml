(** {3 Vertexadb_data} *)

open Gentest_v;;

testing "Adb1 Vertexadb_data_v";;

(* toplevel 
   #use "tadb1_vertexadb_data_v.ml";; 
*)

module Eak_v = Entryadb_db_tagadb_v
module Lst_v = List_v
module Tak_v = Triangleadb_db_tagadb_v
module Tas_t = Triangleadb_symbol_t
module Tas_v = Triangleadb_symbol_v
module Tad_v = Triangleadb_data_v
module Tdp_v = Triangleadb_data_provider_v

module Vak_v = Vertexadb_db_tagadb_v
module Vas_t = Vertexadb_symbol_t
module Vas_v = Vertexadb_symbol_v
module Vad_v = Vertexadb_data_v
module Vdp_v = Vertexadb_data_provider_v

let smb_ena = "adb1";;
let tci_ena = [1];;
let kya_ena = Eak_v.make smb_ena tci_ena [];;

let smb_tra = "T";;
let tci_tra = [1; 1];;
let kya_tra = Tak_v.make smb_tra tci_tra kya_ena;;

let smb_vea = "C";;
let tci_vea = [3; 1; 1];;
let kya_vea = Vak_v.make smb_vea tci_vea kya_tra;;

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
kya_vea
(* : string list *)
= 
[("C", [3; 1; 1]); ("T", [1; 1]); ("adb1", [1])]
);;

testi 3 (
Vad_v.vertexadb_data_list_off_triangleadb_db_tagadb kya_tra
(* : string list *)
=
[
  "vertex A       1. 1. 0."; 
  "vertex B       0. 0. 0.";
  "vertex C       2. 0. 0.";
]
);;

testi 4 (
Vad_v.vertexadb_symbol_list_off_triangleadb_db_tagadb kya_tra
(* : string list *)
= 
["A"; "B"; "C"]
);;

testi 5 (
Vad_v.vertexadb_tree_canonical_index_list_off_triangleadb_db_tagadb kya_tra
=
[[1; 1; 1]; [2; 1; 1]; [3; 1; 1]]
);;

testi 6 (
Vak_v.triangleadb_db_tagadb_off_vertexadb_db_tagadb kya_vea 
(* : Triangleadb_db_tagadb_t.triangleadb_db_tagadb *) 
= 
[("T", [1; 1]); ("adb1", [1])]
);;

testi 7 (
Vak_v.entryadb_db_tagadb_off_vertexadb_db_tagadb kya_vea 
(* : Entryadb_db_tagadb_t.entryadb_db_tagadb *) 
= 
[("adb1", [1])]
);;

