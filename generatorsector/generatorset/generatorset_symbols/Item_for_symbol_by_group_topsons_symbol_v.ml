(** {3 Item_for_symbol_by_group_topsons_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Item_for_symbol_by_group_topsons_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Item_for_symbol_by_group_topsons_symbol_t.Listing_for_symbol -> "listing_for_symbol"
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol -> "making_for_symbol"
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_bare -> "making_for_symbol_bare"
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_notleaf -> "making_for_symbol_notleaf"
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_ofstring -> "making_for_symbol_ofstring"
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol -> "naming_for_symbol"
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_bare -> "naming_for_symbol_bare"
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_notleaf -> "naming_for_symbol_notleaf"
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_ofstring -> "naming_for_symbol_ofstring"
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol -> "string_offing_for_symbol"
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_bare -> "string_offing_for_symbol_bare"
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_notleaf -> "string_offing_for_symbol_notleaf"
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_ofstring -> "string_offing_for_symbol_ofstring"
  | Item_for_symbol_by_group_topsons_symbol_t.Typing_for_symbol -> "typing_for_symbol"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Item_for_symbol_by_group_topsons_symbol_t.Listing_for_symbol -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_bare -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_notleaf -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_ofstring -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_bare -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_notleaf -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_ofstring -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_bare -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_notleaf -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_ofstring -> ""
  | Item_for_symbol_by_group_topsons_symbol_t.Typing_for_symbol -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_igt =
  Format.sprintf "Item_for_symbol_by_group_topsons_symbol_t.%s" (String.capitalize (name sym_igt))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_igt =
  Format.sprintf "%s \"%s\"" (longname sym_igt) (string_off sym_igt)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_listing_for_symbol = function
  | Item_for_symbol_by_group_topsons_symbol_t.Listing_for_symbol -> true
  | _ -> false
;;

let is_making_for_symbol = function
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol -> true
  | _ -> false
;;

let is_making_for_symbol_bare = function
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_bare -> true
  | _ -> false
;;

let is_making_for_symbol_notleaf = function
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_notleaf -> true
  | _ -> false
;;

let is_making_for_symbol_ofstring = function
  | Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_ofstring -> true
  | _ -> false
;;

let is_naming_for_symbol = function
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol -> true
  | _ -> false
;;

let is_naming_for_symbol_bare = function
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_bare -> true
  | _ -> false
;;

let is_naming_for_symbol_notleaf = function
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_notleaf -> true
  | _ -> false
;;

let is_naming_for_symbol_ofstring = function
  | Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_ofstring -> true
  | _ -> false
;;

let is_string_offing_for_symbol = function
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol -> true
  | _ -> false
;;

let is_string_offing_for_symbol_bare = function
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_bare -> true
  | _ -> false
;;

let is_string_offing_for_symbol_notleaf = function
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_notleaf -> true
  | _ -> false
;;

let is_string_offing_for_symbol_ofstring = function
  | Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_ofstring -> true
  | _ -> false
;;

let is_typing_for_symbol = function
  | Item_for_symbol_by_group_topsons_symbol_t.Typing_for_symbol -> true
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

let listing_for_symbol = Item_for_symbol_by_group_topsons_symbol_t.Listing_for_symbol;;

let making_for_symbol = Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol;;

let making_for_symbol_bare = Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_bare;;

let making_for_symbol_notleaf = Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_notleaf;;

let making_for_symbol_ofstring = Item_for_symbol_by_group_topsons_symbol_t.Making_for_symbol_ofstring;;

let naming_for_symbol = Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol;;

let naming_for_symbol_bare = Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_bare;;

let naming_for_symbol_notleaf = Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_notleaf;;

let naming_for_symbol_ofstring = Item_for_symbol_by_group_topsons_symbol_t.Naming_for_symbol_ofstring;;

let string_offing_for_symbol = Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol;;

let string_offing_for_symbol_bare = Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_bare;;

let string_offing_for_symbol_notleaf = Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_notleaf;;

let string_offing_for_symbol_ofstring = Item_for_symbol_by_group_topsons_symbol_t.String_offing_for_symbol_ofstring;;

let typing_for_symbol = Item_for_symbol_by_group_topsons_symbol_t.Typing_for_symbol;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "listing_for_symbol" -> listing_for_symbol
  | "making_for_symbol" -> making_for_symbol
  | "making_for_symbol_bare" -> making_for_symbol_bare
  | "making_for_symbol_notleaf" -> making_for_symbol_notleaf
  | "making_for_symbol_ofstring" -> making_for_symbol_ofstring
  | "naming_for_symbol" -> naming_for_symbol
  | "naming_for_symbol_bare" -> naming_for_symbol_bare
  | "naming_for_symbol_notleaf" -> naming_for_symbol_notleaf
  | "naming_for_symbol_ofstring" -> naming_for_symbol_ofstring
  | "string_offing_for_symbol" -> string_offing_for_symbol
  | "string_offing_for_symbol_bare" -> string_offing_for_symbol_bare
  | "string_offing_for_symbol_notleaf" -> string_offing_for_symbol_notleaf
  | "string_offing_for_symbol_ofstring" -> string_offing_for_symbol_ofstring
  | "typing_for_symbol" -> typing_for_symbol
  | _ ->
  failwith "Not_a_topson_bare:Item_for_symbol_by_group_topsons_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Item_for_symbol_by_group_topsons_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Item_for_symbol_by_group_topsons_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Item_for_symbol_by_group_topsons_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Item_for_symbol_by_group_topsons_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Item_for_symbol_by_group_topsons_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Item_for_symbol_by_group_topsons subtype" nam s)
      "it does not exists"
      "Check file Item_for_symbol_by_group_topsons_symbol_v.ml"
    in
    failwith "Not_a_item_for_symbol_by_group_topsons_symbol:Item_for_symbol_by_group_topsons_symbol_v.ml:make"
;;


(** Item_for_symbol_by_group_topsons_symbol_v at 14:13:41 on 2 Jun 2013. created by version v1.13 of generator *)



