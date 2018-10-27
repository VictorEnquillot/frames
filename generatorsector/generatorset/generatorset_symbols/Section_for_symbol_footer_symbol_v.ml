(** {3 Section_for_symbol_footer_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Section_for_symbol_footer_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol sym_sft ->
    Section_for_symbol_footer_top_symbol_v.name sym_sft
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol sym_sft ->
  Section_for_symbol_footer_top_symbol_v.string_off sym_sft
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fsf =
  Format.sprintf "Section_for_symbol_footer_symbol_t.%s" (String.capitalize (name sym_fsf))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fsf =
  Format.sprintf "%s \"%s\"" (longname sym_fsf) (string_off sym_fsf)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol = function
  | Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol sym_sft -> sym_sft
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol = function
  | Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_failwith_not_a_topson_notleaf sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_failwith_not_a_topson_notleaf sym_sft
    end
;;

let is_let_underscore_print_error_failwith_make sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_let_underscore_print_error_failwith_make sym_sft
    end
;;

let is_let_underscore_print_error_failwith_name sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_let_underscore_print_error_failwith_name sym_sft
    end
;;

let is_let_underscore_print_error_failwith_string_off sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_let_underscore_print_error_failwith_string_off sym_sft
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_make sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_make sym_sft
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_name sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_name sym_sft
    end
;;

let is_pipe_underscore_failwith_not_a_topson_bare_string_off sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_pipe_underscore_failwith_not_a_topson_bare_string_off sym_sft
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_make sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_make sym_sft
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_name sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_name sym_sft
    end
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_string_off sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_pipe_underscore_failwith_not_a_topson_notleaf_string_off sym_sft
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_make sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_make sym_sft
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_name sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_name sym_sft
    end
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_string_off sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_pipe_underscore_failwith_not_a_topson_ofstring_string_off sym_sft
    end
;;

let is_print_fatal_error_make sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_print_fatal_error_make sym_sft
    end
;;

let is_print_fatal_error_name sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_print_fatal_error_name sym_sft
    end
;;

let is_print_fatal_error_string_off sym_fsf =
  if not (is_section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf)
  then false
  else
    begin
      let sym_sft = section_for_symbol_footer_top_symbol_off_section_for_symbol_footer_symbol sym_fsf in
      Section_for_symbol_footer_top_symbol_v.is_print_fatal_error_string_off sym_sft
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol sym_sft = 
  Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol sym_sft
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let failwith_not_a_topson_notleaf = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.failwith_not_a_topson_notleaf;;

let let_underscore_print_error_failwith_make = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.let_underscore_print_error_failwith_make;;

let let_underscore_print_error_failwith_name = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.let_underscore_print_error_failwith_name;;

let let_underscore_print_error_failwith_string_off = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.let_underscore_print_error_failwith_string_off;;

let pipe_underscore_failwith_not_a_topson_bare_make = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_bare_make;;

let pipe_underscore_failwith_not_a_topson_bare_name = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_bare_name;;

let pipe_underscore_failwith_not_a_topson_bare_string_off = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_bare_string_off;;

let pipe_underscore_failwith_not_a_topson_notleaf_make = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_make;;

let pipe_underscore_failwith_not_a_topson_notleaf_name = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_name;;

let pipe_underscore_failwith_not_a_topson_notleaf_string_off = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_notleaf_string_off;;

let pipe_underscore_failwith_not_a_topson_ofstring_make = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_make;;

let pipe_underscore_failwith_not_a_topson_ofstring_name = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_name;;

let pipe_underscore_failwith_not_a_topson_ofstring_string_off = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.pipe_underscore_failwith_not_a_topson_ofstring_string_off;;

let print_fatal_error_make = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.print_fatal_error_make;;

let print_fatal_error_name = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.print_fatal_error_name;;

let print_fatal_error_string_off = section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol Section_for_symbol_footer_top_symbol_v.print_fatal_error_string_off;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_for_symbol_footer_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_symbol_footer_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_for_symbol_footer_symbol_of_section_for_symbol_footer_top_symbol
      (Section_for_symbol_footer_top_symbol_v.make nam s)
  with Failure "Not_Section_for_symbol_footer_top_symbol:Section_for_symbol_footer_top_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_for_symbol_footer_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_symbol_footer_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_symbol_footer_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_symbol_footer_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_symbol_footer subtype" nam s)
      "it does not exists"
      "Check file section_for_symbol_footer_symbol_v.ml"
    in
    failwith "Not_a_valid_section_for_symbol_footer_symbol:Section_for_symbol_footer_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator section_for_symbol_footer implementation_for_symbol symbol at 10:33 30 Apr 2013. *)



