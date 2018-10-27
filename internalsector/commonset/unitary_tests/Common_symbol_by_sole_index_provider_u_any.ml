open Make_test_v;;

testing "Common_symbol_by_sole_index_provider_v with
   Common_symbol_by_sole_index_provider_u_any.ml";;

Parameters_general_register_v.store_force "trace-store" "true";;
Parameters_general_register_v.store_force "trace-provide" "true";;
Parameters_general_register_v.store_force "trace-extract" "true";;

Register_v.delete Common_symbol_by_sole_index_register_v.register;;

(* toplevel 
   #use "Common_symbol_by_sole_index_provider_u_any.ml";;

*)

let nam_dom = "figure";;
let sof_dom = "";;
let soi_up = [];;
let tag_dom = Domain_tag_v.make_of_domain_name_of_string_of_sole_index_up nam_dom sof_dom soi_up;;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [6])
);;

Common_symbol_by_sole_index_register_v.dump ();;

let soi_any = [6];;
let tag_dom = Common_symbol_by_sole_index_extractor_v.domain_tag_off_sole_index soi_any;;

test_number 2 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [6])
);;

