(** {3 Figure_context_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Figure_context_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Figure_context_symbol_t.Figure_context_database_symbol sym_fcd ->
    Figure_context_database_symbol_v.name sym_fcd
  | Figure_context_symbol_t.Figure_context_databox_symbol sym_fcd ->
    Figure_context_databox_symbol_v.name sym_fcd
  | Figure_context_symbol_t.Figure_context_domain_symbol sym_fcd ->
    Figure_context_domain_symbol_v.name sym_fcd
  | Figure_context_symbol_t.Figure_context_sector_symbol sym_fcs ->
    Figure_context_sector_symbol_v.name sym_fcs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Figure_context_symbol_t.Figure_context_database_symbol sym_fcd ->
  Figure_context_database_symbol_v.string_off sym_fcd
  | Figure_context_symbol_t.Figure_context_databox_symbol sym_fcd ->
  Figure_context_databox_symbol_v.string_off sym_fcd
  | Figure_context_symbol_t.Figure_context_domain_symbol sym_fcd ->
  Figure_context_domain_symbol_v.string_off sym_fcd
  | Figure_context_symbol_t.Figure_context_sector_symbol sym_fcs ->
  Figure_context_sector_symbol_v.string_off sym_fcs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fco =
  Format.sprintf "Figure_context_symbol_t.%s" (String.capitalize_ascii (name sym_fco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fco =
  Format.sprintf "%s \"%s\"" (longname sym_fco) (string_off sym_fco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let figure_context_database_symbol_off_figure_context_symbol = function
  | Figure_context_symbol_t.Figure_context_database_symbol sym_fcd -> sym_fcd
  | sym_fco -> Error_messages_v.print_fatal_error
      nam_cod "figure_context_database_symbol_off_figure_context_symbol"
      "Figure_context_database_symbol"
      (name sym_fco) "check"
;;

let figure_context_databox_symbol_off_figure_context_symbol = function
  | Figure_context_symbol_t.Figure_context_databox_symbol sym_fcd -> sym_fcd
  | sym_fco -> Error_messages_v.print_fatal_error
      nam_cod "figure_context_databox_symbol_off_figure_context_symbol"
      "Figure_context_databox_symbol"
      (name sym_fco) "check"
;;

let figure_context_domain_symbol_off_figure_context_symbol = function
  | Figure_context_symbol_t.Figure_context_domain_symbol sym_fcd -> sym_fcd
  | sym_fco -> Error_messages_v.print_fatal_error
      nam_cod "figure_context_domain_symbol_off_figure_context_symbol"
      "Figure_context_domain_symbol"
      (name sym_fco) "check"
;;

let figure_context_sector_symbol_off_figure_context_symbol = function
  | Figure_context_symbol_t.Figure_context_sector_symbol sym_fcs -> sym_fcs
  | sym_fco -> Error_messages_v.print_fatal_error
      nam_cod "figure_context_sector_symbol_off_figure_context_symbol"
      "Figure_context_sector_symbol"
      (name sym_fco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_figure_context_database_symbol_off_figure_context_symbol = function
  | Figure_context_symbol_t.Figure_context_database_symbol _ -> true
  | _ -> false
;;

let is_figure_context_databox_symbol_off_figure_context_symbol = function
  | Figure_context_symbol_t.Figure_context_databox_symbol _ -> true
  | _ -> false
;;

let is_figure_context_domain_symbol_off_figure_context_symbol = function
  | Figure_context_symbol_t.Figure_context_domain_symbol _ -> true
  | _ -> false
;;

let is_figure_context_sector_symbol_off_figure_context_symbol = function
  | Figure_context_symbol_t.Figure_context_sector_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_figure_context_database_constructor sym_fco =
  if not (is_figure_context_database_symbol_off_figure_context_symbol sym_fco)
  then false
  else
    begin
      let sym_fcd = figure_context_database_symbol_off_figure_context_symbol sym_fco in
      Figure_context_database_symbol_v.is_figure_context_database_constructor sym_fcd
    end
;;

let is_figure_context_databox_constructor sym_fco =
  if not (is_figure_context_databox_symbol_off_figure_context_symbol sym_fco)
  then false
  else
    begin
      let sym_fcd = figure_context_databox_symbol_off_figure_context_symbol sym_fco in
      Figure_context_databox_symbol_v.is_figure_context_databox_constructor sym_fcd
    end
;;

let is_figure_context_domain_constructor sym_fco =
  if not (is_figure_context_domain_symbol_off_figure_context_symbol sym_fco)
  then false
  else
    begin
      let sym_fcd = figure_context_domain_symbol_off_figure_context_symbol sym_fco in
      Figure_context_domain_symbol_v.is_figure_context_domain_constructor sym_fcd
    end
;;

let is_figure_context_sector_constructor sym_fco =
  if not (is_figure_context_sector_symbol_off_figure_context_symbol sym_fco)
  then false
  else
    begin
      let sym_fcs = figure_context_sector_symbol_off_figure_context_symbol sym_fco in
      Figure_context_sector_symbol_v.is_figure_context_sector_constructor sym_fcs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let figure_context_symbol_of_figure_context_database_symbol sym_fcd = 
  Figure_context_symbol_t.Figure_context_database_symbol sym_fcd
;;

let figure_context_symbol_of_figure_context_databox_symbol sym_fcd = 
  Figure_context_symbol_t.Figure_context_databox_symbol sym_fcd
;;

let figure_context_symbol_of_figure_context_domain_symbol sym_fcd = 
  Figure_context_symbol_t.Figure_context_domain_symbol sym_fcd
;;

let figure_context_symbol_of_figure_context_sector_symbol sym_fcs = 
  Figure_context_symbol_t.Figure_context_sector_symbol sym_fcs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let figure_context_database_constructor s = figure_context_symbol_of_figure_context_database_symbol (Figure_context_database_symbol_v.figure_context_database_constructor s);;

let figure_context_databox_constructor s = figure_context_symbol_of_figure_context_databox_symbol (Figure_context_databox_symbol_v.figure_context_databox_constructor s);;

let figure_context_domain_constructor s = figure_context_symbol_of_figure_context_domain_symbol (Figure_context_domain_symbol_v.figure_context_domain_constructor s);;

let figure_context_sector_constructor s = figure_context_symbol_of_figure_context_sector_symbol (Figure_context_sector_symbol_v.figure_context_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Figure_context_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Figure_context_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try figure_context_symbol_of_figure_context_database_symbol
      (Figure_context_database_symbol_v.make nam s)
  with Failure "Not_a_figure_context_database_symbol:Figure_context_database_symbol_v.ml:make" ->
  try figure_context_symbol_of_figure_context_databox_symbol
      (Figure_context_databox_symbol_v.make nam s)
  with Failure "Not_a_figure_context_databox_symbol:Figure_context_databox_symbol_v.ml:make" ->
  try figure_context_symbol_of_figure_context_domain_symbol
      (Figure_context_domain_symbol_v.make nam s)
  with Failure "Not_a_figure_context_domain_symbol:Figure_context_domain_symbol_v.ml:make" ->
  try figure_context_symbol_of_figure_context_sector_symbol
      (Figure_context_sector_symbol_v.make nam s)
  with Failure "Not_a_figure_context_sector_symbol:Figure_context_sector_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Figure_context_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Figure_context_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Figure_context_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Figure_context_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_context subtype" nam s)
      "it does not exists"
      "Check file Figure_context_symbol_v.ml"
    in
    failwith "Not_a_figure_context_symbol:Figure_context_symbol_v.ml:make"
;;


(** Figure_context_symbol_v at 13:58:4 on 2 Dec 2016. created by version v2.4 of generator *)



