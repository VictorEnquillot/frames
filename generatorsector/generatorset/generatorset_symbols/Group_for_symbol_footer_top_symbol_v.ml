(** {3 Group_for_symbol_footer_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Group_for_symbol_footer_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Group_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf -> "failwith_not_a_topson_notleaf"
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make -> "let_underscore_print_error_failwith_make"
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name -> "let_underscore_print_error_failwith_name"
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off -> "let_underscore_print_error_failwith_string_off"
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make -> "pipe_underscore_failwith_not_a_topson_bare_make"
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name -> "pipe_underscore_failwith_not_a_topson_bare_name"
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off -> "pipe_underscore_failwith_not_a_topson_bare_string_off"
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make -> "pipe_underscore_failwith_not_a_topson_notleaf_make"
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name -> "pipe_underscore_failwith_not_a_topson_notleaf_name"
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off -> "pipe_underscore_failwith_not_a_topson_notleaf_string_off"
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make -> "pipe_underscore_failwith_not_a_topson_ofstring_make"
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name -> "pipe_underscore_failwith_not_a_topson_ofstring_name"
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off -> "pipe_underscore_failwith_not_a_topson_ofstring_string_off"
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_make -> "print_fatal_error_make"
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_name -> "print_fatal_error_name"
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off -> "print_fatal_error_string_off"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Group_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf -> ""
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make -> ""
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name -> ""
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off -> ""
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make -> ""
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name -> ""
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off -> ""
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make -> ""
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name -> ""
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off -> ""
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make -> ""
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name -> ""
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off -> ""
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_make -> ""
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_name -> ""
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_gft =
  Format.sprintf "Group_for_symbol_footer_top_symbol_t.%s" (String.capitalize (name sym_gft))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_gft =
  Format.sprintf "%s \"%s\"" (longname sym_gft) (string_off sym_gft)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_failwith_not_a_topson_notleaf = function
  | Group_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf -> true
  | _ -> false
;;

let is_let_underscore_print_error_failwith_make = function
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make -> true
  | _ -> false
;;

let is_let_underscore_print_error_failwith_name = function
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name -> true
  | _ -> false
;;

let is_let_underscore_print_error_failwith_string_off = function
  | Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off -> true
  | _ -> false
;;

let is_pipe_underscore_failwith_not_a_topson_bare_make = function
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make -> true
  | _ -> false
;;

let is_pipe_underscore_failwith_not_a_topson_bare_name = function
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name -> true
  | _ -> false
;;

let is_pipe_underscore_failwith_not_a_topson_bare_string_off = function
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off -> true
  | _ -> false
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_make = function
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make -> true
  | _ -> false
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_name = function
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name -> true
  | _ -> false
;;

let is_pipe_underscore_failwith_not_a_topson_notleaf_string_off = function
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off -> true
  | _ -> false
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_make = function
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make -> true
  | _ -> false
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_name = function
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name -> true
  | _ -> false
;;

let is_pipe_underscore_failwith_not_a_topson_ofstring_string_off = function
  | Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off -> true
  | _ -> false
;;

let is_print_fatal_error_make = function
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_make -> true
  | _ -> false
;;

let is_print_fatal_error_name = function
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_name -> true
  | _ -> false
;;

let is_print_fatal_error_string_off = function
  | Group_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let failwith_not_a_topson_notleaf = Group_for_symbol_footer_top_symbol_t.Failwith_not_a_topson_notleaf;;

let let_underscore_print_error_failwith_make = Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make;;

let let_underscore_print_error_failwith_name = Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_name;;

let let_underscore_print_error_failwith_string_off = Group_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_string_off;;

let pipe_underscore_failwith_not_a_topson_bare_make = Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_make;;

let pipe_underscore_failwith_not_a_topson_bare_name = Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_name;;

let pipe_underscore_failwith_not_a_topson_bare_string_off = Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_bare_string_off;;

let pipe_underscore_failwith_not_a_topson_notleaf_make = Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_make;;

let pipe_underscore_failwith_not_a_topson_notleaf_name = Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_name;;

let pipe_underscore_failwith_not_a_topson_notleaf_string_off = Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_notleaf_string_off;;

let pipe_underscore_failwith_not_a_topson_ofstring_make = Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_make;;

let pipe_underscore_failwith_not_a_topson_ofstring_name = Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_name;;

let pipe_underscore_failwith_not_a_topson_ofstring_string_off = Group_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_ofstring_string_off;;

let print_fatal_error_make = Group_for_symbol_footer_top_symbol_t.Print_fatal_error_make;;

let print_fatal_error_name = Group_for_symbol_footer_top_symbol_t.Print_fatal_error_name;;

let print_fatal_error_string_off = Group_for_symbol_footer_top_symbol_t.Print_fatal_error_string_off;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "failwith_not_a_topson_notleaf" -> failwith_not_a_topson_notleaf
  | "let_underscore_print_error_failwith_make" -> let_underscore_print_error_failwith_make
  | "let_underscore_print_error_failwith_name" -> let_underscore_print_error_failwith_name
  | "let_underscore_print_error_failwith_string_off" -> let_underscore_print_error_failwith_string_off
  | "pipe_underscore_failwith_not_a_topson_bare_make" -> pipe_underscore_failwith_not_a_topson_bare_make
  | "pipe_underscore_failwith_not_a_topson_bare_name" -> pipe_underscore_failwith_not_a_topson_bare_name
  | "pipe_underscore_failwith_not_a_topson_bare_string_off" -> pipe_underscore_failwith_not_a_topson_bare_string_off
  | "pipe_underscore_failwith_not_a_topson_notleaf_make" -> pipe_underscore_failwith_not_a_topson_notleaf_make
  | "pipe_underscore_failwith_not_a_topson_notleaf_name" -> pipe_underscore_failwith_not_a_topson_notleaf_name
  | "pipe_underscore_failwith_not_a_topson_notleaf_string_off" -> pipe_underscore_failwith_not_a_topson_notleaf_string_off
  | "pipe_underscore_failwith_not_a_topson_ofstring_make" -> pipe_underscore_failwith_not_a_topson_ofstring_make
  | "pipe_underscore_failwith_not_a_topson_ofstring_name" -> pipe_underscore_failwith_not_a_topson_ofstring_name
  | "pipe_underscore_failwith_not_a_topson_ofstring_string_off" -> pipe_underscore_failwith_not_a_topson_ofstring_string_off
  | "print_fatal_error_make" -> print_fatal_error_make
  | "print_fatal_error_name" -> print_fatal_error_name
  | "print_fatal_error_string_off" -> print_fatal_error_string_off
  | _ ->
  failwith "Not_a_topson_bare:Group_for_symbol_footer_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Group_for_symbol_footer_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Group_for_symbol_footer_top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Group_for_symbol_footer_top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Group_for_symbol_footer_top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Group_for_symbol_footer_top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Group_for_symbol_footer_top subtype" nam s)
      "it does not exists"
      "Check file Group_for_symbol_footer_top_symbol_v.ml"
    in
    failwith "Not_a_group_for_symbol_footer_top_symbol:Group_for_symbol_footer_top_symbol_v.ml:make"
;;


(** Group_for_symbol_footer_top_symbol_v at 15:34:11 on 30 May 2013. created by version v1.13 of generator *)



