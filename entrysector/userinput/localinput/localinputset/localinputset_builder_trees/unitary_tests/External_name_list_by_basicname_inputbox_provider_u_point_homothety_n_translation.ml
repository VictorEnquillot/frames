open Make_test_v;;

testing "External_name_list_by_basicname_inputbox_provider_v with
    External_name_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";;

(* Deleting Registers *)

















(* Tracing *)


(* toplevel 
   #use "External_name_list_by_basicname_inputbox_provider_u_point_homothety_n_translation.ml";; 

*)

(* Input File *)

let nof_inp = "Print_homothety_n_translation_point_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nam_inp;;

let nam_n_kin_l = 
  Localinput_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_provider_v.provide
    fno_inp;;

test_number 1 (
(nam_n_kin_l :
   (string, Localinput_symbol_t.input_symbol) Doublet_t.doublet list ) =
  [("Con_loc",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_context);
   ("Con_hom",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_context);
   ("Hom_b_2",
    Localinput_symbol_t.Localinput_keyword_symbol
     (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
       Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor));
   ("Tra_bc",
    Localinput_symbol_t.Localinput_keyword_symbol
     (Localinput_keyword_symbol_t.Localinput_keyword_operator_symbol
       Localinput_keyword_operator_symbol_t.Localinput_keyword_operator_constructor));
   ("Vec_bc",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external);
   ("Cen_b",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external);
   ("Poi_a",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_external);
   ("Poi_h",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_target);
   ("Poi_t",
    Localinput_symbol_t.Localinput_keyword_symbol
     Localinput_keyword_symbol_t.Localinput_keyword_target)]
);;

let nam_n_kin_ext_l = 
  List.filter (fun (n, k) -> Localinput_symbol_v.is_input_keyword_external k) 
    nam_n_kin_l;;

test_number 2 (
( nam_n_kin_ext_l :
    (string, Localinput_symbol_t.input_symbol) Doublet_t.doublet list ) =
[("Vec_bc",
  Localinput_symbol_t.Localinput_keyword_symbol
    Localinput_keyword_symbol_t.Localinput_keyword_external);
 ("Cen_b",
  Localinput_symbol_t.Localinput_keyword_symbol
    Localinput_keyword_symbol_t.Localinput_keyword_external);
 ("Poi_a",
  Localinput_symbol_t.Localinput_keyword_symbol
    Localinput_keyword_symbol_t.Localinput_keyword_external)]
);;

let nam_ext_l = List.map Doublet_v.left_off_doublet nam_n_kin_ext_l in
  
test_number 3 (
(nam_ext_l : string list ) = 
["Vec_bc"; "Cen_b"; "Poi_a"]
);;
