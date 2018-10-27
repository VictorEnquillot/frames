open Make_test_v;;

testing "Local_database_nameofdirectory_list_by_domain_tag_provider_v
   Local_database_nameofdirectory_list_by_domain_tag_provider_u_any.ml";;

(* toplevel 
   #use "Local_database_nameofdirectory_list_by_domain_tag_provider_u_any.ml";;

*)

Register_v.delete Local_database_fullnameofdirectory_list_by_domain_tag_register_v.register;;
Register_v.delete Local_database_nameofdirectory_list_by_domain_tag_register_v.register;;

Parameters_figureset_general_register_v.store_force "trace-store" "true";;
Parameters_figureset_general_register_v.store_force "trace-translate" "true";;
Parameters_figureset_general_register_v.store_force "trace-provide" "true";;
Parameters_figureset_general_register_v.store_force "trace-extract" "true";;

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 ( 
tag_dom
(* : Domain_symbol_t.domain_label Tag_t.tag *)
=
  (Domain_symbol_t.Figure, [3])
);;
     
let ndi_ldb_l = Local_database_nameofdirectory_list_by_domain_tag_provider_v.provide tag_dom;;

test_number 2 (
ndi_ldb_l
(* : String.t list *)
=
  ["db1";
   "db2"]
);;

