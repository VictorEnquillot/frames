(** {3 Section_for_formula_header_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Section_for_formula_header_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_formula_header_symbol_t.Section_for_formula_header_constant_symbol sym_fhc ->
    Section_for_formula_header_constant_symbol_v.name sym_fhc
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_builder_symbol sym_htb ->
    Section_for_formula_header_top_builder_symbol_v.name sym_htb
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_data_symbol sym_htd ->
    Section_for_formula_header_top_data_symbol_v.name sym_htd
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_main_symbol sym_htm ->
    Section_for_formula_header_top_main_symbol_v.name sym_htm
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_formula_header_symbol_t.Section_for_formula_header_constant_symbol sym_fhc ->
  Section_for_formula_header_constant_symbol_v.string_off sym_fhc
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_builder_symbol sym_htb ->
  Section_for_formula_header_top_builder_symbol_v.string_off sym_htb
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_data_symbol sym_htd ->
  Section_for_formula_header_top_data_symbol_v.string_off sym_htd
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_main_symbol sym_htm ->
  Section_for_formula_header_top_main_symbol_v.string_off sym_htm
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ffh =
  Format.sprintf "Section_for_formula_header_symbol_t.%s" (String.capitalize (name sym_ffh))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ffh =
  Format.sprintf "%s \"%s\"" (longname sym_ffh) (string_off sym_ffh)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_formula_header_constant_symbol_off_section_for_formula_header_symbol = function
  | Section_for_formula_header_symbol_t.Section_for_formula_header_constant_symbol sym_fhc -> sym_fhc
  | sym_ffh -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_header_constant_symbol_off_section_for_formula_header_symbol"
      "Section_for_formula_header_constant_symbol"
      (name sym_ffh) "check"
;;

let section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol = function
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_builder_symbol sym_htb -> sym_htb
  | sym_ffh -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol"
      "Section_for_formula_header_top_builder_symbol"
      (name sym_ffh) "check"
;;

let section_for_formula_header_top_data_symbol_off_section_for_formula_header_symbol = function
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_data_symbol sym_htd -> sym_htd
  | sym_ffh -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_header_top_data_symbol_off_section_for_formula_header_symbol"
      "Section_for_formula_header_top_data_symbol"
      (name sym_ffh) "check"
;;

let section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol = function
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_main_symbol sym_htm -> sym_htm
  | sym_ffh -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol"
      "Section_for_formula_header_top_main_symbol"
      (name sym_ffh) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_formula_header_constant_symbol_off_section_for_formula_header_symbol = function
  | Section_for_formula_header_symbol_t.Section_for_formula_header_constant_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol = function
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_builder_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_header_top_data_symbol_off_section_for_formula_header_symbol = function
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_data_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol = function
  | Section_for_formula_header_symbol_t.Section_for_formula_header_top_main_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_symbol_of_formula_equal_function sym_ffh =
  if not (is_section_for_formula_header_constant_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_fhc = section_for_formula_header_constant_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_constant_symbol_v.is_let_symbol_of_formula_equal_function sym_fhc
    end
;;

let is_let_builder_tag_list_off_top_formula sym_ffh =
  if not (is_section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htb = section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_builder_symbol_v.is_let_builder_tag_list_off_top_formula sym_htb
    end
;;

let is_let_builder_tag_list_off_top_tag sym_ffh =
  if not (is_section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htb = section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_builder_symbol_v.is_let_builder_tag_list_off_top_tag sym_htb
    end
;;

let is_let_iter2_for_formula sym_ffh =
  if not (is_section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htb = section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_builder_symbol_v.is_let_iter2_for_formula sym_htb
    end
;;

let is_let_iter_for_formula sym_ffh =
  if not (is_section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htb = section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_builder_symbol_v.is_let_iter_for_formula sym_htb
    end
;;

let is_let_map2_for_formula sym_ffh =
  if not (is_section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htb = section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_builder_symbol_v.is_let_map2_for_formula sym_htb
    end
;;

let is_let_map_for_formula sym_ffh =
  if not (is_section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htb = section_for_formula_header_top_builder_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_builder_symbol_v.is_let_map_for_formula sym_htb
    end
;;

let is_let_data_tag_list_off_top_formula sym_ffh =
  if not (is_section_for_formula_header_top_data_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htd = section_for_formula_header_top_data_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_data_symbol_v.is_let_data_tag_list_off_top_formula sym_htd
    end
;;

let is_let_data_tag_list_off_top_tag sym_ffh =
  if not (is_section_for_formula_header_top_data_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htd = section_for_formula_header_top_data_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_data_symbol_v.is_let_data_tag_list_off_top_tag sym_htd
    end
;;

let is_let_build_n_store_basic_sons sym_ffh =
  if not (is_section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htm = section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_main_symbol_v.is_let_build_n_store_basic_sons sym_htm
    end
;;

let is_let_build_n_store_proper_sons sym_ffh =
  if not (is_section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htm = section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_main_symbol_v.is_let_build_n_store_proper_sons sym_htm
    end
;;

let is_let_make_arguments_equal_match_with sym_ffh =
  if not (is_section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol sym_ffh)
  then false
  else
    begin
      let sym_htm = section_for_formula_header_top_main_symbol_off_section_for_formula_header_symbol sym_ffh in
      Section_for_formula_header_top_main_symbol_v.is_let_make_arguments_equal_match_with sym_htm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_for_formula_header_symbol_of_section_for_formula_header_constant_symbol sym_fhc = 
  Section_for_formula_header_symbol_t.Section_for_formula_header_constant_symbol sym_fhc
;;

let section_for_formula_header_symbol_of_section_for_formula_header_top_builder_symbol sym_htb = 
  Section_for_formula_header_symbol_t.Section_for_formula_header_top_builder_symbol sym_htb
;;

let section_for_formula_header_symbol_of_section_for_formula_header_top_data_symbol sym_htd = 
  Section_for_formula_header_symbol_t.Section_for_formula_header_top_data_symbol sym_htd
;;

let section_for_formula_header_symbol_of_section_for_formula_header_top_main_symbol sym_htm = 
  Section_for_formula_header_symbol_t.Section_for_formula_header_top_main_symbol sym_htm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_symbol_of_formula_equal_function = section_for_formula_header_symbol_of_section_for_formula_header_constant_symbol Section_for_formula_header_constant_symbol_v.let_symbol_of_formula_equal_function;;

let let_builder_tag_list_off_top_formula = section_for_formula_header_symbol_of_section_for_formula_header_top_builder_symbol Section_for_formula_header_top_builder_symbol_v.let_builder_tag_list_off_top_formula;;

let let_builder_tag_list_off_top_tag = section_for_formula_header_symbol_of_section_for_formula_header_top_builder_symbol Section_for_formula_header_top_builder_symbol_v.let_builder_tag_list_off_top_tag;;

let let_iter2_for_formula = section_for_formula_header_symbol_of_section_for_formula_header_top_builder_symbol Section_for_formula_header_top_builder_symbol_v.let_iter2_for_formula;;

let let_iter_for_formula = section_for_formula_header_symbol_of_section_for_formula_header_top_builder_symbol Section_for_formula_header_top_builder_symbol_v.let_iter_for_formula;;

let let_map2_for_formula = section_for_formula_header_symbol_of_section_for_formula_header_top_builder_symbol Section_for_formula_header_top_builder_symbol_v.let_map2_for_formula;;

let let_map_for_formula = section_for_formula_header_symbol_of_section_for_formula_header_top_builder_symbol Section_for_formula_header_top_builder_symbol_v.let_map_for_formula;;

let let_data_tag_list_off_top_formula = section_for_formula_header_symbol_of_section_for_formula_header_top_data_symbol Section_for_formula_header_top_data_symbol_v.let_data_tag_list_off_top_formula;;

let let_data_tag_list_off_top_tag = section_for_formula_header_symbol_of_section_for_formula_header_top_data_symbol Section_for_formula_header_top_data_symbol_v.let_data_tag_list_off_top_tag;;

let let_build_n_store_basic_sons = section_for_formula_header_symbol_of_section_for_formula_header_top_main_symbol Section_for_formula_header_top_main_symbol_v.let_build_n_store_basic_sons;;

let let_build_n_store_proper_sons = section_for_formula_header_symbol_of_section_for_formula_header_top_main_symbol Section_for_formula_header_top_main_symbol_v.let_build_n_store_proper_sons;;

let let_make_arguments_equal_match_with = section_for_formula_header_symbol_of_section_for_formula_header_top_main_symbol Section_for_formula_header_top_main_symbol_v.let_make_arguments_equal_match_with;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_for_formula_header_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_formula_header_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_for_formula_header_symbol_of_section_for_formula_header_constant_symbol
      (Section_for_formula_header_constant_symbol_v.make nam s)
  with Failure "Not_Section_for_formula_header_constant_symbol:Section_for_formula_header_constant_symbol_v:make" ->
  try section_for_formula_header_symbol_of_section_for_formula_header_top_builder_symbol
      (Section_for_formula_header_top_builder_symbol_v.make nam s)
  with Failure "Not_Section_for_formula_header_top_builder_symbol:Section_for_formula_header_top_builder_symbol_v:make" ->
  try section_for_formula_header_symbol_of_section_for_formula_header_top_data_symbol
      (Section_for_formula_header_top_data_symbol_v.make nam s)
  with Failure "Not_Section_for_formula_header_top_data_symbol:Section_for_formula_header_top_data_symbol_v:make" ->
  try section_for_formula_header_symbol_of_section_for_formula_header_top_main_symbol
      (Section_for_formula_header_top_main_symbol_v.make nam s)
  with Failure "Not_Section_for_formula_header_top_main_symbol:Section_for_formula_header_top_main_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_for_formula_header_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_formula_header_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_formula_header_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_formula_header_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_formula_header subtype" nam s)
      "it does not exists"
      "Check file section_for_formula_header_symbol_v.ml"
    in
    failwith "Not_a_valid_section_for_formula_header_symbol:Section_for_formula_header_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator section_for_formula_header implementation_for_symbol symbol at 10:33 30 Apr 2013. *)



