open Make_test_v;;

testing "Figure_symbol_dependency_list_by_input_variable_name_provider_v with
   Figure_symbol_dependency_list_by_input_variable_name_provider_u_segment_length_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;










(* Tracing *)

Parameters_general_register_v.store_force  "trace-build" "false";;
Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* toplevel 
   #use "Figure_symbol_dependency_list_by_input_variable_name_provider_u_segment_length_debug.ml";;

*)

(* Input File *)

let nam_inp = "Segment_length.inp";;
let fno_inp = Input_file_fullnameoffile_by_input_file_nameoffile_provider_v.provide nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Segment_length.inp"
);;

let sym_inp_t = 
  Input_symbol_tree_by_input_fullnameoffile_provider_v.provide 
    fno_inp;;

let nam_n_kin_l = Input_variable_name_n_kind_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 2 (
(nam_n_kin_l :
  (string, Input_symbol_t.input_symbol) Doublet_list_t.doublet_list ) =
  [("Con_db1",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_context);
   ("Len_seg",
    Input_symbol_t.Input_keyword_symbol
     (Input_keyword_symbol_t.Input_keyword_operator_symbol
       Input_keyword_operator_symbol_t.Input_keyword_operator_constructor));
   ("Seg_bc",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_external);
   ("Len_bc",
    Input_symbol_t.Input_keyword_symbol
     Input_keyword_symbol_t.Input_keyword_target)]
);;

let nam_tri_l = 
    Target_n_operator_n_operand_triplet_name_list_by_input_fullnameoffile_provider_v.provide
      fno_inp;;

test_number 3 (
(nam_tri_l : (string * string * string) list ) =
  [("Len_bc", "Len_seg", "Seg_bc")]
);;

open Figure_symbol_dependency_list_by_input_variable_name_provider_v;;

(* Target Len_bc *)

let nam_ivn_tar = "Len_bc";;
let kin_ivn_tar = Input_variable_kind_by_input_variable_name_provider_v.provide nam_ivn_tar;;

test_number 4 (
(kin_ivn_tar : Input_symbol_t.input_symbol ) =
  Input_symbol_t.Input_keyword_symbol
   Input_keyword_symbol_t.Input_keyword_target
);;

let boo = Input_symbol_v.is_input_keyword_target kin_ivn_tar;;

test_number 5 (
(boo : bool ) = 
true
);;

(* let figure_symbol_dependency_list_of_triplet_name_list_of_target_input_variable_name nam_tri_l nam_ivn_tar *)

let nam_ivn_cur = nam_ivn_tar;;
let boo = is_target_input_variable_name_of_input_variable_name nam_ivn_cur;;

test_number 6 (
boo
);;

let (nam_ivn_tar, nam_ivn_opr, nam_ivn_opd) =  
	  triplet_of_triplet_name_list_of_target_input_variable_name 
	    nam_tri_l 
	    nam_ivn_cur;;

test_number 7 (
(nam_ivn_tar : string ) = "Len_bc"
  &&
(nam_ivn_opr : string ) = "Len_seg"
  && 
(nam_ivn_opd : string ) = "Seg_bc"
);;

let sym_opr = 
	  operator_symbol_of_operator_input_variable_name
	    nam_ivn_opr;;

test_number 8 (
(sym_opr : Operator_symbol_t.operator_symbol ) =
  Operator_symbol_t.Operator_body_symbol
   (Operator_body_symbol_t.Operator_creation_symbol
     (Operator_creation_symbol_t.Operator_measure_symbol
       (Operator_measure_symbol_t.Operator_measure_length "Len_seg")))
);;

let nam_ivn_cur = nam_ivn_opd;;
let boo = is_target_input_variable_name_of_input_variable_name nam_ivn_cur;;

test_number 9 (
not boo
);;

let sym_fig_ext = 
  Figure_symbol_in_inputfile_by_external_input_variable_name_provider_v.provide
    nam_ivn_cur;;

test_number 10 (
(sym_fig_ext : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_segment_symbol
       (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")))
);;

let sym_fig_l = [sym_fig_ext] ;;

let sym_fig_opd = List.hd sym_fig_l;;

test_number 11 (
( sym_fig_opd : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_segment_symbol
       (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")))
);;

(* let figure_symbol_target_of_operator_symbol_of_figure_symbol_operand_of_target_string_off sym_opr sym_fig_opd nam_ivn_cur = *)

let nam_fig_opd = Figure_symbol_v.name sym_fig_opd;;

test_number 12 (
(nam_fig_opd : string ) = 
"figure_segment_constructor"
);;

let sym_fig_cur = Figure_symbol_v.make nam_fig_opd nam_ivn_cur;;

test_number 13 (
(sym_fig_cur : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_body_symbol
     (Figure_field_body_symbol_t.Figure_segment_symbol
       (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")))
);;

test_number 14 (
sym_fig_cur =
  figure_symbol_target_of_operator_symbol_of_figure_symbol_operand_of_target_string_off
    sym_opr 
    sym_fig_opd
    nam_ivn_cur
);;


let sym_fig_dep_l = provide nam_ivn_tar;;

test_number 15 (
(sym_fig_dep_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_body_symbol
      (Figure_field_body_symbol_t.Figure_segment_symbol
        (Figure_segment_symbol_t.Figure_segment_constructor "Len_bc")));
   Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_body_symbol
      (Figure_field_body_symbol_t.Figure_segment_symbol
        (Figure_segment_symbol_t.Figure_segment_constructor "Seg_bc")))]
);;

test_number 16 (
sym_fig_dep_l = figure_symbol_dependency_list_of_triplet_name_list_of_target_input_variable_name nam_tri_l nam_ivn_tar
);;


test_number 17 (
sym_fig_dep_l = Figure_symbol_dependency_list_by_input_variable_name_provider_v.provide nam_ivn_tar
);;
