(** {3 Triangleadb_data_provider} *)

open Gentest_v;;

testing "Adb1 Triangleadb_data_provider_v";;

(* toplevel 
   #use "tadb1_triangleadb_data_provider_v.ml";; 
*)

module Eak_v = Entryadb_db_tagadb_v
module Tak_v = Triangleadb_db_tagadb_v
module Tas_t = Triangleadb_symbol_t
module Tas_v = Triangleadb_symbol_v
module Tad_v = Triangleadb_data_v
module Lst_v = List_v
module Tdp_v = Triangleadb_data_provider_v

let smb_ena = "adb1";;
let tci_ena = [1];;
let kya_ena = Eak_v.make smb_ena tci_ena [];;
let smb_tra = "T";;
let tci_tra = [1; 1];;
let kya_tra = Tak_v.make smb_tra tci_tra kya_ena;;
let dat_tra = Tdp_v.provide kya_tra;;

testi 0 (
kya_tra
(* : string list *)
= 
[("T", [1; 1]); ("adb1", [1])]
);;

testi 1 (
dat_tra
(* : string list *)
=
  [
   "triangle T"; 
   "vertex A       1. 1. 0."; 
   "vertex B       0. 0. 0.";
   "vertex C       2. 0. 0."; 
 ]
);;

