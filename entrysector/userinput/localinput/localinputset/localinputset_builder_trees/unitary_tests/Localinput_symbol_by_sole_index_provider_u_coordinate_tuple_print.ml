open Make_test_v;;

testing "Localinput_symbol_by_sole_index_provider_v with
    Localinput_symbol_by_sole_index_provider_u_coordinate_tuple_print.ml";;

(* Deleting Registers *)









(* Tracing *)


(* toplevel 
   #use "Localinput_symbol_by_sole_index_provider_u_coordinate_tuple_print.ml";; 

*)

 (* Input File *)

let nof_inp = "Print_coordinate_tuple_point_t_a.inp";;
let fno_inp = Localinput_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;

let tag_inp_l = Localinput_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

let pre_tag_cup_sof sof (s, i) = (Localinput_symbol_v.input_body_handle_command_tounit_print_constructor sof = s);;

let tag_inp_cpr = List_v.only_element_of_predicate_off_list (pre_tag_cup_sof "Ctc_a")tag_inp_l;;

test_number 1 (
(tag_inp_cpr : Localinput_symbol_t.input_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
          (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
            (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
              "Ctc_a"))))),
   [4; 6; 11])
);;

open Localinput_symbol_by_sole_index_provider_v;;

let soi_any = Tag_v.sole_index_off_tag tag_inp_cpr;;

test_number 2 (
(soi_any : Sole_index_t.sole_index ) = 
[4; 6; 11]
);;

let sym_inp_cpr = provide soi_any;;

test_number 3 (
( sym_inp_cpr : Localinput_symbol_t.input_symbol ) =
 Localinput_symbol_t.Localinput_body_symbol
   (Localinput_body_symbol_t.Localinput_body_handle_symbol
     (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
       (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_tounit_symbol
         (Localinput_body_handle_command_tounit_symbol_t.Localinput_body_handle_command_tounit_print_symbol
           (Localinput_body_handle_command_tounit_print_symbol_t.Localinput_body_handle_command_tounit_print_constructor
             "Ctc_a")))))
);;

