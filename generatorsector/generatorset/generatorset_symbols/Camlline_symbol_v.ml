(** {3 Camlline_symbol_v} *)

(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_symbol_t.Camlline_constant_symbol sym_cac ->
    Camlline_constant_symbol_v.name sym_cac
  | Camlline_symbol_t.Camlline_for_any_symbol sym_cfa ->
    Camlline_for_any_symbol_v.name sym_cfa
  | Camlline_symbol_t.Camlline_for_formula_symbol sym_cff ->
    Camlline_for_formula_symbol_v.name sym_cff
  | Camlline_symbol_t.Camlline_for_symbol_symbol sym_cfs ->
    Camlline_for_symbol_symbol_v.name sym_cfs
  | Camlline_symbol_t.Camlline_for_tag_symbol sym_cft ->
    Camlline_for_tag_symbol_v.name sym_cft
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_symbol_t.Camlline_constant_symbol sym_cac ->
  Camlline_constant_symbol_v.string_off sym_cac
  | Camlline_symbol_t.Camlline_for_any_symbol sym_cfa ->
  Camlline_for_any_symbol_v.string_off sym_cfa
  | Camlline_symbol_t.Camlline_for_formula_symbol sym_cff ->
  Camlline_for_formula_symbol_v.string_off sym_cff
  | Camlline_symbol_t.Camlline_for_symbol_symbol sym_cfs ->
  Camlline_for_symbol_symbol_v.string_off sym_cfs
  | Camlline_symbol_t.Camlline_for_tag_symbol sym_cft ->
  Camlline_for_tag_symbol_v.string_off sym_cft
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cam =
  Format.sprintf "Camlline_symbol_t.%s" (String.capitalize (name sym_cam))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cam =
  Format.sprintf "%s \"%s\"" (longname sym_cam) (string_off sym_cam)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_constant_symbol_off_camlline_symbol = function
  | Camlline_symbol_t.Camlline_constant_symbol sym_cac -> sym_cac
  | sym_cam -> Error_messages_v.print_fatal_error
      nam_cod "camlline_constant_symbol_off_camlline_symbol"
      "Camlline_constant_symbol"
      (name sym_cam) "check"
;;

let camlline_for_any_symbol_off_camlline_symbol = function
  | Camlline_symbol_t.Camlline_for_any_symbol sym_cfa -> sym_cfa
  | sym_cam -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_any_symbol_off_camlline_symbol"
      "Camlline_for_any_symbol"
      (name sym_cam) "check"
;;

let camlline_for_formula_symbol_off_camlline_symbol = function
  | Camlline_symbol_t.Camlline_for_formula_symbol sym_cff -> sym_cff
  | sym_cam -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_symbol_off_camlline_symbol"
      "Camlline_for_formula_symbol"
      (name sym_cam) "check"
;;

let camlline_for_symbol_symbol_off_camlline_symbol = function
  | Camlline_symbol_t.Camlline_for_symbol_symbol sym_cfs -> sym_cfs
  | sym_cam -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_symbol_off_camlline_symbol"
      "Camlline_for_symbol_symbol"
      (name sym_cam) "check"
;;

let camlline_for_tag_symbol_off_camlline_symbol = function
  | Camlline_symbol_t.Camlline_for_tag_symbol sym_cft -> sym_cft
  | sym_cam -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_symbol_off_camlline_symbol"
      "Camlline_for_tag_symbol"
      (name sym_cam) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlline_constant_function_symbol_off_camlline_symbol sym_cam = 
  let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
    Camlline_constant_symbol_v.camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac
;;

let camlline_constant_pervasive_symbol_off_camlline_symbol sym_cam = 
  let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
    Camlline_constant_symbol_v.camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac
;;

let camlline_for_any_duo_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_duo_current_son_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_duo_current_son_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_duo_current_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_duo_current_top_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_duo_datastructure_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_duo_son_top_bare_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_duo_top_main_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_duo_top_main_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_uno_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_uno_camlfile_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_uno_camltype_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_uno_camltype_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_uno_camltype_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_uno_son_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_uno_son_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_uno_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_uno_top_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_trio_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_trio_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_any_trio_current_son_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
    Camlline_for_any_symbol_v.camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_symbol sym_cfa
;;

let camlline_for_formula_datastructure_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_datastructure_uno_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_datastructure_duo_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_datastructure_trio_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_builder_data_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_localset_builder_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_localset_data_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_localset_data_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_main_builder_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_main_data_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_son_builder_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_son_data_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_son_main_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_son_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_top_builder_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_top_data_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_duo_top_main_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_trio_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_trio_son_top_builder_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_trio_son_top_data_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_trio_top_builder_data_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_trio_top_main_builder_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_uno_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_uno_builder_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_uno_data_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_uno_data_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_uno_main_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_uno_main_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_uno_son_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_uno_son_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_formula_uno_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
    Camlline_for_formula_symbol_v.camlline_for_formula_uno_top_symbol_off_camlline_for_formula_symbol sym_cff
;;

let camlline_for_symbol_duo_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_duo_current_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_duo_current_top_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_duo_son_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_duo_son_top_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_uno_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_uno_builder_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_uno_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_uno_son_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_uno_son_bare_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_symbol_uno_current_symbol_off_camlline_symbol sym_cam = 
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
    Camlline_for_symbol_symbol_v.camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_symbol sym_cfs
;;

let camlline_for_tag_datastructure_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_datastructure_camltype_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_datastructure_function_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_datastructure_function_iter_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_datastructure_function_make_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_uno_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_uno_camltype_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_uno_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_uno_top_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_duo_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_duo_current_top_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_duo_current_top_symbol_off_camlline_for_tag_symbol sym_cft
;;

let camlline_for_tag_trio_symbol_off_camlline_symbol sym_cam = 
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
    Camlline_for_tag_symbol_v.camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_constant_symbol_off_camlline_symbol = function
  | Camlline_symbol_t.Camlline_constant_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_any_symbol_off_camlline_symbol = function
  | Camlline_symbol_t.Camlline_for_any_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_symbol_off_camlline_symbol = function
  | Camlline_symbol_t.Camlline_for_formula_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_symbol_symbol_off_camlline_symbol = function
  | Camlline_symbol_t.Camlline_for_symbol_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_tag_symbol_off_camlline_symbol = function
  | Camlline_symbol_t.Camlline_for_tag_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_count_equal_zero sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_count_equal_zero sym_cac
    end
;;

let is_let_count_increment_in sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_count_increment_in sym_cac
    end
;;

let is_let_documentation_unit_equal sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_documentation_unit_equal sym_cac
    end
;;

let is_let_longname_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_longname_equal_function sym_cac
    end
;;

let is_let_make_argument_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_make_argument_equal_function sym_cac
    end
;;

let is_let_make_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_make_equal_function sym_cac
    end
;;

let is_let_make_equal_tag_vdot_make_double_semicolon sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_make_equal_tag_vdot_make_double_semicolon sym_cac
    end
;;

let is_let_make_nam_s_equal sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_make_nam_s_equal sym_cac
    end
;;

let is_let_make_of_topson_bare_nam_equal sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_make_of_topson_bare_nam_equal sym_cac
    end
;;

let is_let_make_of_topson_notleaf_nam_s_equal sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_make_of_topson_notleaf_nam_s_equal sym_cac
    end
;;

let is_let_make_of_topson_ofstring_nam_s_equal sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_make_of_topson_ofstring_nam_s_equal sym_cac
    end
;;

let is_let_map_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_map_equal_function sym_cac
    end
;;

let is_let_nam_cod_equal sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_nam_cod_equal sym_cac
    end
;;

let is_let_nam_low_equal_string_lowercase_nam_in sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_nam_low_equal_string_lowercase_nam_in sym_cac
    end
;;

let is_let_name_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_name_equal_function sym_cac
    end
;;

let is_let_name_of_topson_bare_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_name_of_topson_bare_equal_function sym_cac
    end
;;

let is_let_name_of_topson_notleaf_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_name_of_topson_notleaf_equal_function sym_cac
    end
;;

let is_let_name_of_topson_ofstring_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_name_of_topson_ofstring_equal_function sym_cac
    end
;;

let is_let_print_ppf_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_print_ppf_equal_function sym_cac
    end
;;

let is_let_print_ppf_str_equal sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_print_ppf_str_equal sym_cac
    end
;;

let is_let_string_off_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_string_off_equal_function sym_cac
    end
;;

let is_let_string_off_of_topson_bare_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_string_off_of_topson_bare_equal_function sym_cac
    end
;;

let is_let_string_off_of_topson_notleaf_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_string_off_of_topson_notleaf_equal_function sym_cac
    end
;;

let is_let_string_off_of_topson_ofstring_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_string_off_of_topson_ofstring_equal_function sym_cac
    end
;;

let is_let_symbol_of_formula_equal_function sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_let_symbol_of_formula_equal_function sym_cac
    end
;;

let is_match_nam_low_with sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_match_nam_low_with sym_cac
    end
;;

let is_pipe_print_fatal_error_make_4_lines sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_pipe_print_fatal_error_make_4_lines sym_cac
    end
;;

let is_pipe_underscore_arrow sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_pipe_underscore_arrow sym_cac
    end
;;

let is_pipe_underscore_arrow_false sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_pipe_underscore_arrow_false sym_cac
    end
;;

let is_pipe_underscore_arrow_true sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_pipe_underscore_arrow_true sym_cac
    end
;;

let is_double_quote_example sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_double_quote_example sym_cac
    end
;;

let is_double_quote_how_is_it_done sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_double_quote_how_is_it_done sym_cac
    end
;;

let is_double_quote_needed sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_double_quote_needed sym_cac
    end
;;

let is_double_quote_needs sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_double_quote_needs sym_cac
    end
;;

let is_double_quote_what_is_it sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_double_quote_what_is_it sym_cac
    end
;;

let is_map sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_map sym_cac
    end
;;

let is_sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index sym_cac
    end
;;

let is_try_make_of_topson_bare_nam sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_try_make_of_topson_bare_nam sym_cac
    end
;;

let is_try_make_of_topson_notleaf_nam_s sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_try_make_of_topson_notleaf_nam_s sym_cac
    end
;;

let is_try_make_of_topson_ofstring_nam_s sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_try_make_of_topson_ofstring_nam_s sym_cac
    end
;;

let is_basic_type sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_basic_type sym_cac
    end
;;

let is_begin_line sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_begin_line sym_cac
    end
;;

let is_bracket_left sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_bracket_left sym_cac
    end
;;

let is_bracket_right sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_bracket_right sym_cac
    end
;;

let is_curly_bracket_left sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_curly_bracket_left sym_cac
    end
;;

let is_curly_bracket_right sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_curly_bracket_right sym_cac
    end
;;

let is_double_semicolon sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_double_semicolon sym_cac
    end
;;

let is_else_line sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_else_line sym_cac
    end
;;

let is_empty_line sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_empty_line sym_cac
    end
;;

let is_end_line sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_end_line sym_cac
    end
;;

let is_item_title sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_item_title sym_cac
    end
;;

let is_parenthesis_left sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_parenthesis_left sym_cac
    end
;;

let is_parenthesis_right sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_parenthesis_right sym_cac
    end
;;

let is_semicolon sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_semicolon sym_cac
    end
;;

let is_then_false sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
      Camlline_constant_symbol_v.is_then_false sym_cac
    end
;;

let is_es_any_vdot_ec_any_off_es_any_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_es_any_vdot_ec_any_off_es_any_ac_as sym_cfa
    end
;;

let is_es_any_vdot_is_ec_any_off_es_any_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_es_any_vdot_is_ec_any_off_es_any_ac_as sym_cfa
    end
;;

let is_es_any_vdot_is_ec_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_es_any_vdot_is_ec_ac_as sym_cfa
    end
;;

let is_let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in sym_cfa
    end
;;

let is_let_et_any_of_ec_any_ac_ac_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_et_any_of_ec_any_ac_ac_equal sym_cfa
    end
;;

let is_let_ec_any_off_et_any_ac_at_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_ec_any_off_et_any_ac_at_equal sym_cfa
    end
;;

let is_let_is_ec_any_off_et_any_ac_at_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_is_ec_any_off_et_any_ac_at_equal sym_cfa
    end
;;

let is_let_is_ec_ac_at_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_is_ec_ac_at_equal sym_cfa
    end
;;

let is_pipe_a_b_datastructure_of_a_b_datastructure sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_a_b_datastructure_of_a_b_datastructure sym_cfa
    end
;;

let is_et_any_tdot_es sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_et_any_tdot_es sym_cfa
    end
;;

let is_pipe_et_any_tdot_es sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_et_any_tdot_es sym_cfa
    end
;;

let is_pipe_et_any_tdot_es_arrow_true sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_et_any_tdot_es_arrow_true sym_cfa
    end
;;

let is_et_any_tdot_es_sarg sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_et_any_tdot_es_sarg sym_cfa
    end
;;

let is_pipe_et_any_tdot_es_underscore_arrow_true sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_et_any_tdot_es_underscore_arrow_true sym_cfa
    end
;;

let is_et_any_tdot_es_any sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_et_any_tdot_es_any sym_cfa
    end
;;

let is_if_not_is_es_any_off_et_any_ac_at sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_if_not_is_es_any_off_et_any_ac_at sym_cfa
    end
;;

let is_let_ac_as_equal_es_any_off_et_any_ac_at_in sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_ac_as_equal_es_any_off_et_any_ac_at_in sym_cfa
    end
;;

let is_let_es_any_off_et_any_equal_function sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_es_any_off_et_any_equal_function sym_cfa
    end
;;

let is_let_et_any_of_es_any_ac_as_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_et_any_of_es_any_ac_as_equal sym_cfa
    end
;;

let is_let_is_es_any_off_et_any_equal_function sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_is_es_any_off_et_any_equal_function sym_cfa
    end
;;

let is_pipe_et_any_tdot_es_any_ac_as_arrow sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_et_any_tdot_es_any_ac_as_arrow sym_cfa
    end
;;

let is_pipe_et_any_tdot_es_any_ac_as_arrow_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_et_any_tdot_es_any_ac_as_arrow_ac_as sym_cfa
    end
;;

let is_pipe_et_any_tdot_es_any_arrow sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_et_any_tdot_es_any_arrow sym_cfa
    end
;;

let is_pipe_et_any_tdot_es_any_underscore_arrow_true sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_et_any_tdot_es_any_underscore_arrow_true sym_cfa
    end
;;

let is_pipe_print_fatal_error_es_any_off_et_any_4_lines sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_print_fatal_error_es_any_off_et_any_4_lines sym_cfa
    end
;;

let is_et_any_of_es_any_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_et_any_of_es_any_ac_as sym_cfa
    end
;;

let is_et_any_tdot_es_any_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_et_any_tdot_es_any_ac_as sym_cfa
    end
;;

let is_let_build_n_store_sym_at_soi_am_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_build_n_store_sym_at_soi_am_equal sym_cfa
    end
;;

let is_let_make_sym_at_soi_am_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_make_sym_at_soi_am_equal sym_cfa
    end
;;

let is_let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_cfa
    end
;;

let is_make_sym_at_soi_am sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_make_sym_at_soi_am sym_cfa
    end
;;

let is_camlfile_title sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_camlfile_title sym_cfa
    end
;;

let is_ending sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_ending sym_cfa
    end
;;

let is_pipe_es sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_es sym_cfa
    end
;;

let is_pipe_es_any_constructor_of_es_any_tdot_es_any sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_es_any_constructor_of_es_any_tdot_es_any sym_cfa
    end
;;

let is_pipe_es_constructor_of_string sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_es_constructor_of_string sym_cfa
    end
;;

let is_pipe_et_any_constructor_of_et_any_tdot_et_any sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_et_any_constructor_of_et_any_tdot_et_any sym_cfa
    end
;;

let is_type_et_any_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_type_et_any_equal sym_cfa
    end
;;

let is_type_et_any_equal_et sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_type_et_any_equal_et sym_cfa
    end
;;

let is_type_et_any_equal_private sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_type_et_any_equal_private sym_cfa
    end
;;

let is_comment_es_comment sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_comment_es_comment sym_cfa
    end
;;

let is_es_any_vdot_fullname_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_es_any_vdot_fullname_ac_as sym_cfa
    end
;;

let is_es_any_vdot_longname_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_es_any_vdot_longname_ac_as sym_cfa
    end
;;

let is_es_any_vdot_make_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_es_any_vdot_make_ac_as sym_cfa
    end
;;

let is_es_any_vdot_name_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_es_any_vdot_name_ac_as sym_cfa
    end
;;

let is_es_any_vdot_string_off_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_es_any_vdot_string_off_ac_as sym_cfa
    end
;;

let is_format_sprintf_fullname_ac_as_string_off_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_format_sprintf_fullname_ac_as_string_off_ac_as sym_cfa
    end
;;

let is_format_sprintf_longname_es_tdot_string_capitalize_name_ac_as sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_format_sprintf_longname_es_tdot_string_capitalize_name_ac_as sym_cfa
    end
;;

let is_let_is_es_any_equal_function sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_is_es_any_equal_function sym_cfa
    end
;;

let is_let_is_es_equal_function sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_is_es_equal_function sym_cfa
    end
;;

let is_pipe_datastructure_ac_as_arrow sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_pipe_datastructure_ac_as_arrow sym_cfa
    end
;;

let is_format_sprintf_doublequote_et_any_tdot_percents_doublequote sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_format_sprintf_doublequote_et_any_tdot_percents_doublequote sym_cfa
    end
;;

let is_let_fullname_ac_at_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_fullname_ac_at_equal sym_cfa
    end
;;

let is_let_longname_ac_at_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_longname_ac_at_equal sym_cfa
    end
;;

let is_let_name_ac_at_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_name_ac_at_equal sym_cfa
    end
;;

let is_let_retrieve_tag_top_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_retrieve_tag_top_equal sym_cfa
    end
;;

let is_let_string_off_ac_at_equal sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_string_off_ac_at_equal sym_cfa
    end
;;

let is_lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar sym_cfa
    end
;;

let is_double_quote_current sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_double_quote_current sym_cfa
    end
;;

let is_sprintf_for_any_fullname sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_sprintf_for_any_fullname sym_cfa
    end
;;

let is_sprintf_for_any_longname sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_sprintf_for_any_longname sym_cfa
    end
;;

let is_try_name_of_topson_bare sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_try_name_of_topson_bare sym_cfa
    end
;;

let is_try_name_of_topson_notleaf sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_try_name_of_topson_notleaf sym_cfa
    end
;;

let is_try_name_of_topson_ofstring sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_try_name_of_topson_ofstring sym_cfa
    end
;;

let is_try_string_off_of_topson_bare sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_try_string_off_of_topson_bare sym_cfa
    end
;;

let is_try_string_off_of_topson_notleaf sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_try_string_off_of_topson_notleaf sym_cfa
    end
;;

let is_try_string_off_of_topson_ofstring sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_try_string_off_of_topson_ofstring sym_cfa
    end
;;

let is_let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any sym_cfa
    end
;;

let is_let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
      Camlline_for_any_symbol_v.is_let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg sym_cfa
    end
;;

let is_das_vdot_name_nam_a_for_at sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_das_vdot_name_nam_a_for_at sym_cff
    end
;;

let is_das_vdot_name_nam_a_nam_b_for_at sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_das_vdot_name_nam_a_nam_b_for_at sym_cff
    end
;;

let is_das_vdot_name_nam_a_nam_b_nam_c_for_at sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_das_vdot_name_nam_a_nam_b_nam_c_for_at sym_cff
    end
;;

let is_eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in sym_cff
    end
;;

let is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_cff
    end
;;

let is_list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon sym_cff
    end
;;

let is_one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in sym_cff
    end
;;

let is_one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in sym_cff
    end
;;

let is_es_formula_vdot_eb_tag_list_off_es_formula_for_as sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_es_formula_vdot_eb_tag_list_off_es_formula_for_as sym_cff
    end
;;

let is_pipe_es_constructor_of_eb_tag_tdot_eb_tag_list sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_pipe_es_constructor_of_eb_tag_tdot_eb_tag_list sym_cff
    end
;;

let is_pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list sym_cff
    end
;;

let is_es_formula_vdot_ed_tag_list_off_es_formula_for_as sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_es_formula_vdot_ed_tag_list_off_es_formula_for_as sym_cff
    end
;;

let is_pipe_es_constructor_of_ed_tag_tdot_ed_tag_list sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_pipe_es_constructor_of_ed_tag_tdot_ed_tag_list sym_cff
    end
;;

let is_pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list sym_cff
    end
;;

let is_lpar_es_formula_vdot_make_sym_as_soi_am_rpar sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_lpar_es_formula_vdot_make_sym_as_soi_am_rpar sym_cff
    end
;;

let is_et_formula_tdot_es_formula sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_et_formula_tdot_es_formula sym_cff
    end
;;

let is_pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow sym_cff
    end
;;

let is_pipe_et_formula_tdot_es_underscore_arrow sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_pipe_et_formula_tdot_es_underscore_arrow sym_cff
    end
;;

let is_et_formula_tdot_es_for_das sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_et_formula_tdot_es_for_das sym_cff
    end
;;

let is_let_nam_as_equal_es_tag_vdot_name_for_at_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_nam_as_equal_es_tag_vdot_name_for_at_in sym_cff
    end
;;

let is_let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in sym_cff
    end
;;

let is_eb_tag_list_off_et_formula_for_at sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_eb_tag_list_off_et_formula_for_at sym_cff
    end
;;

let is_let_eb_tag_list_off_et_formula_equal_function sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_eb_tag_list_off_et_formula_equal_function sym_cff
    end
;;

let is_let_eb_tag_list_off_et_tag_tag_at_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_eb_tag_list_off_et_tag_tag_at_equal sym_cff
    end
;;

let is_let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal sym_cff
    end
;;

let is_let_iter_f_of_tag_ab_for_at_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_iter_f_of_tag_ab_for_at_equal sym_cff
    end
;;

let is_let_map2_f_of_tag_ab_for_at_1_for_at_2_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_map2_f_of_tag_ab_for_at_1_for_at_2_equal sym_cff
    end
;;

let is_let_map_f_of_tag_ab_for_at_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_map_f_of_tag_ab_for_at_equal sym_cff
    end
;;

let is_let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in sym_cff
    end
;;

let is_let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in sym_cff
    end
;;

let is_let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in sym_cff
    end
;;

let is_let_ed_tag_list_off_et_formula_equal_function sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_ed_tag_list_off_et_formula_equal_function sym_cff
    end
;;

let is_let_ed_tag_list_off_et_formula_for_at_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_ed_tag_list_off_et_formula_for_at_equal sym_cff
    end
;;

let is_let_ed_tag_list_off_et_tag_tag_at_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_ed_tag_list_off_et_tag_tag_at_equal sym_cff
    end
;;

let is_ed_tag_list_off_et_formula_for_at sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_ed_tag_list_off_et_formula_for_at sym_cff
    end
;;

let is_let_tag_at_equal_tag_vdot_make_sym_at_soi_am_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_tag_at_equal_tag_vdot_make_sym_at_soi_am_in sym_cff
    end
;;

let is_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar sym_cff
    end
;;

let is_et_formula_tdot_es_tag_ab_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_et_formula_tdot_es_tag_ab_l sym_cff
    end
;;

let is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l sym_cff
    end
;;

let is_pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l sym_cff
    end
;;

let is_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar sym_cff
    end
;;

let is_et_formula_tdot_es_tag_ad_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_et_formula_tdot_es_tag_ad_l sym_cff
    end
;;

let is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l sym_cff
    end
;;

let is_pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l sym_cff
    end
;;

let is_let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in sym_cff
    end
;;

let is_let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in sym_cff
    end
;;

let is_let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in sym_cff
    end
;;

let is_let_soi_ab_l_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_soi_ab_l_equal sym_cff
    end
;;

let is_list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_cff
    end
;;

let is_list_dot_iter_f_of_tag_ab_tag_ab_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_list_dot_iter_f_of_tag_ab_tag_ab_l sym_cff
    end
;;

let is_list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 sym_cff
    end
;;

let is_list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l sym_cff
    end
;;

let is_list_dot_map_f_of_tag_ab_tag_ab_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_list_dot_map_f_of_tag_ab_tag_ab_l sym_cff
    end
;;

let is_double_quote_builders sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_double_quote_builders sym_cff
    end
;;

let is_tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l sym_cff
    end
;;

let is_double_quote_data sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_double_quote_data sym_cff
    end
;;

let is_let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in sym_cff
    end
;;

let is_let_soi_ad_l_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_soi_ad_l_equal sym_cff
    end
;;

let is_let_tag_ad_ll_equal_list_dot_map sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_tag_ad_ll_equal_list_dot_map sym_cff
    end
;;

let is_list_dot_flatten_tag_ad_ll sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_list_dot_flatten_tag_ad_ll sym_cff
    end
;;

let is_list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l sym_cff
    end
;;

let is_lpar_es_formula_vdot_symbol_of_formula_for_as_rpar sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_lpar_es_formula_vdot_symbol_of_formula_for_as_rpar sym_cff
    end
;;

let is_es_formula_vdot_map_for_as sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_es_formula_vdot_map_for_as sym_cff
    end
;;

let is_es_formula_vdot_name_for_as sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_es_formula_vdot_name_for_as sym_cff
    end
;;

let is_let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in sym_cff
    end
;;

let is_for_at sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_for_at sym_cff
    end
;;

let is_let_for_at_equal_retrieve_tag_at_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_for_at_equal_retrieve_tag_at_in sym_cff
    end
;;

let is_let_make_soi_at_equal_function sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_make_soi_at_equal_function sym_cff
    end
;;

let is_let_make_tag_at_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_make_tag_at_equal sym_cff
    end
;;

let is_let_name_for_at_equal sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_name_for_at_equal sym_cff
    end
;;

let is_let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in sym_cff
    end
;;

let is_let_sym_at_equal_symbol_of_formula_for_at_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_sym_at_equal_symbol_of_formula_for_at_in sym_cff
    end
;;

let is_et_formula_vdot_name sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_et_formula_vdot_name sym_cff
    end
;;

let is_let_for_das_equal_das_vdot_make_tag_at_builder_list_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_for_das_equal_das_vdot_make_tag_at_builder_list_in sym_cff
    end
;;

let is_let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
      Camlline_for_formula_symbol_v.is_let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in sym_cff
    end
;;

let is_pipe_ecstring_arrow_et_symbol_tdot_ec_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_ecstring_arrow_et_symbol_tdot_ec_string sym_cfs
    end
;;

let is_et_symbol_tdot_es sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_et_symbol_tdot_es sym_cfs
    end
;;

let is_let_ac_at_equal_et_symbol_vdot_es_in sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_ac_at_equal_et_symbol_vdot_es_in sym_cfs
    end
;;

let is_let_es_equal_et_symbol_tdot_es sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_es_equal_et_symbol_tdot_es sym_cfs
    end
;;

let is_pipe_et_symbol_tdot_es_arrow sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_et_symbol_tdot_es_arrow sym_cfs
    end
;;

let is_pipe_et_symbol_tdot_es_arrow_emptystring sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_et_symbol_tdot_es_arrow_emptystring sym_cfs
    end
;;

let is_pipe_et_symbol_tdot_es_arrow_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_et_symbol_tdot_es_arrow_string sym_cfs
    end
;;

let is_et_symbol_tdot_es_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_et_symbol_tdot_es_symbol sym_cfs
    end
;;

let is_let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es sym_cfs
    end
;;

let is_let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg sym_cfs
    end
;;

let is_pipe_et_symbol_tdot_es_symbol_sym_as_arrow sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_et_symbol_tdot_es_symbol_sym_as_arrow sym_cfs
    end
;;

let is_et_symbol_of_es_symbol_sym_as sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_et_symbol_of_es_symbol_sym_as sym_cfs
    end
;;

let is_et_symbol_tdot_es_symbol_sym_as sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_et_symbol_tdot_es_symbol_sym_as sym_cfs
    end
;;

let is_pipe_et_symbol_tdot_es_symbol_underscore_arrow_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_et_symbol_tdot_es_symbol_underscore_arrow_string sym_cfs
    end
;;

let is_try_et_symbol_of_es_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_try_et_symbol_of_es_symbol sym_cfs
    end
;;

let is_et_symbol_tdot_es_sarg sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_et_symbol_tdot_es_sarg sym_cfs
    end
;;

let is_let_es_sarg_equal_et_symbol_tdot_es_sarg sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_es_sarg_equal_et_symbol_tdot_es_sarg sym_cfs
    end
;;

let is_pipe_et_symbol_tdot_es_sarg_arrow sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_et_symbol_tdot_es_sarg_arrow sym_cfs
    end
;;

let is_pipe_et_symbol_tdot_es_sarg_arrow_sarg sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_et_symbol_tdot_es_sarg_arrow_sarg sym_cfs
    end
;;

let is_pipe_et_symbol_tdot_es_underscore_arrow_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_et_symbol_tdot_es_underscore_arrow_string sym_cfs
    end
;;

let is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in sym_cfs
    end
;;

let is_et_symbol_vdot_name_sym_at sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_et_symbol_vdot_name_sym_at sym_cfs
    end
;;

let is_et_symbol_vdot_string_off_sym_at sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_et_symbol_vdot_string_off_sym_at sym_cfs
    end
;;

let is_let_et_symbol_equal_et_symbol_tdot_et sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_et_symbol_equal_et_symbol_tdot_et sym_cfs
    end
;;

let is_let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in sym_cfs
    end
;;

let is_pipe_et_symbol_tdot_et_symbol_arrow_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_et_symbol_tdot_et_symbol_arrow_string sym_cfs
    end
;;

let is_failwith_not_a_et_symbol_make sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_et_symbol_make sym_cfs
    end
;;

let is_failwith_not_a_et_symbol_name sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_et_symbol_name sym_cfs
    end
;;

let is_failwith_not_a_et_symbol_string_off sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_et_symbol_string_off sym_cfs
    end
;;

let is_failwith_not_a_topson_bare_et_symbol_make sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_topson_bare_et_symbol_make sym_cfs
    end
;;

let is_failwith_not_a_topson_bare_et_symbol_name sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_topson_bare_et_symbol_name sym_cfs
    end
;;

let is_failwith_not_a_topson_bare_et_symbol_string_off sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_topson_bare_et_symbol_string_off sym_cfs
    end
;;

let is_failwith_not_a_topson_notleaf_et_symbol_make sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_topson_notleaf_et_symbol_make sym_cfs
    end
;;

let is_failwith_not_a_topson_notleaf_et_symbol_name sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_topson_notleaf_et_symbol_name sym_cfs
    end
;;

let is_failwith_not_a_topson_notleaf_et_symbol_string_off sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_topson_notleaf_et_symbol_string_off sym_cfs
    end
;;

let is_failwith_not_a_topson_ofstring_et_symbol_make sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_topson_ofstring_et_symbol_make sym_cfs
    end
;;

let is_failwith_not_a_topson_ofstring_et_symbol_name sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_topson_ofstring_et_symbol_name sym_cfs
    end
;;

let is_failwith_not_a_topson_ofstring_et_symbol_string_off sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_a_topson_ofstring_et_symbol_string_off sym_cfs
    end
;;

let is_let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in sym_cfs
    end
;;

let is_let_underscore_print_error_make_et_of_string_of_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_underscore_print_error_make_et_of_string_of_string sym_cfs
    end
;;

let is_let_underscore_print_error_name_et_of_string_of_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_underscore_print_error_name_et_of_string_of_string sym_cfs
    end
;;

let is_let_underscore_print_error_string_off_et_of_string_of_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_let_underscore_print_error_string_off_et_of_string_of_string sym_cfs
    end
;;

let is_print_fatal_error_make_et_of_string_of_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_print_fatal_error_make_et_of_string_of_string sym_cfs
    end
;;

let is_print_fatal_error_name_et_of_string_of_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_print_fatal_error_name_et_of_string_of_string sym_cfs
    end
;;

let is_print_fatal_error_string_off_et_of_string_of_string sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_print_fatal_error_string_off_et_of_string_of_string sym_cfs
    end
;;

let is_with_failure_not_a_topson_bare_et_symbol_arrow_make sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_with_failure_not_a_topson_bare_et_symbol_arrow_make sym_cfs
    end
;;

let is_with_failure_not_a_topson_bare_et_symbol_arrow_name sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_with_failure_not_a_topson_bare_et_symbol_arrow_name sym_cfs
    end
;;

let is_with_failure_not_a_topson_bare_et_symbol_arrow_string_off sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_with_failure_not_a_topson_bare_et_symbol_arrow_string_off sym_cfs
    end
;;

let is_with_failure_not_a_topson_notleaf_et_symbol_arrow_make sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_with_failure_not_a_topson_notleaf_et_symbol_arrow_make sym_cfs
    end
;;

let is_with_failure_not_a_topson_notleaf_et_symbol_arrow_name sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_with_failure_not_a_topson_notleaf_et_symbol_arrow_name sym_cfs
    end
;;

let is_with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off sym_cfs
    end
;;

let is_with_failure_not_a_topson_ofstring_et_symbol_arrow_make sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_with_failure_not_a_topson_ofstring_et_symbol_arrow_make sym_cfs
    end
;;

let is_with_failure_not_a_topson_ofstring_et_symbol_arrow_name sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_with_failure_not_a_topson_ofstring_et_symbol_arrow_name sym_cfs
    end
;;

let is_with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off sym_cfs
    end
;;

let is_match_sym_at_with sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_match_sym_at_with sym_cfs
    end
;;

let is_pipe_esstring_arrow_es sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_esstring_arrow_es sym_cfs
    end
;;

let is_pipe_esstring_arrow_es_sarg sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_esstring_arrow_es_sarg sym_cfs
    end
;;

let is_lpar_es_symbol_vdot_make_of_string_of_string_rpar sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_lpar_es_symbol_vdot_make_of_string_of_string_rpar sym_cfs
    end
;;

let is_failwith_not_es_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_failwith_not_es_symbol sym_cfs
    end
;;

let is_with_failure_not_es_symbol_arrow sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_with_failure_not_es_symbol_arrow sym_cfs
    end
;;

let is_es_symbol_vdot_string_off_sym_as sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_es_symbol_vdot_string_off_sym_as sym_cfs
    end
;;

let is_es_symbol_vdot_name_sym_as sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_es_symbol_vdot_name_sym_as sym_cfs
    end
;;

let is_pipe_string_arrow_ec sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
      Camlline_for_symbol_symbol_v.is_pipe_string_arrow_ec sym_cfs
    end
;;

let is_lpar_a_tag_rpar sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_lpar_a_tag_rpar sym_cft
    end
;;

let is_lpar_a_b_tag_rpar sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_lpar_a_b_tag_rpar sym_cft
    end
;;

let is_let_map_equal_das_vdot_map sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_let_map_equal_das_vdot_map sym_cft
    end
;;

let is_let_map2_equal_das_vdot_map2 sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_let_map2_equal_das_vdot_map2 sym_cft
    end
;;

let is_let_iter_equal_das_vdot_iter sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_let_iter_equal_das_vdot_iter sym_cft
    end
;;

let is_let_iter2_equal_das_vdot_iter2 sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_let_iter2_equal_das_vdot_iter2 sym_cft
    end
;;

let is_das_vdot_make_tag_a sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_das_vdot_make_tag_a sym_cft
    end
;;

let is_das_vdot_make_tag_a_tag_b sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_das_vdot_make_tag_a_tag_b sym_cft
    end
;;

let is_das_vdot_make_tag_a_tag_b_tag_c sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_das_vdot_make_tag_a_tag_b_tag_c sym_cft
    end
;;

let is_camlline_for_tag_datastructure_function_name sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_function_name sym_cft
    end
;;

let is_type_et_tag_equal_et_symbol_tdot_et_symbol_tag sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_type_et_tag_equal_et_symbol_tdot_et_symbol_tag sym_cft
    end
;;

let is_let_make_soi_at_nam_at_s_equal sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_let_make_soi_at_nam_at_s_equal sym_cft
    end
;;

let is_let_make_sym_at_soi_at_equal sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_let_make_sym_at_soi_at_equal sym_cft
    end
;;

let is_let_name_tag_at_equal sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_let_name_tag_at_equal sym_cft
    end
;;

let is_tag_vdot_make_sym_at_soi_at sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_tag_vdot_make_sym_at_soi_at sym_cft
    end
;;

let is_tag_vdot_name_et_symbol_vdot_name_tag_at sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_tag_vdot_name_et_symbol_vdot_name_tag_at sym_cft
    end
;;

let is_let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in sym_cft
    end
;;

let is_tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at sym_cft
    end
;;

let is_tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac sym_cft
    end
;;

let is_tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at sym_cft
    end
;;

let is_lpar_a_b_c_tag_rpar sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_lpar_a_b_c_tag_rpar sym_cft
    end
;;

let is_lpar_a_b_c_tag_rpar_tree_footed_capped sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_lpar_a_b_c_tag_rpar_tree_footed_capped sym_cft
    end
;;

let is_lpar_a_b_c_tag_rpar_tree_leafed_capped sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_lpar_a_b_c_tag_rpar_tree_leafed_capped sym_cft
    end
;;

let is_lpar_a_b_c_tag_rpar_triplet sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_lpar_a_b_c_tag_rpar_triplet sym_cft
    end
;;

let is_lpar_a_b_c_tag_rpar_triplet_list sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
      let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
      Camlline_for_tag_symbol_v.is_lpar_a_b_c_tag_rpar_triplet_list sym_cft
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlline_constant_function_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
  Camlline_constant_symbol_v.is_camlline_constant_function_symbol_off_camlline_constant_symbol sym_cac
    end
;;

let is_camlline_constant_pervasive_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_constant_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cac = camlline_constant_symbol_off_camlline_symbol sym_cam in
  Camlline_constant_symbol_v.is_camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_cac
    end
;;

let is_camlline_for_any_duo_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_duo_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_duo_current_son_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_duo_current_son_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_duo_current_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_duo_current_top_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_duo_datastructure_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_duo_datastructure_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_duo_son_top_bare_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_duo_son_top_bare_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_duo_son_top_ofstring_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_duo_son_top_notleaf_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_duo_top_main_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_duo_top_main_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_uno_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_uno_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_uno_camlfile_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_uno_camlfile_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_uno_camltype_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_uno_camltype_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_uno_camltype_son_bare_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_uno_camltype_son_notleaf_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_uno_camltype_son_ofstring_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_uno_camltype_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_uno_camltype_top_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_uno_son_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_uno_son_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_uno_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_uno_top_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_trio_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_trio_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_any_trio_current_son_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_any_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfa = camlline_for_any_symbol_off_camlline_symbol sym_cam in
  Camlline_for_any_symbol_v.is_camlline_for_any_trio_current_son_top_symbol_off_camlline_for_any_symbol sym_cfa
    end
;;

let is_camlline_for_formula_datastructure_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_datastructure_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_datastructure_uno_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_datastructure_uno_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_datastructure_duo_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_datastructure_duo_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_datastructure_trio_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_datastructure_trio_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_builder_data_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_builder_data_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_localset_builder_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_localset_builder_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_localset_data_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_localset_data_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_main_builder_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_main_builder_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_main_data_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_main_data_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_son_builder_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_son_builder_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_son_data_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_son_data_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_son_main_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_son_main_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_son_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_son_top_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_top_builder_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_top_builder_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_top_data_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_top_data_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_duo_top_main_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_duo_top_main_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_trio_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_trio_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_trio_son_top_builder_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_trio_son_top_data_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_trio_top_builder_data_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_trio_top_main_builder_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_uno_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_uno_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_uno_builder_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_uno_builder_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_uno_data_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_uno_data_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_uno_main_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_uno_main_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_uno_son_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_uno_son_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_formula_uno_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_formula_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cff = camlline_for_formula_symbol_off_camlline_symbol sym_cam in
  Camlline_for_formula_symbol_v.is_camlline_for_formula_uno_top_symbol_off_camlline_for_formula_symbol sym_cff
    end
;;

let is_camlline_for_symbol_duo_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_duo_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_duo_current_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_duo_current_top_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_duo_son_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_duo_son_top_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_uno_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_uno_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_uno_builder_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_uno_builder_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_uno_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_uno_top_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_uno_son_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_uno_son_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_uno_son_bare_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_uno_son_bare_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_uno_son_ofstring_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_uno_son_notleaf_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_symbol_uno_current_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_symbol_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cfs = camlline_for_symbol_symbol_off_camlline_symbol sym_cam in
  Camlline_for_symbol_symbol_v.is_camlline_for_symbol_uno_current_symbol_off_camlline_for_symbol_symbol sym_cfs
    end
;;

let is_camlline_for_tag_datastructure_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_datastructure_camltype_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_camltype_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_datastructure_function_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_function_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_uno_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_uno_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_uno_camltype_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_uno_camltype_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_uno_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_uno_top_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_duo_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_duo_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_duo_current_top_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_duo_current_top_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;

let is_camlline_for_tag_trio_symbol_off_camlline_symbol sym_cam =
  if not (is_camlline_for_tag_symbol_off_camlline_symbol sym_cam)
  then false
  else
    begin
  let sym_cft = camlline_for_tag_symbol_off_camlline_symbol sym_cam in
  Camlline_for_tag_symbol_v.is_camlline_for_tag_trio_symbol_off_camlline_for_tag_symbol sym_cft
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_symbol_of_camlline_constant_symbol sym_cac = 
  Camlline_symbol_t.Camlline_constant_symbol sym_cac
;;

let camlline_symbol_of_camlline_for_any_symbol sym_cfa = 
  Camlline_symbol_t.Camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_formula_symbol sym_cff = 
  Camlline_symbol_t.Camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_symbol_symbol sym_cfs = 
  Camlline_symbol_t.Camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_tag_symbol sym_cft = 
  Camlline_symbol_t.Camlline_for_tag_symbol sym_cft
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlline_symbol_of_camlline_constant_function_symbol sym_ccf = 
  let sym_cac = Camlline_constant_symbol_v.camlline_constant_symbol_of_camlline_constant_function_symbol sym_ccf in
    camlline_symbol_of_camlline_constant_symbol sym_cac
;;

let camlline_symbol_of_camlline_constant_pervasive_symbol sym_ccp = 
  let sym_cac = Camlline_constant_symbol_v.camlline_constant_symbol_of_camlline_constant_pervasive_symbol sym_ccp in
    camlline_symbol_of_camlline_constant_symbol sym_cac
;;

let camlline_symbol_of_camlline_for_any_duo_symbol sym_fad = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_duo_symbol sym_fad in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_duo_current_son_symbol sym_dcs = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_duo_current_son_symbol sym_dcs in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_duo_current_top_symbol sym_dct = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_duo_current_top_symbol sym_dct in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_duo_datastructure_symbol sym_add = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_duo_datastructure_symbol sym_add in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_duo_son_top_bare_symbol sym_stb = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_duo_son_top_bare_symbol sym_stb in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_duo_son_top_ofstring_symbol sym_sto = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_duo_son_top_ofstring_symbol sym_sto in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_stn = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_duo_son_top_notleaf_symbol sym_stn in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_duo_top_main_symbol sym_dtm = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_duo_top_main_symbol sym_dtm in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_uno_symbol sym_fau = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_uno_symbol sym_fau in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_uno_camlfile_symbol sym_auc = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_uno_camlfile_symbol sym_auc in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_uno_camltype_symbol sym_auc = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_uno_camltype_symbol sym_auc in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_uno_camltype_son_bare_symbol sym_csb = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_uno_camltype_son_bare_symbol sym_csb in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_uno_camltype_son_notleaf_symbol sym_csn in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_uno_camltype_son_ofstring_symbol sym_cso in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_uno_camltype_top_symbol sym_uct = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_uno_camltype_top_symbol sym_uct in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_uno_son_symbol sym_aus = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_uno_son_symbol sym_aus in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_uno_top_symbol sym_aut = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_uno_top_symbol sym_aut in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_trio_symbol sym_fat = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_trio_symbol sym_fat in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_any_trio_current_son_top_symbol sym_cst = 
  let sym_cfa = Camlline_for_any_symbol_v.camlline_for_any_symbol_of_camlline_for_any_trio_current_son_top_symbol sym_cst in
    camlline_symbol_of_camlline_for_any_symbol sym_cfa
;;

let camlline_symbol_of_camlline_for_formula_datastructure_symbol sym_ffd = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_datastructure_symbol sym_ffd in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_datastructure_uno_symbol sym_fdu = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_datastructure_uno_symbol sym_fdu in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_datastructure_duo_symbol sym_fdd = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_datastructure_duo_symbol sym_fdd in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_datastructure_trio_symbol sym_fdt = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_datastructure_trio_symbol sym_fdt in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_symbol sym_ffd = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_symbol sym_ffd in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_builder_data_symbol sym_dbd = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_builder_data_symbol sym_dbd in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_localset_builder_symbol sym_ddb = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_localset_builder_symbol sym_ddb in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_localset_data_symbol sym_ddb = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_localset_data_symbol sym_ddb in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_main_builder_symbol sym_dmb = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_main_builder_symbol sym_dmb in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_main_data_symbol sym_dmd = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_main_data_symbol sym_dmd in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_son_builder_symbol sym_dsb = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_son_builder_symbol sym_dsb in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_son_data_symbol sym_dsd = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_son_data_symbol sym_dsd in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_son_main_symbol sym_dsm = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_son_main_symbol sym_dsm in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_son_top_symbol sym_dst = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_son_top_symbol sym_dst in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_dtb = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_top_builder_symbol sym_dtb in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_top_data_symbol sym_dtd = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_top_data_symbol sym_dtd in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_duo_top_main_symbol sym_dtm = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_duo_top_main_symbol sym_dtm in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_trio_symbol sym_fft = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_trio_symbol sym_fft in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_trio_son_top_builder_symbol sym_stb = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_trio_son_top_builder_symbol sym_stb in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_trio_son_top_data_symbol sym_std = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_trio_son_top_data_symbol sym_std in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_trio_top_builder_data_symbol sym_tbd = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_trio_top_builder_data_symbol sym_tbd in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_trio_top_main_builder_symbol sym_tmb = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_trio_top_main_builder_symbol sym_tmb in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_uno_symbol sym_ffu = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_uno_symbol sym_ffu in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_uno_builder_symbol sym_fub = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_uno_builder_symbol sym_fub in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_uno_data_symbol sym_fud = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_uno_data_symbol sym_fud in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_uno_main_symbol sym_fud = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_uno_main_symbol sym_fud in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_uno_son_symbol sym_fus = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_uno_son_symbol sym_fus in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_formula_uno_top_symbol sym_fut = 
  let sym_cff = Camlline_for_formula_symbol_v.camlline_for_formula_symbol_of_camlline_for_formula_uno_top_symbol sym_fut in
    camlline_symbol_of_camlline_for_formula_symbol sym_cff
;;

let camlline_symbol_of_camlline_for_symbol_duo_symbol sym_fsd = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_duo_symbol sym_fsd in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_duo_current_top_symbol sym_dct = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_duo_current_top_symbol sym_dct in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_duo_son_top_symbol sym_dst = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_duo_son_top_symbol sym_dst in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol sym_stb = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol sym_stb in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol sym_stn = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol sym_stn in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol sym_sto = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol sym_sto in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_uno_symbol sym_fsu = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_uno_symbol sym_fsu in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_uno_builder_symbol sym_sub = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_uno_builder_symbol sym_sub in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_uno_top_symbol sym_sut = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_uno_top_symbol sym_sut in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_uno_son_symbol sym_sus = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_uno_son_symbol sym_sus in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_uno_son_bare_symbol sym_usb = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_uno_son_bare_symbol sym_usb in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_uno_son_ofstring_symbol sym_uso = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_uno_son_ofstring_symbol sym_uso in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol sym_usn = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_uno_son_notleaf_symbol sym_usn in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_symbol_uno_current_symbol sym_suc = 
  let sym_cfs = Camlline_for_symbol_symbol_v.camlline_for_symbol_symbol_of_camlline_for_symbol_uno_current_symbol sym_suc in
    camlline_symbol_of_camlline_for_symbol_symbol sym_cfs
;;

let camlline_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_datastructure_symbol sym_ftd in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_datastructure_camltype_symbol sym_tdc = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_datastructure_camltype_symbol sym_tdc in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_datastructure_function_symbol sym_tdf = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_symbol sym_tdf in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_datastructure_function_iter_symbol sym_dfi = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_iter_symbol sym_dfi in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_datastructure_function_make_symbol sym_dfm = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_make_symbol sym_dfm in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_uno_symbol sym_ftu = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_uno_symbol sym_ftu in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_uno_camltype_symbol sym_tuc = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_uno_camltype_symbol sym_tuc in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_uno_top_symbol sym_tut = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_uno_top_symbol sym_tut in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_duo_symbol sym_ftd = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_duo_symbol sym_ftd in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_duo_current_top_symbol sym_dct = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_duo_current_top_symbol sym_dct in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;

let camlline_symbol_of_camlline_for_tag_trio_symbol sym_ftt = 
  let sym_cft = Camlline_for_tag_symbol_v.camlline_for_tag_symbol_of_camlline_for_tag_trio_symbol sym_ftt in
    camlline_symbol_of_camlline_for_tag_symbol sym_cft
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_count_equal_zero = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_count_equal_zero;;

let let_count_increment_in = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_count_increment_in;;

let let_documentation_unit_equal = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_documentation_unit_equal;;

let let_longname_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_longname_equal_function;;

let let_make_argument_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_make_argument_equal_function;;

let let_make_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_make_equal_function;;

let let_make_equal_tag_vdot_make_double_semicolon = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_make_equal_tag_vdot_make_double_semicolon;;

let let_make_nam_s_equal = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_make_nam_s_equal;;

let let_make_of_topson_bare_nam_equal = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_make_of_topson_bare_nam_equal;;

let let_make_of_topson_notleaf_nam_s_equal = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_make_of_topson_notleaf_nam_s_equal;;

let let_make_of_topson_ofstring_nam_s_equal = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_make_of_topson_ofstring_nam_s_equal;;

let let_map_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_map_equal_function;;

let let_nam_cod_equal = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_nam_cod_equal;;

let let_nam_low_equal_string_lowercase_nam_in = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_nam_low_equal_string_lowercase_nam_in;;

let let_name_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_name_equal_function;;

let let_name_of_topson_bare_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_name_of_topson_bare_equal_function;;

let let_name_of_topson_notleaf_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_name_of_topson_notleaf_equal_function;;

let let_name_of_topson_ofstring_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_name_of_topson_ofstring_equal_function;;

let let_print_ppf_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_print_ppf_equal_function;;

let let_print_ppf_str_equal = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_print_ppf_str_equal;;

let let_string_off_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_string_off_equal_function;;

let let_string_off_of_topson_bare_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_string_off_of_topson_bare_equal_function;;

let let_string_off_of_topson_notleaf_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_string_off_of_topson_notleaf_equal_function;;

let let_string_off_of_topson_ofstring_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_string_off_of_topson_ofstring_equal_function;;

let let_symbol_of_formula_equal_function = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.let_symbol_of_formula_equal_function;;

let match_nam_low_with = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.match_nam_low_with;;

let pipe_print_fatal_error_make_4_lines = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.pipe_print_fatal_error_make_4_lines;;

let pipe_underscore_arrow = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.pipe_underscore_arrow;;

let pipe_underscore_arrow_false = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.pipe_underscore_arrow_false;;

let pipe_underscore_arrow_true = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.pipe_underscore_arrow_true;;

let double_quote_example = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.double_quote_example;;

let double_quote_how_is_it_done = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.double_quote_how_is_it_done;;

let double_quote_needed = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.double_quote_needed;;

let double_quote_needs = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.double_quote_needs;;

let double_quote_what_is_it = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.double_quote_what_is_it;;

let map = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.map;;

let sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index;;

let try_make_of_topson_bare_nam = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.try_make_of_topson_bare_nam;;

let try_make_of_topson_notleaf_nam_s = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.try_make_of_topson_notleaf_nam_s;;

let try_make_of_topson_ofstring_nam_s = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.try_make_of_topson_ofstring_nam_s;;

let basic_type = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.basic_type;;

let begin_line = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.begin_line;;

let bracket_left = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.bracket_left;;

let bracket_right = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.bracket_right;;

let curly_bracket_left = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.curly_bracket_left;;

let curly_bracket_right = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.curly_bracket_right;;

let double_semicolon = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.double_semicolon;;

let else_line = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.else_line;;

let empty_line = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.empty_line;;

let end_line = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.end_line;;

let item_title = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.item_title;;

let parenthesis_left = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.parenthesis_left;;

let parenthesis_right = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.parenthesis_right;;

let semicolon = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.semicolon;;

let then_false = camlline_symbol_of_camlline_constant_symbol Camlline_constant_symbol_v.then_false;;

let es_any_vdot_ec_any_off_es_any_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.es_any_vdot_ec_any_off_es_any_ac_as;;

let es_any_vdot_is_ec_any_off_es_any_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.es_any_vdot_is_ec_any_off_es_any_ac_as;;

let es_any_vdot_is_ec_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.es_any_vdot_is_ec_ac_as;;

let let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_ac_as_equal_es_any_vdot_es_any_of_ec_any_ac_ac_in;;

let let_et_any_of_ec_any_ac_ac_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_et_any_of_ec_any_ac_ac_equal;;

let let_ec_any_off_et_any_ac_at_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_ec_any_off_et_any_ac_at_equal;;

let let_is_ec_any_off_et_any_ac_at_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_is_ec_any_off_et_any_ac_at_equal;;

let let_is_ec_ac_at_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_is_ec_ac_at_equal;;

let pipe_a_b_datastructure_of_a_b_datastructure = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_a_b_datastructure_of_a_b_datastructure;;

let et_any_tdot_es = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.et_any_tdot_es;;

let pipe_et_any_tdot_es = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_et_any_tdot_es;;

let pipe_et_any_tdot_es_arrow_true = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_et_any_tdot_es_arrow_true;;

let et_any_tdot_es_sarg = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.et_any_tdot_es_sarg;;

let pipe_et_any_tdot_es_underscore_arrow_true = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_et_any_tdot_es_underscore_arrow_true;;

let et_any_tdot_es_any = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.et_any_tdot_es_any;;

let if_not_is_es_any_off_et_any_ac_at = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.if_not_is_es_any_off_et_any_ac_at;;

let let_ac_as_equal_es_any_off_et_any_ac_at_in = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_ac_as_equal_es_any_off_et_any_ac_at_in;;

let let_es_any_off_et_any_equal_function = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_es_any_off_et_any_equal_function;;

let let_et_any_of_es_any_ac_as_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_et_any_of_es_any_ac_as_equal;;

let let_is_es_any_off_et_any_equal_function = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_is_es_any_off_et_any_equal_function;;

let pipe_et_any_tdot_es_any_ac_as_arrow = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow;;

let pipe_et_any_tdot_es_any_ac_as_arrow_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_et_any_tdot_es_any_ac_as_arrow_ac_as;;

let pipe_et_any_tdot_es_any_arrow = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_et_any_tdot_es_any_arrow;;

let pipe_et_any_tdot_es_any_underscore_arrow_true = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_et_any_tdot_es_any_underscore_arrow_true;;

let pipe_print_fatal_error_es_any_off_et_any_4_lines = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_print_fatal_error_es_any_off_et_any_4_lines;;

let et_any_of_es_any_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.et_any_of_es_any_ac_as;;

let et_any_tdot_es_any_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.et_any_tdot_es_any_ac_as;;

let let_build_n_store_sym_at_soi_am_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_build_n_store_sym_at_soi_am_equal;;

let let_make_sym_at_soi_am_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_make_sym_at_soi_am_equal;;

let let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_soi_am_equal_tag_vdot_sole_index_off_tag_tag_at_in;;

let make_sym_at_soi_am = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.make_sym_at_soi_am;;

let camlfile_title = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.camlfile_title;;

let ending = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.ending;;

let pipe_es = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_es;;

let pipe_es_any_constructor_of_es_any_tdot_es_any = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_es_any_constructor_of_es_any_tdot_es_any;;

let pipe_es_constructor_of_string = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_es_constructor_of_string;;

let pipe_et_any_constructor_of_et_any_tdot_et_any = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_et_any_constructor_of_et_any_tdot_et_any;;

let type_et_any_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.type_et_any_equal;;

let type_et_any_equal_et = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.type_et_any_equal_et;;

let type_et_any_equal_private = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.type_et_any_equal_private;;

let comment_es_comment = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.comment_es_comment;;

let es_any_vdot_fullname_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.es_any_vdot_fullname_ac_as;;

let es_any_vdot_longname_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.es_any_vdot_longname_ac_as;;

let es_any_vdot_make_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.es_any_vdot_make_ac_as;;

let es_any_vdot_name_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.es_any_vdot_name_ac_as;;

let es_any_vdot_string_off_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.es_any_vdot_string_off_ac_as;;

let format_sprintf_fullname_ac_as_string_off_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.format_sprintf_fullname_ac_as_string_off_ac_as;;

let format_sprintf_longname_es_tdot_string_capitalize_name_ac_as = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.format_sprintf_longname_es_tdot_string_capitalize_name_ac_as;;

let let_is_es_any_equal_function = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_is_es_any_equal_function;;

let let_is_es_equal_function = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_is_es_equal_function;;

let pipe_datastructure_ac_as_arrow = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.pipe_datastructure_ac_as_arrow;;

let format_sprintf_doublequote_et_any_tdot_percents_doublequote = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.format_sprintf_doublequote_et_any_tdot_percents_doublequote;;

let let_fullname_ac_at_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_fullname_ac_at_equal;;

let let_longname_ac_at_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_longname_ac_at_equal;;

let let_name_ac_at_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_name_ac_at_equal;;

let let_retrieve_tag_top_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_retrieve_tag_top_equal;;

let let_string_off_ac_at_equal = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_string_off_ac_at_equal;;

let lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar;;

let double_quote_current = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.double_quote_current;;

let sprintf_for_any_fullname = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.sprintf_for_any_fullname;;

let sprintf_for_any_longname = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.sprintf_for_any_longname;;

let try_name_of_topson_bare = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.try_name_of_topson_bare;;

let try_name_of_topson_notleaf = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.try_name_of_topson_notleaf;;

let try_name_of_topson_ofstring = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.try_name_of_topson_ofstring;;

let try_string_off_of_topson_bare = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.try_string_off_of_topson_bare;;

let try_string_off_of_topson_notleaf = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.try_string_off_of_topson_notleaf;;

let try_string_off_of_topson_ofstring = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.try_string_off_of_topson_ofstring;;

let let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_ec_equal_et_any_of_es_any_es_any_vdot_ec_any;;

let let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg = camlline_symbol_of_camlline_for_any_symbol Camlline_for_any_symbol_v.let_ec_sarg_equal_et_any_of_es_any_lpar_es_any_vdot_ec_any_sarg;;

let das_vdot_name_nam_a_for_at = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.das_vdot_name_nam_a_for_at;;

let das_vdot_name_nam_a_nam_b_for_at = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.das_vdot_name_nam_a_nam_b_for_at;;

let das_vdot_name_nam_a_nam_b_nam_c_for_at = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.das_vdot_name_nam_a_nam_b_nam_c_for_at;;

let eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.eb_formula_vdot_ed_tag_list_off_eb_formula_for_ab_l_in;;

let let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in;;

let list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.list_dot_iter2_localset_symbol_by_sole_index_register_vdot_store_soi_ab_l_dss_ab_l_semicolon;;

let one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.one_lpar_list_dot_length_sym_ab_l_rpar_soi_am_in;;

let one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.one_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in;;

let es_formula_vdot_eb_tag_list_off_es_formula_for_as = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.es_formula_vdot_eb_tag_list_off_es_formula_for_as;;

let pipe_es_constructor_of_eb_tag_tdot_eb_tag_list = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.pipe_es_constructor_of_eb_tag_tdot_eb_tag_list;;

let pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.pipe_es_constructor_of_string_star_eb_tag_tdot_eb_tag_list;;

let es_formula_vdot_ed_tag_list_off_es_formula_for_as = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.es_formula_vdot_ed_tag_list_off_es_formula_for_as;;

let pipe_es_constructor_of_ed_tag_tdot_ed_tag_list = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.pipe_es_constructor_of_ed_tag_tdot_ed_tag_list;;

let pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.pipe_es_constructor_of_string_star_ed_tag_tdot_ed_tag_list;;

let lpar_es_formula_vdot_make_sym_as_soi_am_rpar = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.lpar_es_formula_vdot_make_sym_as_soi_am_rpar;;

let et_formula_tdot_es_formula = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.et_formula_tdot_es_formula;;

let pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_underscore_rpar_arrow;;

let pipe_et_formula_tdot_es_underscore_arrow = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.pipe_et_formula_tdot_es_underscore_arrow;;

let et_formula_tdot_es_for_das = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.et_formula_tdot_es_for_das;;

let let_nam_as_equal_es_tag_vdot_name_for_at_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_nam_as_equal_es_tag_vdot_name_for_at_in;;

let let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_nam_as_equal_tag_vdot_name_et_symbol_vdot_name_in;;

let eb_tag_list_off_et_formula_for_at = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.eb_tag_list_off_et_formula_for_at;;

let let_eb_tag_list_off_et_formula_equal_function = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_eb_tag_list_off_et_formula_equal_function;;

let let_eb_tag_list_off_et_tag_tag_at_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_eb_tag_list_off_et_tag_tag_at_equal;;

let let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_iter2_f_of_tag_ab_for_at_1_for_at_2_equal;;

let let_iter_f_of_tag_ab_for_at_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_iter_f_of_tag_ab_for_at_equal;;

let let_map2_f_of_tag_ab_for_at_1_for_at_2_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_map2_f_of_tag_ab_for_at_1_for_at_2_equal;;

let let_map_f_of_tag_ab_for_at_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_map_f_of_tag_ab_for_at_equal;;

let let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_tag_ab_l_1_equal_eb_tag_list_off_et_formula_for_at_1_in;;

let let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_tag_ab_l_2_equal_eb_tag_list_off_et_formula_for_at_2_in;;

let let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_tag_ab_l_equal_eb_tag_list_off_et_formula_for_at_in;;

let let_ed_tag_list_off_et_formula_equal_function = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_ed_tag_list_off_et_formula_equal_function;;

let let_ed_tag_list_off_et_formula_for_at_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_ed_tag_list_off_et_formula_for_at_equal;;

let let_ed_tag_list_off_et_tag_tag_at_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_ed_tag_list_off_et_tag_tag_at_equal;;

let ed_tag_list_off_et_formula_for_at = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.ed_tag_list_off_et_formula_for_at;;

let let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in;;

let et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar;;

let et_formula_tdot_es_tag_ab_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.et_formula_tdot_es_tag_ab_l;;

let pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l;;

let pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l;;

let et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar;;

let et_formula_tdot_es_tag_ad_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.et_formula_tdot_es_tag_ad_l;;

let pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l;;

let pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l;;

let let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in;;

let let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in;;

let let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_for_ab_l_equal_list_dot_map_eb_formula_vdot_retrieve_tag_ab_l_in;;

let let_soi_ab_l_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_soi_ab_l_equal;;

let list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.list_dot_iter2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2;;

let list_dot_iter_f_of_tag_ab_tag_ab_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.list_dot_iter_f_of_tag_ab_tag_ab_l;;

let list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2 = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.list_dot_map2_f_of_tag_ab_tag_ab_l_1_tag_ab_l_2;;

let list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.list_dot_map2_tag_vdot_make_sym_ab_l_soi_ab_l;;

let list_dot_map_f_of_tag_ab_tag_ab_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.list_dot_map_f_of_tag_ab_tag_ab_l;;

let double_quote_builders = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.double_quote_builders;;

let tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.tools_fgnr_vdot_store_builder_dss_datastructure_dss_of_sym_sym_ab_l_soi_ab_l;;

let double_quote_data = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.double_quote_data;;

let let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_dss_ad_l_equal_list_dot_map_dss_of_sym_sym_ad_l_in;;

let let_soi_ad_l_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_soi_ad_l_equal;;

let let_tag_ad_ll_equal_list_dot_map = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_tag_ad_ll_equal_list_dot_map;;

let list_dot_flatten_tag_ad_ll = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.list_dot_flatten_tag_ad_ll;;

let list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.list_dot_map2_tag_vdot_make_sym_ad_l_soi_ad_l;;

let lpar_es_formula_vdot_symbol_of_formula_for_as_rpar = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.lpar_es_formula_vdot_symbol_of_formula_for_as_rpar;;

let es_formula_vdot_map_for_as = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.es_formula_vdot_map_for_as;;

let es_formula_vdot_name_for_as = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.es_formula_vdot_name_for_as;;

let let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_tag_as_equal_tag_vdot_make_sym_as_soi_as_in;;

let for_at = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.for_at;;

let let_for_at_equal_retrieve_tag_at_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_for_at_equal_retrieve_tag_at_in;;

let let_make_soi_at_equal_function = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_make_soi_at_equal_function;;

let let_make_tag_at_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_make_tag_at_equal;;

let let_name_for_at_equal = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_name_for_at_equal;;

let let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in;;

let let_sym_at_equal_symbol_of_formula_for_at_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_sym_at_equal_symbol_of_formula_for_at_in;;

let et_formula_vdot_name = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.et_formula_vdot_name;;

let let_for_das_equal_das_vdot_make_tag_at_builder_list_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_for_das_equal_das_vdot_make_tag_at_builder_list_in;;

let let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in = camlline_symbol_of_camlline_for_formula_symbol Camlline_for_formula_symbol_v.let_soi_at_equal_tag_vdot_sole_index_off_tag_tag_at_in;;

let pipe_ecstring_arrow_et_symbol_tdot_ec_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_ecstring_arrow_et_symbol_tdot_ec_string;;

let et_symbol_tdot_es = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.et_symbol_tdot_es;;

let let_sym_at_equal_et_symbol_vdot_es_in = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_sym_at_equal_et_symbol_vdot_es_in;;

let let_es_equal_et_symbol_tdot_es = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_es_equal_et_symbol_tdot_es;;

let pipe_et_symbol_tdot_es_arrow = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_et_symbol_tdot_es_arrow;;

let pipe_et_symbol_tdot_es_arrow_emptystring = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_et_symbol_tdot_es_arrow_emptystring;;

let pipe_et_symbol_tdot_es_arrow_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_et_symbol_tdot_es_arrow_string;;

let et_symbol_tdot_es_symbol = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.et_symbol_tdot_es_symbol;;

let let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es;;

let let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg;;

let pipe_et_symbol_tdot_es_symbol_sym_as_arrow = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_et_symbol_tdot_es_symbol_sym_as_arrow;;

let et_symbol_of_es_symbol_sym_as = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.et_symbol_of_es_symbol_sym_as;;

let et_symbol_tdot_es_symbol_sym_as = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.et_symbol_tdot_es_symbol_sym_as;;

let pipe_et_symbol_tdot_es_symbol_underscore_arrow_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_et_symbol_tdot_es_symbol_underscore_arrow_string;;

let try_et_symbol_of_es_symbol = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.try_et_symbol_of_es_symbol;;

let et_symbol_tdot_es_sarg = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.et_symbol_tdot_es_sarg;;

let let_es_sarg_equal_et_symbol_tdot_es_sarg = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_es_sarg_equal_et_symbol_tdot_es_sarg;;

let pipe_et_symbol_tdot_es_sarg_arrow = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_et_symbol_tdot_es_sarg_arrow;;

let pipe_et_symbol_tdot_es_sarg_arrow_sarg = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_et_symbol_tdot_es_sarg_arrow_sarg;;

let pipe_et_symbol_tdot_es_underscore_arrow_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_et_symbol_tdot_es_underscore_arrow_string;;

let let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_dss_of_sym_equal_localset_symbol_vdot_localset_symbol_of_eb_symbol_in;;

let et_symbol_vdot_name_sym_at = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.et_symbol_vdot_name_sym_at;;

let et_symbol_vdot_string_off_sym_at = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.et_symbol_vdot_string_off_sym_at;;

let let_et_symbol_equal_et_symbol_tdot_et = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_et_symbol_equal_et_symbol_tdot_et;;

let let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_sym_at_equal_tag_vdot_symbol_off_tag_tag_at_in;;

let pipe_et_symbol_tdot_et_symbol_arrow_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_et_symbol_tdot_et_symbol_arrow_string;;

let failwith_not_a_et_symbol_make = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_et_symbol_make;;

let failwith_not_a_et_symbol_name = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_et_symbol_name;;

let failwith_not_a_et_symbol_string_off = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_et_symbol_string_off;;

let failwith_not_a_topson_bare_et_symbol_make = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_topson_bare_et_symbol_make;;

let failwith_not_a_topson_bare_et_symbol_name = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_topson_bare_et_symbol_name;;

let failwith_not_a_topson_bare_et_symbol_string_off = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_topson_bare_et_symbol_string_off;;

let failwith_not_a_topson_notleaf_et_symbol_make = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_topson_notleaf_et_symbol_make;;

let failwith_not_a_topson_notleaf_et_symbol_name = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_topson_notleaf_et_symbol_name;;

let failwith_not_a_topson_notleaf_et_symbol_string_off = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_topson_notleaf_et_symbol_string_off;;

let failwith_not_a_topson_ofstring_et_symbol_make = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_topson_ofstring_et_symbol_make;;

let failwith_not_a_topson_ofstring_et_symbol_name = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_topson_ofstring_et_symbol_name;;

let failwith_not_a_topson_ofstring_et_symbol_string_off = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_a_topson_ofstring_et_symbol_string_off;;

let let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_sym_at_equal_et_symbol_vdot_make_nam_at_s_in;;

let let_underscore_print_error_make_et_of_string_of_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_underscore_print_error_make_et_of_string_of_string;;

let let_underscore_print_error_name_et_of_string_of_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_underscore_print_error_name_et_of_string_of_string;;

let let_underscore_print_error_string_off_et_of_string_of_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.let_underscore_print_error_string_off_et_of_string_of_string;;

let print_fatal_error_make_et_of_string_of_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.print_fatal_error_make_et_of_string_of_string;;

let print_fatal_error_name_et_of_string_of_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.print_fatal_error_name_et_of_string_of_string;;

let print_fatal_error_string_off_et_of_string_of_string = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.print_fatal_error_string_off_et_of_string_of_string;;

let with_failure_not_a_topson_bare_et_symbol_arrow_make = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.with_failure_not_a_topson_bare_et_symbol_arrow_make;;

let with_failure_not_a_topson_bare_et_symbol_arrow_name = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.with_failure_not_a_topson_bare_et_symbol_arrow_name;;

let with_failure_not_a_topson_bare_et_symbol_arrow_string_off = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.with_failure_not_a_topson_bare_et_symbol_arrow_string_off;;

let with_failure_not_a_topson_notleaf_et_symbol_arrow_make = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.with_failure_not_a_topson_notleaf_et_symbol_arrow_make;;

let with_failure_not_a_topson_notleaf_et_symbol_arrow_name = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.with_failure_not_a_topson_notleaf_et_symbol_arrow_name;;

let with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.with_failure_not_a_topson_notleaf_et_symbol_arrow_string_off;;

let with_failure_not_a_topson_ofstring_et_symbol_arrow_make = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.with_failure_not_a_topson_ofstring_et_symbol_arrow_make;;

let with_failure_not_a_topson_ofstring_et_symbol_arrow_name = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.with_failure_not_a_topson_ofstring_et_symbol_arrow_name;;

let with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.with_failure_not_a_topson_ofstring_et_symbol_arrow_string_off;;

let match_sym_at_with = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.match_sym_at_with;;

let pipe_esstring_arrow_es = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_esstring_arrow_es;;

let pipe_esstring_arrow_es_sarg = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_esstring_arrow_es_sarg;;

let lpar_es_symbol_vdot_make_of_string_of_string_rpar = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.lpar_es_symbol_vdot_make_of_string_of_string_rpar;;

let failwith_not_es_symbol = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.failwith_not_es_symbol;;

let with_failure_not_es_symbol_arrow = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.with_failure_not_es_symbol_arrow;;

let es_symbol_vdot_string_off_sym_as = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.es_symbol_vdot_string_off_sym_as;;

let es_symbol_vdot_name_sym_as = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.es_symbol_vdot_name_sym_as;;

let pipe_string_arrow_ec = camlline_symbol_of_camlline_for_symbol_symbol Camlline_for_symbol_symbol_v.pipe_string_arrow_ec;;

let lpar_a_tag_rpar = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.lpar_a_tag_rpar;;

let lpar_a_b_tag_rpar = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.lpar_a_b_tag_rpar;;

let let_map_equal_das_vdot_map = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.let_map_equal_das_vdot_map;;

let let_map2_equal_das_vdot_map2 = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.let_map2_equal_das_vdot_map2;;

let let_iter_equal_das_vdot_iter = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.let_iter_equal_das_vdot_iter;;

let let_iter2_equal_das_vdot_iter2 = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.let_iter2_equal_das_vdot_iter2;;

let das_vdot_make_tag_a = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.das_vdot_make_tag_a;;

let das_vdot_make_tag_a_tag_b = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.das_vdot_make_tag_a_tag_b;;

let das_vdot_make_tag_a_tag_b_tag_c = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.das_vdot_make_tag_a_tag_b_tag_c;;

let camlline_for_tag_datastructure_function_name = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.camlline_for_tag_datastructure_function_name;;

let type_et_tag_equal_et_symbol_tdot_et_symbol_tag = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.type_et_tag_equal_et_symbol_tdot_et_symbol_tag;;

let let_make_soi_at_nam_at_s_equal = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.let_make_soi_at_nam_at_s_equal;;

let let_make_sym_at_soi_at_equal = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.let_make_sym_at_soi_at_equal;;

let let_name_tag_at_equal = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.let_name_tag_at_equal;;

let tag_vdot_make_sym_at_soi_at = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.tag_vdot_make_sym_at_soi_at;;

let tag_vdot_name_et_symbol_vdot_name_tag_at = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.tag_vdot_name_et_symbol_vdot_name_tag_at;;

let let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.let_tag_ec_equal_tag_vdot_make_ec_symbol_sym_ac_soi_at_in;;

let tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.tag_vdot_map_left_et_symbol_vdot_ec_symbol_off_et_symbol_tag_at;;

let tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.tag_vdot_map_left_et_symbol_vdot_et_symbol_of_ec_symbol_tag_ac;;

let tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.tag_vdot_map_left_et_symbol_vdot_is_ec_symbol_off_et_symbol_tag_at;;

let lpar_a_b_c_tag_rpar = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.lpar_a_b_c_tag_rpar;;

let lpar_a_b_c_tag_rpar_tree_footed_capped = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.lpar_a_b_c_tag_rpar_tree_footed_capped;;

let lpar_a_b_c_tag_rpar_tree_leafed_capped = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.lpar_a_b_c_tag_rpar_tree_leafed_capped;;

let lpar_a_b_c_tag_rpar_triplet = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.lpar_a_b_c_tag_rpar_triplet;;

let lpar_a_b_c_tag_rpar_triplet_list = camlline_symbol_of_camlline_for_tag_symbol Camlline_for_tag_symbol_v.lpar_a_b_c_tag_rpar_triplet_list;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_symbol_of_camlline_constant_symbol
      (Camlline_constant_symbol_v.make nam s)
  with Failure "Not_Camlline_constant_symbol:Camlline_constant_symbol_v:make" ->
  try camlline_symbol_of_camlline_for_any_symbol
      (Camlline_for_any_symbol_v.make nam s)
  with Failure "Not_Camlline_for_any_symbol:Camlline_for_any_symbol_v:make" ->
  try camlline_symbol_of_camlline_for_formula_symbol
      (Camlline_for_formula_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_symbol:Camlline_for_formula_symbol_v:make" ->
  try camlline_symbol_of_camlline_for_symbol_symbol
      (Camlline_for_symbol_symbol_v.make nam s)
  with Failure "Not_Camlline_for_symbol_symbol:Camlline_for_symbol_symbol_v:make" ->
  try camlline_symbol_of_camlline_for_tag_symbol
      (Camlline_for_tag_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_symbol:Camlline_for_tag_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline subtype" nam s)
      "it does not exists"
      "Check file camlline_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_symbol:Camlline_symbol_v.ml:make"
;;





