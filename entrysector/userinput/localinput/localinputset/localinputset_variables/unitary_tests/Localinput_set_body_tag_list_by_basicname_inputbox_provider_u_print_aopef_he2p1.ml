open Make_test_v;;

testing "Localinput_set_body_tag_list_by_basicname_inputbox_provider_v with
        Localinput_set_body_tag_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Ope_len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(*          operation "length" *)
(*          ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Ope_len *)
(*          target_operand Seg_bc *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)


(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_set_body_tag_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";; 

*)

open Localinput_set_body_tag_list_by_basicname_inputbox_provider_v;;

let nam_var_ext = "Seg_bc";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

let nam_ibo = "Print_length_segment_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let tag_loi_l = 
    Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo;;

let tag_loi_lsb_l = List.filter 
      (fun (s, i) -> Localinput_symbol_v.is_localinput_set_body_symbol_off_localinput_symbol s)
      tag_loi_l;;

let tag_lsb_l = List.map  (* Coerce Down *)
    Localinput_set_body_tag_v.localinput_set_body_tag_off_localinput_tag
    tag_loi_lsb_l;;

(* Localinput_set_body_block *)

let tag_lsb_lbb_sl = List.filter (fun (s, i) -> Localinput_set_body_symbol_v.is_localinput_set_body_block_symbol_off_localinput_set_body_symbol s) tag_lsb_l;;

test_number 1 (
(tag_lsb_lbb_sl :
  Localinput_set_body_symbol_t.localinput_set_body_symbol Tag_t.tag list ) =
  [(Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
       (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
         "Con_bc")),
    [2; 1; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
       (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
         "segment_BC")),
    [2; 2; 2; 1; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
       (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
         "Ope_len")),
    [2; 2; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
       (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
         "Ope_len")),
    [2; 2; 2; 2; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
       (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
         "Seg_bc")),
    [2; 3; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
       (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
         "Seg_bc")),
    [2; 2; 2; 3; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
       (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
         "Len_bc")),
    [2; 4; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
       (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
         "Len_bc")),
    [2; 2; 2; 4; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
       (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
         "Uni_len")),
    [2; 5; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
       (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
         "Uni_len")),
    [2; 2; 2; 5; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_print_symbol
       (Localinput_set_body_block_print_symbol_t.Localinput_set_body_block_print_constructor
         "Len_bc")),
    [2; 6; 42; 1; 22; 1])]
);;

(* Localinput_set_body_block_define *)

let tag_lsb_lbd_sl = List.filter (fun (s, i) -> Localinput_set_body_symbol_v.is_localinput_set_body_block_define_constructor s) tag_lsb_l;;

test_number 2 (
(tag_lsb_lbd_sl :
  Localinput_set_body_symbol_t.localinput_set_body_symbol Tag_t.tag list ) =
  [(Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
       (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
         "Con_bc")),
    [2; 1; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
       (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
         "Ope_len")),
    [2; 2; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
       (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
         "Seg_bc")),
    [2; 3; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
       (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
         "Len_bc")),
    [2; 4; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
       (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
         "Uni_len")),
    [2; 5; 42; 1; 22; 1])]
);;

(* Localinput_set_body_block_print *)

let tag_lsb_lpb_sl = List.filter (fun (s, i) -> Localinput_set_body_symbol_v.is_localinput_set_body_block_print_constructor s) tagiable_external_lsb_l;;

test_number 3 (
(tag_lsb_lbp_sl :
  Localinput_set_body_symbol_t.localinput_set_body_symbol Tag_t.tag list ) =
  [(Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_print_symbol
       (Localinput_set_body_block_print_symbol_t.Localinput_set_body_block_print_constructor
         "Len_bc")),
    [2; 6; 42; 1; 22; 1])]
);;

(* Localinput_set_body_block_variable_external *)

let tag_lsb_lve_sl = List.filter (fun (s, i) -> Localinput_set_body_symbol_v.is_localinput_set_body_block_variable_external_constructor s) tag_lsb_l;;

test_number 4 (
(tag_lsb_lve_sl :
  Localinput_set_body_symbol_t.localinput_set_body_symbol Tag_t.tag list ) =
  [(Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
       (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
         "segment_BC")),
    [2; 2; 2; 1; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
       (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
         "Ope_len")),
    [2; 2; 2; 2; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
       (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
         "Seg_bc")),
    [2; 2; 2; 3; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
       (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
         "Len_bc")),
    [2; 2; 2; 4; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
     (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
       (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
         "Uni_len")),
    [2; 2; 2; 5; 42; 1; 22; 1])]
);;

(* Localinput_set_body_handle *)

let tag_lsb_lbh_sl = List.filter (fun (s, i) -> Localinput_set_body_symbol_v.is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol s) tag_lsb_l;;

test_number 5 (
tag_lsb_lbh_sl :
  Localinput_set_body_symbol_t.localinput_set_body_symbol Tag_t.tag list =
  [(Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Con_bc")))),
    [1; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
       (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
         (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
           "Con_bc"))),
    [2; 2; 1; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Ope_len")))),
    [2; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
       (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_operator_symbol
         (Localinput_set_body_handle_variable_operator_symbol_t.Localinput_set_body_handle_variable_operator_constructor
           "Ope_len"))),
    [2; 2; 2; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Seg_bc")))),
    [3; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
       (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_external_symbol
         (Localinput_set_body_handle_variable_external_symbol_t.Localinput_set_body_handle_variable_external_constructor
           "Seg_bc"))),
    [2; 2; 3; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Len_bc")))),
    [4; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
       (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_target_symbol
         (Localinput_set_body_handle_variable_target_symbol_t.Localinput_set_body_handle_variable_target_constructor
           "Len_bc"))),
    [2; 2; 4; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Uni_len")))),
    [5; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
       (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_external_symbol
         (Localinput_set_body_handle_variable_external_symbol_t.Localinput_set_body_handle_variable_external_constructor
           "Uni_len"))),
    [2; 2; 5; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_tounit_symbol
         (Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
           (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
             "Len_bc")))),
    [6; 42; 1; 22; 1])]
);;

(* Localinput_set_body_handle_command *)

let tag_lsb_lhc_sl = List.filter (fun (s, i) -> Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_symbol_off_localinput_set_body_symbol s) tag_lsb_l;;

test_number 6 (
(tag_lsb_lhc_sl :
  Localinput_set_body_symbol_t.localinput_set_body_symbol Tag_t.tag list ) =
  [(Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Con_bc")))),
    [1; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Ope_len")))),
    [2; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Seg_bc")))),
    [3; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Len_bc")))),
    [4; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Uni_len")))),
    [5; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_tounit_symbol
         (Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
           (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
             "Len_bc")))),
    [6; 42; 1; 22; 1])]
);;

(* Localinput_set_body_handle_command_creation_define *)

let tag_lsb_lcd_sl = List.filter (fun (s, i) -> Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_creation_define_constructor s) tag_lsb_l;;

test_number 7 (
( tag_lsb_lcd_sl :
  Localinput_set_body_symbol_t.localinput_set_body_symbol Tag_t.tag list ) =
  [(Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Con_bc")))),
    [1; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Ope_len")))),
    [2; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Seg_bc")))),
    [3; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Len_bc")))),
    [4; 42; 1; 22; 1]);
   (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
         (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
           (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
             "Uni_len")))),
    [5; 42; 1; 22; 1])]
);;

(* Localinput_set_body_handle_command_tounit_print *)

let tag_lsb_ltp_sl = List.filter (fun (s, i) -> Localinput_set_body_symbol_v.is_localinput_set_body_handle_command_tounit_print_constructor s) tag_lsb_l;;

test_number 8 (
(tag_lsb_ltp_sl :
  Localinput_set_body_symbol_t.localinput_set_body_symbol Tag_t.tag list ) =
  [(Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
     (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
       (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_tounit_symbol
         (Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
           (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
             "Len_bc")))),
    [6; 42; 1; 22; 1])]
);;

test_number 9 (
tag_lsb_l = provide bna_ibo
);;


