open Make_test_v;;

testing "Localinput_context_name_trio_by_unit_provider_v with
    Localinput_context_name_trio_by_unit_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_context_name_trio_by_unit_provider_u_any.ml";; 

*)

open Localinput_context_name_trio_by_unit_provider_v;;

let env_var = "BLOI";;
let fnd_cur = Sys.getenv (env_var);;

test_number 1 (
(fnd_cur : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputset/localinputset_builder_trees"
);;

let nam_con_t = Context_name_trio_by_fullnameofdirectory_provider_v.provide fnd_cur;;

test_number 2 (
(nam_con_t : (string, string, string) Triplet_t.triplet ) =
 ("local", "user", "entry")
);;

test_number 3 (
nam_con_t = provide ()
);;
