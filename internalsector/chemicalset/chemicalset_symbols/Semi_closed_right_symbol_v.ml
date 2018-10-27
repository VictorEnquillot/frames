(** {3 Semi_closed_right_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Semi_closed_right_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Semi_closed_right_symbol_t.Semi_closed_right_block_symbol sym_srb ->
    Semi_closed_right_block_symbol_v.name sym_srb
  | Semi_closed_right_symbol_t.Semi_closed_right_grouping_symbol sym_srg ->
    Semi_closed_right_grouping_symbol_v.name sym_srg
  | Semi_closed_right_symbol_t.Semi_closed_right_segment -> "semi_closed_right_segment"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Semi_closed_right_symbol_t.Semi_closed_right_block_symbol sym_srb ->
  Semi_closed_right_block_symbol_v.string_off sym_srb
  | Semi_closed_right_symbol_t.Semi_closed_right_grouping_symbol sym_srg ->
  Semi_closed_right_grouping_symbol_v.string_off sym_srg
  | Semi_closed_right_symbol_t.Semi_closed_right_segment -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_scr =
  Format.sprintf "Semi_closed_right_symbol_t.%s" (String.capitalize (name sym_scr))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_scr =
  Format.sprintf "%s \"%s\"" (longname sym_scr) (string_off sym_scr)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let semi_closed_right_block_symbol_off_semi_closed_right_symbol = function
  | Semi_closed_right_symbol_t.Semi_closed_right_block_symbol sym_srb -> sym_srb
  | sym_scr -> Error_messages_v.print_fatal_error
      nam_cod "semi_closed_right_block_symbol_off_semi_closed_right_symbol"
      "Semi_closed_right_block_symbol"
      (name sym_scr) "check"
;;

let semi_closed_right_grouping_symbol_off_semi_closed_right_symbol = function
  | Semi_closed_right_symbol_t.Semi_closed_right_grouping_symbol sym_srg -> sym_srg
  | sym_scr -> Error_messages_v.print_fatal_error
      nam_cod "semi_closed_right_grouping_symbol_off_semi_closed_right_symbol"
      "Semi_closed_right_grouping_symbol"
      (name sym_scr) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_semi_closed_right_segment = function
  | Semi_closed_right_symbol_t.Semi_closed_right_segment -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_semi_closed_right_block_symbol_off_semi_closed_right_symbol = function
  | Semi_closed_right_symbol_t.Semi_closed_right_block_symbol _ -> true
  | _ -> false
;;

let is_semi_closed_right_grouping_symbol_off_semi_closed_right_symbol = function
  | Semi_closed_right_symbol_t.Semi_closed_right_grouping_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_s_ch3_z sym_scr =
  if not (is_semi_closed_right_block_symbol_off_semi_closed_right_symbol sym_scr)
  then false
  else
    begin
      let sym_srb = semi_closed_right_block_symbol_off_semi_closed_right_symbol sym_scr in
      Semi_closed_right_block_symbol_v.is_s_ch3_z sym_srb
    end
;;

let is_d_ch2_z sym_scr =
  if not (is_semi_closed_right_block_symbol_off_semi_closed_right_symbol sym_scr)
  then false
  else
    begin
      let sym_srb = semi_closed_right_block_symbol_off_semi_closed_right_symbol sym_scr in
      Semi_closed_right_block_symbol_v.is_d_ch2_z sym_srb
    end
;;

let is_t_ch_z sym_scr =
  if not (is_semi_closed_right_block_symbol_off_semi_closed_right_symbol sym_scr)
  then false
  else
    begin
      let sym_srb = semi_closed_right_block_symbol_off_semi_closed_right_symbol sym_scr in
      Semi_closed_right_block_symbol_v.is_t_ch_z sym_srb
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_semi_closed_right_grouping_constructor sym_scr =
  if not (is_semi_closed_right_grouping_symbol_off_semi_closed_right_symbol sym_scr)
  then false
  else
    begin
      let sym_srg = semi_closed_right_grouping_symbol_off_semi_closed_right_symbol sym_scr in
      Semi_closed_right_grouping_symbol_v.is_semi_closed_right_grouping_constructor sym_srg
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let semi_closed_right_symbol_of_semi_closed_right_block_symbol sym_srb = 
  Semi_closed_right_symbol_t.Semi_closed_right_block_symbol sym_srb
;;

let semi_closed_right_symbol_of_semi_closed_right_grouping_symbol sym_srg = 
  Semi_closed_right_symbol_t.Semi_closed_right_grouping_symbol sym_srg
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let semi_closed_right_segment = Semi_closed_right_symbol_t.Semi_closed_right_segment;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let s_ch3_z = semi_closed_right_symbol_of_semi_closed_right_block_symbol Semi_closed_right_block_symbol_v.s_ch3_z;;

let d_ch2_z = semi_closed_right_symbol_of_semi_closed_right_block_symbol Semi_closed_right_block_symbol_v.d_ch2_z;;

let t_ch_z = semi_closed_right_symbol_of_semi_closed_right_block_symbol Semi_closed_right_block_symbol_v.t_ch_z;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let semi_closed_right_grouping_constructor s = semi_closed_right_symbol_of_semi_closed_right_grouping_symbol (Semi_closed_right_grouping_symbol_v.semi_closed_right_grouping_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "semi_closed_right_segment" -> semi_closed_right_segment
  | _ ->
  failwith "Not_a_topson_bare:Semi_closed_right_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Semi_closed_right_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try semi_closed_right_symbol_of_semi_closed_right_block_symbol
      (Semi_closed_right_block_symbol_v.make nam s)
  with Failure "Not_a_semi_closed_right_block_symbol:Semi_closed_right_block_symbol_v.ml:make" ->
  try semi_closed_right_symbol_of_semi_closed_right_grouping_symbol
      (Semi_closed_right_grouping_symbol_v.make nam s)
  with Failure "Not_a_semi_closed_right_grouping_symbol:Semi_closed_right_grouping_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Semi_closed_right_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Semi_closed_right_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Semi_closed_right_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Semi_closed_right_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Semi_closed_right subtype" nam s)
      "it does not exists"
      "Check file Semi_closed_right_symbol_v.ml"
    in
    failwith "Not_a_semi_closed_right_symbol:Semi_closed_right_symbol_v.ml:make"
;;


(** Semi_closed_right_symbol_v at 15:38:38 on 24 Jun 2013. created by version v2.3 of generator *)



