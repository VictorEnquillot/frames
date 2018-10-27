(** {3 Section_for_any_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Section_for_any_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_any_body_symbol_t.Section_for_any_body_son_symbol sym_sbs ->
    Section_for_any_body_son_symbol_v.name sym_sbs
  | Section_for_any_body_symbol_t.Section_for_any_body_top_symbol sym_sbt ->
    Section_for_any_body_top_symbol_v.name sym_sbt
  | Section_for_any_body_symbol_t.Section_for_any_body_top_main_symbol sym_stm ->
    Section_for_any_body_top_main_symbol_v.name sym_stm
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_any_body_symbol_t.Section_for_any_body_son_symbol sym_sbs ->
  Section_for_any_body_son_symbol_v.string_off sym_sbs
  | Section_for_any_body_symbol_t.Section_for_any_body_top_symbol sym_sbt ->
  Section_for_any_body_top_symbol_v.string_off sym_sbt
  | Section_for_any_body_symbol_t.Section_for_any_body_top_main_symbol sym_stm ->
  Section_for_any_body_top_main_symbol_v.string_off sym_stm
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sab =
  Format.sprintf "Section_for_any_body_symbol_t.%s" (String.capitalize (name sym_sab))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sab =
  Format.sprintf "%s \"%s\"" (longname sym_sab) (string_off sym_sab)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_any_body_son_symbol_off_section_for_any_body_symbol = function
  | Section_for_any_body_symbol_t.Section_for_any_body_son_symbol sym_sbs -> sym_sbs
  | sym_sab -> Error_messages_v.print_fatal_error
      nam_cod "section_for_any_body_son_symbol_off_section_for_any_body_symbol"
      "Section_for_any_body_son_symbol"
      (name sym_sab) "check"
;;

let section_for_any_body_top_symbol_off_section_for_any_body_symbol = function
  | Section_for_any_body_symbol_t.Section_for_any_body_top_symbol sym_sbt -> sym_sbt
  | sym_sab -> Error_messages_v.print_fatal_error
      nam_cod "section_for_any_body_top_symbol_off_section_for_any_body_symbol"
      "Section_for_any_body_top_symbol"
      (name sym_sab) "check"
;;

let section_for_any_body_top_main_symbol_off_section_for_any_body_symbol = function
  | Section_for_any_body_symbol_t.Section_for_any_body_top_main_symbol sym_stm -> sym_stm
  | sym_sab -> Error_messages_v.print_fatal_error
      nam_cod "section_for_any_body_top_main_symbol_off_section_for_any_body_symbol"
      "Section_for_any_body_top_main_symbol"
      (name sym_sab) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_any_body_son_symbol_off_section_for_any_body_symbol = function
  | Section_for_any_body_symbol_t.Section_for_any_body_son_symbol _ -> true
  | _ -> false
;;

let is_section_for_any_body_top_symbol_off_section_for_any_body_symbol = function
  | Section_for_any_body_symbol_t.Section_for_any_body_top_symbol _ -> true
  | _ -> false
;;

let is_section_for_any_body_top_main_symbol_off_section_for_any_body_symbol = function
  | Section_for_any_body_symbol_t.Section_for_any_body_top_main_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_pipe_topson_any_type_notleaf_constructors sym_sab =
  if not (is_section_for_any_body_son_symbol_off_section_for_any_body_symbol sym_sab)
  then false
  else
    begin
      let sym_sbs = section_for_any_body_son_symbol_off_section_for_any_body_symbol sym_sab in
      Section_for_any_body_son_symbol_v.is_pipe_topson_any_type_notleaf_constructors sym_sbs
    end
;;

let is_sprintf_for_any_fullname sym_sab =
  if not (is_section_for_any_body_top_symbol_off_section_for_any_body_symbol sym_sab)
  then false
  else
    begin
      let sym_sbt = section_for_any_body_top_symbol_off_section_for_any_body_symbol sym_sab in
      Section_for_any_body_top_symbol_v.is_sprintf_for_any_fullname sym_sbt
    end
;;

let is_sprintf_for_any_longname sym_sab =
  if not (is_section_for_any_body_top_symbol_off_section_for_any_body_symbol sym_sab)
  then false
  else
    begin
      let sym_sbt = section_for_any_body_top_symbol_off_section_for_any_body_symbol sym_sab in
      Section_for_any_body_top_symbol_v.is_sprintf_for_any_longname sym_sbt
    end
;;

let is_make_tag_top sym_sab =
  if not (is_section_for_any_body_top_main_symbol_off_section_for_any_body_symbol sym_sab)
  then false
  else
    begin
      let sym_stm = section_for_any_body_top_main_symbol_off_section_for_any_body_symbol sym_sab in
      Section_for_any_body_top_main_symbol_v.is_make_tag_top sym_stm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_for_any_body_symbol_of_section_for_any_body_son_symbol sym_sbs = 
  Section_for_any_body_symbol_t.Section_for_any_body_son_symbol sym_sbs
;;

let section_for_any_body_symbol_of_section_for_any_body_top_symbol sym_sbt = 
  Section_for_any_body_symbol_t.Section_for_any_body_top_symbol sym_sbt
;;

let section_for_any_body_symbol_of_section_for_any_body_top_main_symbol sym_stm = 
  Section_for_any_body_symbol_t.Section_for_any_body_top_main_symbol sym_stm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let pipe_topson_any_type_notleaf_constructors = section_for_any_body_symbol_of_section_for_any_body_son_symbol Section_for_any_body_son_symbol_v.pipe_topson_any_type_notleaf_constructors;;

let sprintf_for_any_fullname = section_for_any_body_symbol_of_section_for_any_body_top_symbol Section_for_any_body_top_symbol_v.sprintf_for_any_fullname;;

let sprintf_for_any_longname = section_for_any_body_symbol_of_section_for_any_body_top_symbol Section_for_any_body_top_symbol_v.sprintf_for_any_longname;;

let make_tag_top = section_for_any_body_symbol_of_section_for_any_body_top_main_symbol Section_for_any_body_top_main_symbol_v.make_tag_top;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_for_any_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_any_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_for_any_body_symbol_of_section_for_any_body_son_symbol
      (Section_for_any_body_son_symbol_v.make nam s)
  with Failure "Not_a_section_for_any_body_son_symbol:Section_for_any_body_son_symbol_v:make" ->
  try section_for_any_body_symbol_of_section_for_any_body_top_symbol
      (Section_for_any_body_top_symbol_v.make nam s)
  with Failure "Not_a_section_for_any_body_top_symbol:Section_for_any_body_top_symbol_v:make" ->
  try section_for_any_body_symbol_of_section_for_any_body_top_main_symbol
      (Section_for_any_body_top_main_symbol_v.make nam s)
  with Failure "Not_a_section_for_any_body_top_main_symbol:Section_for_any_body_top_main_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_for_any_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_any_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_any_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_any_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_any_body subtype" nam s)
      "it does not exists"
      "Check file Section_for_any_body_symbol_v.ml"
    in
    failwith "Not_a_section_for_any_body_symbol:Section_for_any_body_symbol_v.ml:make"
;;


(** Section_for_any_body_symbol_v at 11:55:56 on 30 May 2013. created by version v1.13 of generator *)



