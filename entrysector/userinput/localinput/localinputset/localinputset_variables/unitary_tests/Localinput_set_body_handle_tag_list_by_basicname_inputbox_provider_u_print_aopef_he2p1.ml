open Make_test_v;;

testing "Localinput_set_body_handle_tag_list_by_basicname_inputbox_provider_v with
        Localinput_set_body_handle_tag_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

(* define Con_tw *)
(*        context *)
(*          databox "triangle_w" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Per_tri *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor" ] *)
(*          end -- operator *)
(*        end -- define *)

(* define Tri_w *)
(*        external  *)
(*        type [ "figure" "set" "body" "triangle" "scalene" "acute" ] *)
(*          external_name "W" *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* define Perimeter_w *)
(*        target  *)
(*        type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Per_tri *)
(*          target_operand Tri_w *)
(*          end -- target *)
(*        end -- define *)

(* print Perimeter_w *)
(*       units  *)
(*         length angstrom *)
(*       	end -- units	     *)
(*       end -- print *)

(* stop *)

(* Tracing *)

(* toplevel 
   #use "Localinput_set_body_handle_tag_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";; 

*)

open Localinput_set_body_handle_tag_list_by_basicname_inputbox_provider_v;;

let nam_var_ext = "Per_tri";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;

let nam_ibo = "Print_aopef_he2p1";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let tag_lsb_l = 
    Localinput_set_body_tag_list_by_basicname_inputbox_provider_v.provide 
      bna_ibo;;

let tag_lsb_lbh_l = List.filter 
      (fun (s, i) ->
	Localinput_set_body_symbol_v.is_localinput_set_body_handle_symbol_off_localinput_set_body_symbol s
      )
      tag_lsb_l;;

let tag_lbh_l = List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_set_body_symbol_v.localinput_set_body_handle_symbol_off_localinput_set_body_symbol) 
    tag_lbh_l;;

test_number 1 (
(tag_lbh_l : 
  Localinput_set_body_handle_symbol_t.localinput_set_body_handle_symbol
  Tag_t.tag list ) =
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

let tag_lbh_lhc_sl = List.filter (fun (s, i) -> Localinput_set_body_handle_symbol_v.is_localinput_set_body_handle_command_symbol_off_localinput_set_body_handle_symbol s) tag_lbh_l;;

test_number 2 (
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

test_number 3 (
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

test_number 4 (
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

test_number 5 (
tag_lsb_l = provide bna_ibo
);;


