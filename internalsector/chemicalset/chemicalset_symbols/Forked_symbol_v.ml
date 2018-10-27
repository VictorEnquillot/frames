(** {3 Forked_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Forked_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Forked_symbol_t.Forked_block_symbol sym_fbl ->
    Forked_block_symbol_v.name sym_fbl
  | Forked_symbol_t.Forked_fragment_symbol sym_ffr ->
    Forked_fragment_symbol_v.name sym_ffr
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Forked_symbol_t.Forked_block_symbol sym_fbl ->
  Forked_block_symbol_v.string_off sym_fbl
  | Forked_symbol_t.Forked_fragment_symbol sym_ffr ->
  Forked_fragment_symbol_v.string_off sym_ffr
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_for =
  Format.sprintf "Forked_symbol_t.%s" (String.capitalize (name sym_for))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_for =
  Format.sprintf "%s \"%s\"" (longname sym_for) (string_off sym_for)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let forked_block_symbol_off_forked_symbol = function
  | Forked_symbol_t.Forked_block_symbol sym_fbl -> sym_fbl
  | sym_for -> Error_messages_v.print_fatal_error
      nam_cod "forked_block_symbol_off_forked_symbol"
      "Forked_block_symbol"
      (name sym_for) "check"
;;

let forked_fragment_symbol_off_forked_symbol = function
  | Forked_symbol_t.Forked_fragment_symbol sym_ffr -> sym_ffr
  | sym_for -> Error_messages_v.print_fatal_error
      nam_cod "forked_fragment_symbol_off_forked_symbol"
      "Forked_fragment_symbol"
      (name sym_for) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_forked_block_symbol_off_forked_symbol = function
  | Forked_symbol_t.Forked_block_symbol _ -> true
  | _ -> false
;;

let is_forked_fragment_symbol_off_forked_symbol = function
  | Forked_symbol_t.Forked_fragment_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_s_c_sd sym_for =
  if not (is_forked_block_symbol_off_forked_symbol sym_for)
  then false
  else
    begin
      let sym_fbl = forked_block_symbol_off_forked_symbol sym_for in
      Forked_block_symbol_v.is_s_c_sd sym_fbl
    end
;;

let is_s_co_c_nh_s_ch_ss sym_for =
  if not (is_forked_fragment_symbol_off_forked_symbol sym_for)
  then false
  else
    begin
      let sym_ffr = forked_fragment_symbol_off_forked_symbol sym_for in
      Forked_fragment_symbol_v.is_s_co_c_nh_s_ch_ss sym_ffr
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let forked_symbol_of_forked_block_symbol sym_fbl = 
  Forked_symbol_t.Forked_block_symbol sym_fbl
;;

let forked_symbol_of_forked_fragment_symbol sym_ffr = 
  Forked_symbol_t.Forked_fragment_symbol sym_ffr
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let s_c_sd = forked_symbol_of_forked_block_symbol Forked_block_symbol_v.s_c_sd;;

let s_co_c_nh_s_ch_ss = forked_symbol_of_forked_fragment_symbol Forked_fragment_symbol_v.s_co_c_nh_s_ch_ss;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Forked_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Forked_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try forked_symbol_of_forked_block_symbol
      (Forked_block_symbol_v.make nam s)
  with Failure "Not_a_forked_block_symbol:Forked_block_symbol_v.ml:make" ->
  try forked_symbol_of_forked_fragment_symbol
      (Forked_fragment_symbol_v.make nam s)
  with Failure "Not_a_forked_fragment_symbol:Forked_fragment_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Forked_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Forked_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Forked_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Forked_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Forked subtype" nam s)
      "it does not exists"
      "Check file Forked_symbol_v.ml"
    in
    failwith "Not_a_forked_symbol:Forked_symbol_v.ml:make"
;;


(** Forked_symbol_v at 15:38:37 on 24 Jun 2013. created by version v2.3 of generator *)



