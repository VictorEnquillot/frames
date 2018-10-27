(** {3 Closed_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Closed_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Closed_symbol_t.Closed_atom_symbol sym_cat ->
    Closed_atom_symbol_v.name sym_cat
  | Closed_symbol_t.Closed_block_symbol sym_cbl ->
    Closed_block_symbol_v.name sym_cbl
  | Closed_symbol_t.Closed_segment_symbol sym_cse ->
    Closed_segment_symbol_v.name sym_cse
  | Closed_symbol_t.Closed_grouping_symbol sym_cgr ->
    Closed_grouping_symbol_v.name sym_cgr
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Closed_symbol_t.Closed_atom_symbol sym_cat ->
  Closed_atom_symbol_v.string_off sym_cat
  | Closed_symbol_t.Closed_block_symbol sym_cbl ->
  Closed_block_symbol_v.string_off sym_cbl
  | Closed_symbol_t.Closed_segment_symbol sym_cse ->
  Closed_segment_symbol_v.string_off sym_cse
  | Closed_symbol_t.Closed_grouping_symbol sym_cgr ->
  Closed_grouping_symbol_v.string_off sym_cgr
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_clo =
  Format.sprintf "Closed_symbol_t.%s" (String.capitalize (name sym_clo))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_clo =
  Format.sprintf "%s \"%s\"" (longname sym_clo) (string_off sym_clo)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let closed_atom_symbol_off_closed_symbol = function
  | Closed_symbol_t.Closed_atom_symbol sym_cat -> sym_cat
  | sym_clo -> Error_messages_v.print_fatal_error
      nam_cod "closed_atom_symbol_off_closed_symbol"
      "Closed_atom_symbol"
      (name sym_clo) "check"
;;

let closed_block_symbol_off_closed_symbol = function
  | Closed_symbol_t.Closed_block_symbol sym_cbl -> sym_cbl
  | sym_clo -> Error_messages_v.print_fatal_error
      nam_cod "closed_block_symbol_off_closed_symbol"
      "Closed_block_symbol"
      (name sym_clo) "check"
;;

let closed_segment_symbol_off_closed_symbol = function
  | Closed_symbol_t.Closed_segment_symbol sym_cse -> sym_cse
  | sym_clo -> Error_messages_v.print_fatal_error
      nam_cod "closed_segment_symbol_off_closed_symbol"
      "Closed_segment_symbol"
      (name sym_clo) "check"
;;

let closed_grouping_symbol_off_closed_symbol = function
  | Closed_symbol_t.Closed_grouping_symbol sym_cgr -> sym_cgr
  | sym_clo -> Error_messages_v.print_fatal_error
      nam_cod "closed_grouping_symbol_off_closed_symbol"
      "Closed_grouping_symbol"
      (name sym_clo) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_closed_atom_symbol_off_closed_symbol = function
  | Closed_symbol_t.Closed_atom_symbol _ -> true
  | _ -> false
;;

let is_closed_block_symbol_off_closed_symbol = function
  | Closed_symbol_t.Closed_block_symbol _ -> true
  | _ -> false
;;

let is_closed_segment_symbol_off_closed_symbol = function
  | Closed_symbol_t.Closed_segment_symbol _ -> true
  | _ -> false
;;

let is_closed_grouping_symbol_off_closed_symbol = function
  | Closed_symbol_t.Closed_grouping_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_closed_atom_constructor sym_clo =
  if not (is_closed_atom_symbol_off_closed_symbol sym_clo)
  then false
  else
    begin
      let sym_cat = closed_atom_symbol_off_closed_symbol sym_clo in
      Closed_atom_symbol_v.is_closed_atom_constructor sym_cat
    end
;;

let is_closed_block_constructor sym_clo =
  if not (is_closed_block_symbol_off_closed_symbol sym_clo)
  then false
  else
    begin
      let sym_cbl = closed_block_symbol_off_closed_symbol sym_clo in
      Closed_block_symbol_v.is_closed_block_constructor sym_cbl
    end
;;

let is_closed_segment_constructor sym_clo =
  if not (is_closed_segment_symbol_off_closed_symbol sym_clo)
  then false
  else
    begin
      let sym_cse = closed_segment_symbol_off_closed_symbol sym_clo in
      Closed_segment_symbol_v.is_closed_segment_constructor sym_cse
    end
;;

let is_closed_grouping_constructor sym_clo =
  if not (is_closed_grouping_symbol_off_closed_symbol sym_clo)
  then false
  else
    begin
      let sym_cgr = closed_grouping_symbol_off_closed_symbol sym_clo in
      Closed_grouping_symbol_v.is_closed_grouping_constructor sym_cgr
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let closed_symbol_of_closed_atom_symbol sym_cat = 
  Closed_symbol_t.Closed_atom_symbol sym_cat
;;

let closed_symbol_of_closed_block_symbol sym_cbl = 
  Closed_symbol_t.Closed_block_symbol sym_cbl
;;

let closed_symbol_of_closed_segment_symbol sym_cse = 
  Closed_symbol_t.Closed_segment_symbol sym_cse
;;

let closed_symbol_of_closed_grouping_symbol sym_cgr = 
  Closed_symbol_t.Closed_grouping_symbol sym_cgr
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let closed_atom_constructor s = closed_symbol_of_closed_atom_symbol (Closed_atom_symbol_v.closed_atom_constructor s);;

let closed_block_constructor s = closed_symbol_of_closed_block_symbol (Closed_block_symbol_v.closed_block_constructor s);;

let closed_segment_constructor s = closed_symbol_of_closed_segment_symbol (Closed_segment_symbol_v.closed_segment_constructor s);;

let closed_grouping_constructor s = closed_symbol_of_closed_grouping_symbol (Closed_grouping_symbol_v.closed_grouping_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Closed_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Closed_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try closed_symbol_of_closed_atom_symbol
      (Closed_atom_symbol_v.make nam s)
  with Failure "Not_a_closed_atom_symbol:Closed_atom_symbol_v.ml:make" ->
  try closed_symbol_of_closed_block_symbol
      (Closed_block_symbol_v.make nam s)
  with Failure "Not_a_closed_block_symbol:Closed_block_symbol_v.ml:make" ->
  try closed_symbol_of_closed_segment_symbol
      (Closed_segment_symbol_v.make nam s)
  with Failure "Not_a_closed_segment_symbol:Closed_segment_symbol_v.ml:make" ->
  try closed_symbol_of_closed_grouping_symbol
      (Closed_grouping_symbol_v.make nam s)
  with Failure "Not_a_closed_grouping_symbol:Closed_grouping_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Closed_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Closed_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Closed_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Closed_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Closed subtype" nam s)
      "it does not exists"
      "Check file Closed_symbol_v.ml"
    in
    failwith "Not_a_closed_symbol:Closed_symbol_v.ml:make"
;;


(** Closed_symbol_v at 15:38:37 on 24 Jun 2013. created by version v2.3 of generator *)



