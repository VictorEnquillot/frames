open Make_test_v;;

testing "Localinput_symbol_by_sole_index_provider_v with
   Localinput_symbol_by_sole_index_provider_u_any.ml";;

(* toplevel 
   #use "Localinput_symbol_by_sole_index_provider_u_any.ml";;

*)

open Localinput_symbol_by_sole_index_provider_v;;

let nam_ibo = "Point_a_print";;

let tag_loc_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loc_BAsl = List.filter 
    (fun (s, i) -> (Localinput_symbol_v.string_off s = "Poi_a") 
	&& (Localinput_symbol_v.is_localinput_body_symbol_off_localinput_symbol s)
    )
    tag_loc_l;;

let tag_loc = List.hd tag_loc_BAsl;;

test_number 1 (
(tag_loc : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_handle_symbol
      (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
        (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
          (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
            (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
              "Poi_a"))))),
   [1; 28; 1; 21; 1])
);;

let soi_any = Tag_v.sole_index_off_tag tag_loc;;
let sym_loi = provide soi_any;;

test_number 2 (
( sym_loi : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_body_symbol
   (Localinput_body_symbol_t.Localinput_body_handle_symbol
     (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
       (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
         (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
           (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
             "Poi_a")))))
);;

