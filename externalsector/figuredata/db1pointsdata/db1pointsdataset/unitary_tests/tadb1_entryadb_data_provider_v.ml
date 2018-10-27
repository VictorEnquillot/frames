(** {3 Entryadb_data_provider} *)

open Gentest_v;;

testing "Adb1 Entryadb_data_provider_v";;

(* toplevel 
   #use "tadb1_entryadb_data_provider_v.ml";; 
*)

module Eak_v = Entryadb_db_tagadb_v
module Eas_t = Entryadb_symbol_t
module Eas_v = Entryadb_symbol_v
module Ead_v = Entryadb_data_v
module Edp_v = Entryadb_data_provider_v
module Fio_v = Fileio_v
module Fln_v = Filename_p
module Lst_v = List_v
module Tad_v = Triangleadb_data_v

let smb_ena = "adb1";;
let tci_ena = [1];;
let kya_ena = Eak_v.make smb_ena tci_ena [];;
let dat_ena = Edp_v.provide kya_ena;;

testi 0 (
kya_ena 
(* : Entryadb_db_tagadb_t.entryadb_db_tagadb *)
= 
[("adb1", [1])]
);;

testi 1 (
dat_ena
(*  : string list *) 
  =
["triangle T"; 
 "vertex A       1. 1. 0."; 
 "vertex B       0. 0. 0.";
 "vertex C       2. 0. 0."; 
 "triangle U"; 
 "vertex A       0. 0. 0.";
 "vertex B       0. 1. 0."; 
 "vertex C       1. 0. 0."]
);;

