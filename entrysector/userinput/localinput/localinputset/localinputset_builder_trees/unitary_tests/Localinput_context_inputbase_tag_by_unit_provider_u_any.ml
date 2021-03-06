open Make_test_v;;

testing "Localinput_context_inputbase_tag_by_unit_provider_v with
        Localinput_context_inputbase_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_context_inputbase_tag_by_unit_provider_u_any.ml";; 

*)

open Localinput_context_inputbase_tag_by_unit_provider_v;;
  
let (nam_iba, nam_dom, nam_sec) =
  Localinput_context_name_trio_by_unit_provider_v.provide () 
;;

test_number 1 (
((nam_iba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("local", "user", "entry")
);;

let soi_iba = 
    Context_sole_index_by_context_name_trio_provider_v.provide 
    (nam_iba, nam_dom, nam_sec)
;;
  
test_number 2 (
(soi_iba : int list ) = 
[1; 21; 1]
);;

let sym_iba = 
  Localinput_context_inputbase_symbol_v.localinput_context_inputbase_constructor 
    nam_iba 
;;

test_number 3 (
(sym_iba : Localinput_context_inputbase_symbol_t.localinput_context_inputbase_symbol ) =
  Localinput_context_inputbase_symbol_t.Localinput_context_inputbase_constructor
   "local"
);;
 
let tag_iba = Tag_v.make sym_iba soi_iba;;

test_number 4 (
(tag_iba : Localinput_context_inputbase_symbol_t.localinput_context_inputbase_symbol
  Tag_t.tag ) =
  (Localinput_context_inputbase_symbol_t.Localinput_context_inputbase_constructor
    "local",
   [1; 21; 1])
);;

test_number 5 (
tag_iba = provide ()
);;
