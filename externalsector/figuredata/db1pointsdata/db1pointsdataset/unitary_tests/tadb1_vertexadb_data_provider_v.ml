(** {3 Vertexadb_data} *)

open Gentest_v;;

testing "Adb1 Vertexadb_data_provider_v";;

(* toplevel 
   #use "tadb1_vertexadb_data_provider_v.ml";; 
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

let dat_vea = Vdp_v.provide kya_vea;;

testi 0 (
kya_vea
(* : string list *)
= 
[("C", [3; 1; 1]); ("T", [1; 1]); ("adb1", [1])]
);;

testi 1 (
dat_vea
(* : string *)
=
   "vertex C       2. 0. 0."; 
);;

testi 2 (
Vad_v.coordinate_list_off_vertexadb_data dat_vea
(* : float Trio_t.trio *)
= 
[2.; 0.; 0.]
);;

testi 3 (
Vad_v.coordinate_y_off_vertexadb_data dat_vea
(* : float *)
= 
 0.
);;

testi 4 (
 Vad_v.coordinate_count_off_vertexadb_data dat_vea
(* : int *)
  = 
3
);;

