open Gentest_v;;

testing "constructor_symbol_translation_v";;

(* toplevel 
   #use "tconstructor_symbol_translation_v.ml";; 
 *)

module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cst_v = Constructor_symbol_translation_v

let smb_cnt_sev = Cns_v.make "atom_fivetied";;

testi 0 (
smb_cnt_sev
(* : Constructor_symbol_t.constructor_symbol *)
=
  Constructor_symbol_t.Constructor_proper_symbol
   (Constructor_symbol_t.Constructor_oneline_symbol
     (Constructor_symbol_t.Constructor_nodeoneline_symbol "atom_fivetied"))
);;
