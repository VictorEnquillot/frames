(** {3 Camlline_for_tag_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_tag_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_tag_symbol_t.Camlline_for_tag_datastructure_symbol sym_ftd ->
    Camlline_for_tag_datastructure_symbol_v.name sym_ftd
  | Camlline_for_tag_symbol_t.Camlline_for_tag_uno_symbol sym_ftu ->
    Camlline_for_tag_uno_symbol_v.name sym_ftu
  | Camlline_for_tag_symbol_t.Camlline_for_tag_duo_symbol sym_ftd ->
    Camlline_for_tag_duo_symbol_v.name sym_ftd
  | Camlline_for_tag_symbol_t.Camlline_for_tag_trio_symbol sym_ftt ->
    Camlline_for_tag_trio_symbol_v.name sym_ftt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_tag_symbol_t.Camlline_for_tag_datastructure_symbol sym_ftd ->
  Camlline_for_tag_datastructure_symbol_v.string_off sym_ftd
  | Camlline_for_tag_symbol_t.Camlline_for_tag_uno_symbol sym_ftu ->
  Camlline_for_tag_uno_symbol_v.string_off sym_ftu
  | Camlline_for_tag_symbol_t.Camlline_for_tag_duo_symbol sym_ftd ->
  Camlline_for_tag_duo_symbol_v.string_off sym_ftd
  | Camlline_for_tag_symbol_t.Camlline_for_tag_trio_symbol sym_ftt ->
  Camlline_for_tag_trio_symbol_v.string_off sym_ftt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cft =
  Format.sprintf "Camlline_for_tag_symbol_t.%s" (String.capitalize (name sym_cft))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cft =
  Format.sprintf "%s \"%s\"" (longname sym_cft) (string_off sym_cft)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol = function
  | Camlline_for_tag_symbol_t.Camlline_for_tag_datastructure_symbol sym_ftd -> sym_ftd
  | sym_cft -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol"
      "Camlline_for_tag_datastructure_symbol"
      (name sym_cft) "check"
;;

let camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol = function
  | Camlline_for_tag_symbol_t.Camlline_for_tag_uno_symbol sym_ftu -> sym_ftu
  | sym_cft -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol"
      "Camlline_for_tag_uno_symbol"
      (name sym_cft) "check"
;;

let camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol = function
  | Camlline_for_tag_symbol_t.Camlline_for_tag_duo_symbol sym_ftd -> sym_ftd
  | sym_cft -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol"
      "Camlline_for_tag_duo_symbol"
      (name sym_cft) "check"
;;

let camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol = function
  | Camlline_for_tag_symbol_t.Camlline_for_tag_trio_symbol sym_ftt -> sym_ftt
  | sym_cft -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol"
      "Camlline_for_tag_trio_symbol"
      (name sym_cft) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftu = camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_uno_symbol_v.camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_uno_symbol sym_ftu
;;

let camlline_for_tag_uno_top_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftu = camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_uno_symbol_v.camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu
;;

let camlline_for_tag_duo_current_top_symbol_off_camlline_for_tag_symbol sym_cft = 
  let sym_ftd = camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft in
    Camlline_for_tag_duo_symbol_v.camlline_for_tag_duo_current_top_symbol_off_camlline_for_tag_duo_symbol sym_ftd
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol = function
  | Camlline_for_tag_symbol_t.Camlline_for_tag_datastructure_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol = function
  | Camlline_for_tag_symbol_t.Camlline_for_tag_uno_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol = function
  | Camlline_for_tag_symbol_t.Camlline_for_tag_duo_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol = function
  | Camlline_for_tag_symbol_t.Camlline_for_tag_trio_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_lpar_a_tag_rpar sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_datastructure_symbol_v.is_lpar_a_tag_rpar sym_ftd
    end
;;

let is_lpar_a_b_tag_rpar sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_datastructure_symbol_v.is_lpar_a_b_tag_rpar sym_ftd
    end
;;

let is_let_map_equal_das_vdot_map sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_datastructure_symbol_v.is_let_map_equal_das_vdot_map sym_ftd
    end
;;

let is_let_map2_equal_das_vdot_map2 sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_datastructure_symbol_v.is_let_map2_equal_das_vdot_map2 sym_ftd
    end
;;

let is_let_iter_equal_das_vdot_iter sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_datastructure_symbol_v.is_let_iter_equal_das_vdot_iter sym_ftd
    end
;;

let is_let_iter2_equal_das_vdot_iter2 sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_datastructure_symbol_v.is_let_iter2_equal_das_vdot_iter2 sym_ftd
    end
;;

let is_das_vdot_make_tag_a sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_datastructure_symbol_v.is_das_vdot_make_tag_a sym_ftd
    end
;;

let is_das_vdot_make_tag_a_tag_b sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_datastructure_symbol_v.is_das_vdot_make_tag_a_tag_b sym_ftd
    end
;;

let is_das_vdot_make_tag_a_tag_b_tag_c sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_datastructure_symbol_v.is_das_vdot_make_tag_a_tag_b_tag_c sym_ftd
    end
;;

let is_camlline_for_tag_datastructure_function_name sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_datastructure_symbol_v.is_camlline_for_tag_datastructure_function_name sym_ftd
    end
;;

let is_type_et_tag_equal_et_symbol_tdot_et_symbol_tag sym_cft =
  if not (is_camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftu = camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_uno_symbol_v.is_type_et_tag_equal_et_symbol_tdot_et_symbol_tag sym_ftu
    end
;;

let is_let_make_soi_at_nam_at_s_equal sym_cft =
  if not (is_camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftu = camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_uno_symbol_v.is_let_make_soi_at_nam_at_s_equal sym_ftu
    end
;;

let is_let_make_sym_at_soi_at_equal sym_cft =
  if not (is_camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftu = camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_uno_symbol_v.is_let_make_sym_at_soi_at_equal sym_ftu
    end
;;

let is_let_name_tag_at_equal sym_cft =
  if not (is_camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftu = camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_uno_symbol_v.is_let_name_tag_at_equal sym_ftu
    end
;;

let is_tag_vdot_make_sym_at_soi_at sym_cft =
  if not (is_camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftu = camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_uno_symbol_v.is_tag_vdot_make_sym_at_soi_at sym_ftu
    end
;;

let is_tag_vdot_name_et_symbol_vdot_name_tag_at sym_cft =
  if not (is_camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftu = camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_uno_symbol_v.is_tag_vdot_name_et_symbol_vdot_name_tag_at sym_ftu
    end
;;

let is_let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in sym_cft =
  if not (is_camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_duo_symbol_v.is_let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in sym_ftd
    end
;;

let is_tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at sym_cft =
  if not (is_camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_duo_symbol_v.is_tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at sym_ftd
    end
;;

let is_tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac sym_cft =
  if not (is_camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_duo_symbol_v.is_tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac sym_ftd
    end
;;

let is_tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at sym_cft =
  if not (is_camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftd = camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_duo_symbol_v.is_tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at sym_ftd
    end
;;

let is_lpar_a_b_c_tag_rpar sym_cft =
  if not (is_camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftt = camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_trio_symbol_v.is_lpar_a_b_c_tag_rpar sym_ftt
    end
;;

let is_lpar_a_b_c_tag_rpar_tree_footed_capped sym_cft =
  if not (is_camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftt = camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_trio_symbol_v.is_lpar_a_b_c_tag_rpar_tree_footed_capped sym_ftt
    end
;;

let is_lpar_a_b_c_tag_rpar_tree_leafed_capped sym_cft =
  if not (is_camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftt = camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_trio_symbol_v.is_lpar_a_b_c_tag_rpar_tree_leafed_capped sym_ftt
    end
;;

let is_lpar_a_b_c_tag_rpar_triplet sym_cft =
  if not (is_camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftt = camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_trio_symbol_v.is_lpar_a_b_c_tag_rpar_triplet sym_ftt
    end
;;

let is_lpar_a_b_c_tag_rpar_triplet_list sym_cft =
  if not (is_camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
      let sym_ftt = camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft in
      Camlline_for_tag_trio_symbol_v.is_lpar_a_b_c_tag_rpar_triplet_list sym_ftt
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_datastructure_symbol_v.is_camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
    end
;;

let is_camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_datastructure_symbol_v.is_camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
    end
;;

let is_camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_datastructure_symbol_v.is_camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
    end
;;

let is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_datastructure_symbol_v.is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
    end
;;

let is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_datastructure_symbol_v.is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
    end
;;

let is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_datastructure_symbol_v.is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
    end
;;

let is_camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_datastructure_symbol_v.is_camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
    end
;;

let is_camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_datastructure_symbol_v.is_camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
    end
;;

let is_camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftd = camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_datastructure_symbol_v.is_camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_symbol sym_ftd
    end
;;

let is_camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftu = camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_uno_symbol_v.is_camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_uno_symbol sym_ftu
    end
;;

let is_camlline_for_tag_uno_top_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftu = camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_uno_symbol_v.is_camlline_for_tag_uno_top_symbol_off_camlline_for_tag_uno_symbol sym_ftu
    end
;;

let is_camlline_for_tag_duo_current_top_symbol_off_camlline_for_tag_symbol sym_cft =
  if not (is_camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft)
  then false
  else
    begin
  let sym_ftd = camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft in
  Camlline_for_tag_duo_symbol_v.is_camlline_for_tag_duo_current_top_symbol_off_camlline_for_tag_duo_symbol sym_ftd
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd = 
  Camlline_for_tag_symbol_t.Camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol sym_ftu = 
  Camlline_for_tag_symbol_t.Camlline_for_tag_uno_symbol sym_ftu
;;

let camlline_for_tag_symbol_of_camlline_for_tag_duo_symbol sym_ftd = 
  Camlline_for_tag_symbol_t.Camlline_for_tag_duo_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_trio_symbol sym_ftt = 
  Camlline_for_tag_symbol_t.Camlline_for_tag_trio_symbol sym_ftt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlline_for_tag_symbol_of_camlline_for_tag_datastructure_camltype_symbol sym_tdc = 
  let sym_ftd = Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_symbol sym_tdc in
    camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu = 
  let sym_ftd = Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu in
    camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd = 
  let sym_ftd = Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd in
    camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_symbol sym_tdf = 
  let sym_ftd = Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_symbol sym_tdf in
    camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_iter_symbol sym_dfi = 
  let sym_ftd = Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_iter_symbol sym_dfi in
    camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_make_symbol sym_dfm = 
  let sym_ftd = Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_make_symbol sym_dfm in
    camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu = 
  let sym_ftd = Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu in
    camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd = 
  let sym_ftd = Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd in
    camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt = 
  let sym_ftd = Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt in
    camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd
;;

let camlline_for_tag_symbol_of_camlline_for_tag_uno_camltype_symbol sym_tuc = 
  let sym_ftu = Camlline_for_tag_uno_symbol_v.camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_camltype_symbol sym_tuc in
    camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol sym_ftu
;;

let camlline_for_tag_symbol_of_camlline_for_tag_uno_top_symbol sym_tut = 
  let sym_ftu = Camlline_for_tag_uno_symbol_v.camlline_for_tag_uno_symbol_of_camlline_for_tag_uno_top_symbol sym_tut in
    camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol sym_ftu
;;

let camlline_for_tag_symbol_of_camlline_for_tag_duo_current_top_symbol sym_dct = 
  let sym_ftd = Camlline_for_tag_duo_symbol_v.camlline_for_tag_duo_symbol_of_camlline_for_tag_duo_current_top_symbol sym_dct in
    camlline_for_tag_symbol_of_camlline_for_tag_duo_symbol sym_ftd
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let lpar_a_tag_rpar = camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol Camlline_for_tag_datastructure_symbol_v.lpar_a_tag_rpar;;

let lpar_a_b_tag_rpar = camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol Camlline_for_tag_datastructure_symbol_v.lpar_a_b_tag_rpar;;

let let_map_equal_das_vdot_map = camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol Camlline_for_tag_datastructure_symbol_v.let_map_equal_das_vdot_map;;

let let_map2_equal_das_vdot_map2 = camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol Camlline_for_tag_datastructure_symbol_v.let_map2_equal_das_vdot_map2;;

let let_iter_equal_das_vdot_iter = camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol Camlline_for_tag_datastructure_symbol_v.let_iter_equal_das_vdot_iter;;

let let_iter2_equal_das_vdot_iter2 = camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol Camlline_for_tag_datastructure_symbol_v.let_iter2_equal_das_vdot_iter2;;

let das_vdot_make_tag_a = camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol Camlline_for_tag_datastructure_symbol_v.das_vdot_make_tag_a;;

let das_vdot_make_tag_a_tag_b = camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol Camlline_for_tag_datastructure_symbol_v.das_vdot_make_tag_a_tag_b;;

let das_vdot_make_tag_a_tag_b_tag_c = camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol Camlline_for_tag_datastructure_symbol_v.das_vdot_make_tag_a_tag_b_tag_c;;

let camlline_for_tag_datastructure_function_name = camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol Camlline_for_tag_datastructure_symbol_v.camlline_for_tag_datastructure_function_name;;

let type_et_tag_equal_et_symbol_tdot_et_symbol_tag = camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol Camlline_for_tag_uno_symbol_v.type_et_tag_equal_et_symbol_tdot_et_symbol_tag;;

let let_make_soi_at_nam_at_s_equal = camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol Camlline_for_tag_uno_symbol_v.let_make_soi_at_nam_at_s_equal;;

let let_make_sym_at_soi_at_equal = camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol Camlline_for_tag_uno_symbol_v.let_make_sym_at_soi_at_equal;;

let let_name_tag_at_equal = camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol Camlline_for_tag_uno_symbol_v.let_name_tag_at_equal;;

let tag_vdot_make_sym_at_soi_at = camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol Camlline_for_tag_uno_symbol_v.tag_vdot_make_sym_at_soi_at;;

let tag_vdot_name_et_symbol_vdot_name_tag_at = camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol Camlline_for_tag_uno_symbol_v.tag_vdot_name_et_symbol_vdot_name_tag_at;;

let let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in = camlline_for_tag_symbol_of_camlline_for_tag_duo_symbol Camlline_for_tag_duo_symbol_v.let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in;;

let tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at = camlline_for_tag_symbol_of_camlline_for_tag_duo_symbol Camlline_for_tag_duo_symbol_v.tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at;;

let tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac = camlline_for_tag_symbol_of_camlline_for_tag_duo_symbol Camlline_for_tag_duo_symbol_v.tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac;;

let tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at = camlline_for_tag_symbol_of_camlline_for_tag_duo_symbol Camlline_for_tag_duo_symbol_v.tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at;;

let lpar_a_b_c_tag_rpar = camlline_for_tag_symbol_of_camlline_for_tag_trio_symbol Camlline_for_tag_trio_symbol_v.lpar_a_b_c_tag_rpar;;

let lpar_a_b_c_tag_rpar_tree_footed_capped = camlline_for_tag_symbol_of_camlline_for_tag_trio_symbol Camlline_for_tag_trio_symbol_v.lpar_a_b_c_tag_rpar_tree_footed_capped;;

let lpar_a_b_c_tag_rpar_tree_leafed_capped = camlline_for_tag_symbol_of_camlline_for_tag_trio_symbol Camlline_for_tag_trio_symbol_v.lpar_a_b_c_tag_rpar_tree_leafed_capped;;

let lpar_a_b_c_tag_rpar_triplet = camlline_for_tag_symbol_of_camlline_for_tag_trio_symbol Camlline_for_tag_trio_symbol_v.lpar_a_b_c_tag_rpar_triplet;;

let lpar_a_b_c_tag_rpar_triplet_list = camlline_for_tag_symbol_of_camlline_for_tag_trio_symbol Camlline_for_tag_trio_symbol_v.lpar_a_b_c_tag_rpar_triplet_list;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_tag_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_tag_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol
      (Camlline_for_tag_datastructure_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_datastructure_symbol:Camlline_for_tag_datastructure_symbol_v:make" ->
  try camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol
      (Camlline_for_tag_uno_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_uno_symbol:Camlline_for_tag_uno_symbol_v:make" ->
  try camlline_for_tag_symbol_of_camlline_for_tag_duo_symbol
      (Camlline_for_tag_duo_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_duo_symbol:Camlline_for_tag_duo_symbol_v:make" ->
  try camlline_for_tag_symbol_of_camlline_for_tag_trio_symbol
      (Camlline_for_tag_trio_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_trio_symbol:Camlline_for_tag_trio_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_tag_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_tag_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_tag_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_tag_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_tag subtype" nam s)
      "it does not exists"
      "Check file camlline_for_tag_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_tag_symbol:Camlline_for_tag_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_tag implementation_for_symbol symbol at 9:15 6 May 2013. *)



