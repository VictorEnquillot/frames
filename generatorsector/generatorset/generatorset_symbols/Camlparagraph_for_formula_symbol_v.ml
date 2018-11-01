(** {3 Camlparagraph_for_formula_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlparagraph_for_formula_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol sym_ffl ->
    Camlparagraph_for_formula_let_symbol_v.name sym_ffl
  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type -> "camlparagraph_for_formula_type"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol sym_ffl ->
  Camlparagraph_for_formula_let_symbol_v.string_off sym_ffl
  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cff =
  Format.sprintf "Camlparagraph_for_formula_symbol_t.%s" (String.capitalize_ascii (name sym_cff))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cff =
  Format.sprintf "%s \"%s\"" (longname sym_cff) (string_off sym_cff)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol = function
  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol sym_ffl -> sym_ffl
  | sym_cff -> Error_messages_v.print_fatal_error
      nam_cod "camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol"
      "Camlparagraph_for_formula_let_symbol"
      (name sym_cff) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlparagraph_for_formula_let_argument_symbol_off_camlparagraph_for_formula_symbol sym_cff = 
  let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
    Camlparagraph_for_formula_let_symbol_v.camlparagraph_for_formula_let_argument_symbol_off_camlparagraph_for_formula_let_symbol sym_ffl
;;

let camlparagraph_for_formula_let_match_symbol_off_camlparagraph_for_formula_symbol sym_cff = 
  let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
    Camlparagraph_for_formula_let_symbol_v.camlparagraph_for_formula_let_match_symbol_off_camlparagraph_for_formula_let_symbol sym_ffl
;;


(** {6 Querying_topson_bare_for_symbol} *)

let is_camlparagraph_for_formula_type = function
  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol = function
  | Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_build_n_store_basic_sons sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_build_n_store_basic_sons sym_ffl
    end
;;

let is_let_build_n_store_proper_sons sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_build_n_store_proper_sons sym_ffl
    end
;;

let is_let_builder_tag_list_off_top_tag sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_builder_tag_list_off_top_tag sym_ffl
    end
;;

let is_let_data_tag_list_off_top_tag sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_data_tag_list_off_top_tag sym_ffl
    end
;;

let is_let_documentation_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_documentation_for_formula sym_ffl
    end
;;

let is_let_fullname_argument_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_fullname_argument_for_formula sym_ffl
    end
;;

let is_let_iter2_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_iter2_for_formula sym_ffl
    end
;;

let is_let_iter_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_iter_for_formula sym_ffl
    end
;;

let is_let_longname_argument_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_longname_argument_for_formula sym_ffl
    end
;;

let is_let_make_arguments_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_make_arguments_for_formula sym_ffl
    end
;;

let is_let_map2_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_map2_for_formula sym_ffl
    end
;;

let is_let_map_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_map_for_formula sym_ffl
    end
;;

let is_let_name_argument_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_name_argument_for_formula sym_ffl
    end
;;

let is_let_retrieve_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_retrieve_for_formula sym_ffl
    end
;;

let is_let_string_off_argument_for_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_string_off_argument_for_formula sym_ffl
    end
;;

let is_let_builder_tag_list_off_top_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_builder_tag_list_off_top_formula sym_ffl
    end
;;

let is_let_data_tag_list_off_top_formula sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_data_tag_list_off_top_formula sym_ffl
    end
;;

let is_let_symbol_of_formula_equal_function sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
      let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
      Camlparagraph_for_formula_let_symbol_v.is_let_symbol_of_formula_equal_function sym_ffl
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlparagraph_for_formula_let_argument_symbol_off_camlparagraph_for_formula_symbol sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
  Camlparagraph_for_formula_let_symbol_v.is_camlparagraph_for_formula_let_argument_symbol_off_camlparagraph_for_formula_let_symbol sym_ffl
    end
;;

let is_camlparagraph_for_formula_let_match_symbol_off_camlparagraph_for_formula_symbol sym_cff =
  if not (is_camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff)
  then false
  else
    begin
  let sym_ffl = camlparagraph_for_formula_let_symbol_off_camlparagraph_for_formula_symbol sym_cff in
  Camlparagraph_for_formula_let_symbol_v.is_camlparagraph_for_formula_let_match_symbol_off_camlparagraph_for_formula_let_symbol sym_ffl
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol sym_ffl = 
  Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol sym_ffl
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_fla = 
  let sym_ffl = Camlparagraph_for_formula_let_symbol_v.camlparagraph_for_formula_let_symbol_of_camlparagraph_for_formula_let_argument_symbol sym_fla in
    camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol sym_ffl
;;

let camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_match_symbol sym_flm = 
  let sym_ffl = Camlparagraph_for_formula_let_symbol_v.camlparagraph_for_formula_let_symbol_of_camlparagraph_for_formula_let_match_symbol sym_flm in
    camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol sym_ffl
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)

let camlparagraph_for_formula_type = Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_type;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_build_n_store_basic_sons = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_build_n_store_basic_sons;;

let let_build_n_store_proper_sons = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_build_n_store_proper_sons;;

let let_builder_tag_list_off_top_tag = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_builder_tag_list_off_top_tag;;

let let_data_tag_list_off_top_tag = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_data_tag_list_off_top_tag;;

let let_documentation_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_documentation_for_formula;;

let let_fullname_argument_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_fullname_argument_for_formula;;

let let_iter2_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_iter2_for_formula;;

let let_iter_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_iter_for_formula;;

let let_longname_argument_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_longname_argument_for_formula;;

let let_make_arguments_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_make_arguments_for_formula;;

let let_map2_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_map2_for_formula;;

let let_map_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_map_for_formula;;

let let_name_argument_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_name_argument_for_formula;;

let let_retrieve_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_retrieve_for_formula;;

let let_string_off_argument_for_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_string_off_argument_for_formula;;

let let_builder_tag_list_off_top_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_builder_tag_list_off_top_formula;;

let let_data_tag_list_off_top_formula = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_data_tag_list_off_top_formula;;

let let_symbol_of_formula_equal_function = camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol Camlparagraph_for_formula_let_symbol_v.let_symbol_of_formula_equal_function;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "camlparagraph_for_formula_type" -> camlparagraph_for_formula_type
  | _ ->
  failwith "Not_a_topson_bare:Camlparagraph_for_formula_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlparagraph_for_formula_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlparagraph_for_formula_symbol_of_camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_v.make nam s)
  with Failure "Not_Camlparagraph_for_formula_let_symbol:Camlparagraph_for_formula_let_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlparagraph_for_formula_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlparagraph_for_formula_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlparagraph_for_formula_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlparagraph_for_formula_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlparagraph_for_formula subtype" nam s)
      "it does not exists"
      "Check file camlparagraph_for_formula_symbol_v.ml"
    in
    failwith "Not_a_valid_camlparagraph_for_formula_symbol:Camlparagraph_for_formula_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlparagraph_for_formula implementation_for_symbol symbol at 15:11 24 Apr 2013. *)



