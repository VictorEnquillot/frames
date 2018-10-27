(** {3 Item_for_symbol_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Item_for_symbol_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol sym_igb ->
    Item_for_symbol_each_grandson_bare_symbol_v.name sym_igb
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol sym_ign ->
    Item_for_symbol_each_grandson_notleaf_symbol_v.name sym_ign
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol sym_igo ->
    Item_for_symbol_each_grandson_ofstring_symbol_v.name sym_igo
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol sym_itb ->
    Item_for_symbol_each_topson_bare_symbol_v.name sym_itb
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol sym_itn ->
    Item_for_symbol_each_topson_notleaf_symbol_v.name sym_itn
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol sym_ito ->
    Item_for_symbol_each_topson_ofstring_symbol_v.name sym_ito
  | Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol sym_iot ->
    Item_for_symbol_only_top_symbol_v.name sym_iot
  | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol sym_igt ->
    Item_for_symbol_by_group_topsons_symbol_v.name sym_igt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol sym_igb ->
  Item_for_symbol_each_grandson_bare_symbol_v.string_off sym_igb
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol sym_ign ->
  Item_for_symbol_each_grandson_notleaf_symbol_v.string_off sym_ign
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol sym_igo ->
  Item_for_symbol_each_grandson_ofstring_symbol_v.string_off sym_igo
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol sym_itb ->
  Item_for_symbol_each_topson_bare_symbol_v.string_off sym_itb
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol sym_itn ->
  Item_for_symbol_each_topson_notleaf_symbol_v.string_off sym_itn
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol sym_ito ->
  Item_for_symbol_each_topson_ofstring_symbol_v.string_off sym_ito
  | Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol sym_iot ->
  Item_for_symbol_only_top_symbol_v.string_off sym_iot
  | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol sym_igt ->
  Item_for_symbol_by_group_topsons_symbol_v.string_off sym_igt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ifs =
  Format.sprintf "Item_for_symbol_symbol_t.%s" (String.capitalize (name sym_ifs))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ifs =
  Format.sprintf "%s \"%s\"" (longname sym_ifs) (string_off sym_ifs)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let item_for_symbol_each_grandson_bare_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol sym_igb -> sym_igb
  | sym_ifs -> Error_messages_v.print_fatal_error
      nam_cod "item_for_symbol_each_grandson_bare_symbol_off_item_for_symbol_symbol"
      "Item_for_symbol_each_grandson_bare_symbol"
      (name sym_ifs) "check"
;;

let item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol sym_ign -> sym_ign
  | sym_ifs -> Error_messages_v.print_fatal_error
      nam_cod "item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol"
      "Item_for_symbol_each_grandson_notleaf_symbol"
      (name sym_ifs) "check"
;;

let item_for_symbol_each_grandson_ofstring_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol sym_igo -> sym_igo
  | sym_ifs -> Error_messages_v.print_fatal_error
      nam_cod "item_for_symbol_each_grandson_ofstring_symbol_off_item_for_symbol_symbol"
      "Item_for_symbol_each_grandson_ofstring_symbol"
      (name sym_ifs) "check"
;;

let item_for_symbol_each_topson_bare_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol sym_itb -> sym_itb
  | sym_ifs -> Error_messages_v.print_fatal_error
      nam_cod "item_for_symbol_each_topson_bare_symbol_off_item_for_symbol_symbol"
      "Item_for_symbol_each_topson_bare_symbol"
      (name sym_ifs) "check"
;;

let item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol sym_itn -> sym_itn
  | sym_ifs -> Error_messages_v.print_fatal_error
      nam_cod "item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol"
      "Item_for_symbol_each_topson_notleaf_symbol"
      (name sym_ifs) "check"
;;

let item_for_symbol_each_topson_ofstring_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol sym_ito -> sym_ito
  | sym_ifs -> Error_messages_v.print_fatal_error
      nam_cod "item_for_symbol_each_topson_ofstring_symbol_off_item_for_symbol_symbol"
      "Item_for_symbol_each_topson_ofstring_symbol"
      (name sym_ifs) "check"
;;

let item_for_symbol_only_top_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol sym_iot -> sym_iot
  | sym_ifs -> Error_messages_v.print_fatal_error
      nam_cod "item_for_symbol_only_top_symbol_off_item_for_symbol_symbol"
      "Item_for_symbol_only_top_symbol"
      (name sym_ifs) "check"
;;

let item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol sym_igt -> sym_igt
  | sym_ifs -> Error_messages_v.print_fatal_error
      nam_cod "item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol"
      "Item_for_symbol_by_group_topsons_symbol"
      (name sym_ifs) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_item_for_symbol_each_grandson_bare_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol _ -> true
  | _ -> false
;;

let is_item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol _ -> true
  | _ -> false
;;

let is_item_for_symbol_each_grandson_ofstring_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol _ -> true
  | _ -> false
;;

let is_item_for_symbol_each_topson_bare_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol _ -> true
  | _ -> false
;;

let is_item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol _ -> true
  | _ -> false
;;

let is_item_for_symbol_each_topson_ofstring_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol _ -> true
  | _ -> false
;;

let is_item_for_symbol_only_top_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol _ -> true
  | _ -> false
;;

let is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol = function
  | Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_abbreviating_grandson_bare_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_grandson_bare_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igb = item_for_symbol_each_grandson_bare_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_grandson_bare_symbol_v.is_abbreviating_grandson_bare_for_symbol sym_igb
    end
;;

let is_querying_grandson_bare_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_grandson_bare_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igb = item_for_symbol_each_grandson_bare_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_grandson_bare_symbol_v.is_querying_grandson_bare_for_symbol sym_igb
    end
;;

let is_extracting_grandson_notleaf_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_ign = item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_grandson_notleaf_symbol_v.is_extracting_grandson_notleaf_for_symbol sym_ign
    end
;;

let is_querying_grandson_notleaf_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_ign = item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_grandson_notleaf_symbol_v.is_querying_grandson_notleaf_for_symbol sym_ign
    end
;;

let is_upgrading_grandson_notleaf_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_ign = item_for_symbol_each_grandson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_grandson_notleaf_symbol_v.is_upgrading_grandson_notleaf_for_symbol sym_ign
    end
;;

let is_abbreviating_grandson_ofstring_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_grandson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igo = item_for_symbol_each_grandson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_grandson_ofstring_symbol_v.is_abbreviating_grandson_ofstring_for_symbol sym_igo
    end
;;

let is_querying_grandson_ofstring_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_grandson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igo = item_for_symbol_each_grandson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_grandson_ofstring_symbol_v.is_querying_grandson_ofstring_for_symbol sym_igo
    end
;;

let is_abbreviating_topson_bare_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_topson_bare_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_itb = item_for_symbol_each_topson_bare_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_topson_bare_symbol_v.is_abbreviating_topson_bare_for_symbol sym_itb
    end
;;

let is_querying_topson_bare_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_topson_bare_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_itb = item_for_symbol_each_topson_bare_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_topson_bare_symbol_v.is_querying_topson_bare_for_symbol sym_itb
    end
;;

let is_extracting_topson_notleaf_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_itn = item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_topson_notleaf_symbol_v.is_extracting_topson_notleaf_for_symbol sym_itn
    end
;;

let is_querying_topson_notleaf_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_itn = item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_topson_notleaf_symbol_v.is_querying_topson_notleaf_for_symbol sym_itn
    end
;;

let is_upgrading_topson_notleaf_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_itn = item_for_symbol_each_topson_notleaf_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_topson_notleaf_symbol_v.is_upgrading_topson_notleaf_for_symbol sym_itn
    end
;;

let is_abbreviating_topson_ofstring_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_topson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_ito = item_for_symbol_each_topson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_topson_ofstring_symbol_v.is_abbreviating_topson_ofstring_for_symbol sym_ito
    end
;;

let is_querying_topson_ofstring_for_symbol sym_ifs =
  if not (is_item_for_symbol_each_topson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_ito = item_for_symbol_each_topson_ofstring_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_each_topson_ofstring_symbol_v.is_querying_topson_ofstring_for_symbol sym_ito
    end
;;

let is_documenting_for_symbol sym_ifs =
  if not (is_item_for_symbol_only_top_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_iot = item_for_symbol_only_top_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_only_top_symbol_v.is_documenting_for_symbol sym_iot
    end
;;

let is_longnaming_for_symbol sym_ifs =
  if not (is_item_for_symbol_only_top_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_iot = item_for_symbol_only_top_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_only_top_symbol_v.is_longnaming_for_symbol sym_iot
    end
;;

let is_fullnaming_for_symbol sym_ifs =
  if not (is_item_for_symbol_only_top_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_iot = item_for_symbol_only_top_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_only_top_symbol_v.is_fullnaming_for_symbol sym_iot
    end
;;

let is_listing_for_symbol sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_listing_for_symbol sym_igt
    end
;;

let is_making_for_symbol sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_making_for_symbol sym_igt
    end
;;

let is_making_for_symbol_bare sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_making_for_symbol_bare sym_igt
    end
;;

let is_making_for_symbol_notleaf sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_making_for_symbol_notleaf sym_igt
    end
;;

let is_making_for_symbol_ofstring sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_making_for_symbol_ofstring sym_igt
    end
;;

let is_naming_for_symbol sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_naming_for_symbol sym_igt
    end
;;

let is_naming_for_symbol_bare sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_naming_for_symbol_bare sym_igt
    end
;;

let is_naming_for_symbol_notleaf sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_naming_for_symbol_notleaf sym_igt
    end
;;

let is_naming_for_symbol_ofstring sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_naming_for_symbol_ofstring sym_igt
    end
;;

let is_string_offing_for_symbol sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_string_offing_for_symbol sym_igt
    end
;;

let is_string_offing_for_symbol_bare sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_string_offing_for_symbol_bare sym_igt
    end
;;

let is_string_offing_for_symbol_notleaf sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_string_offing_for_symbol_notleaf sym_igt
    end
;;

let is_string_offing_for_symbol_ofstring sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_string_offing_for_symbol_ofstring sym_igt
    end
;;

let is_typing_for_symbol sym_ifs =
  if not (is_item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs)
  then false
  else
    begin
      let sym_igt = item_for_symbol_by_group_topsons_symbol_off_item_for_symbol_symbol sym_ifs in
      Item_for_symbol_by_group_topsons_symbol_v.is_typing_for_symbol sym_igt
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let item_for_symbol_symbol_of_item_for_symbol_each_grandson_bare_symbol sym_igb = 
  Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol sym_igb
;;

let item_for_symbol_symbol_of_item_for_symbol_each_grandson_notleaf_symbol sym_ign = 
  Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol sym_ign
;;

let item_for_symbol_symbol_of_item_for_symbol_each_grandson_ofstring_symbol sym_igo = 
  Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol sym_igo
;;

let item_for_symbol_symbol_of_item_for_symbol_each_topson_bare_symbol sym_itb = 
  Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol sym_itb
;;

let item_for_symbol_symbol_of_item_for_symbol_each_topson_notleaf_symbol sym_itn = 
  Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol sym_itn
;;

let item_for_symbol_symbol_of_item_for_symbol_each_topson_ofstring_symbol sym_ito = 
  Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol sym_ito
;;

let item_for_symbol_symbol_of_item_for_symbol_only_top_symbol sym_iot = 
  Item_for_symbol_symbol_t.Item_for_symbol_only_top_symbol sym_iot
;;

let item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol sym_igt = 
  Item_for_symbol_symbol_t.Item_for_symbol_by_group_topsons_symbol sym_igt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let abbreviating_grandson_bare_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_grandson_bare_symbol Item_for_symbol_each_grandson_bare_symbol_v.abbreviating_grandson_bare_for_symbol;;

let querying_grandson_bare_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_grandson_bare_symbol Item_for_symbol_each_grandson_bare_symbol_v.querying_grandson_bare_for_symbol;;

let extracting_grandson_notleaf_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_grandson_notleaf_symbol Item_for_symbol_each_grandson_notleaf_symbol_v.extracting_grandson_notleaf_for_symbol;;

let querying_grandson_notleaf_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_grandson_notleaf_symbol Item_for_symbol_each_grandson_notleaf_symbol_v.querying_grandson_notleaf_for_symbol;;

let upgrading_grandson_notleaf_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_grandson_notleaf_symbol Item_for_symbol_each_grandson_notleaf_symbol_v.upgrading_grandson_notleaf_for_symbol;;

let abbreviating_grandson_ofstring_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_grandson_ofstring_symbol Item_for_symbol_each_grandson_ofstring_symbol_v.abbreviating_grandson_ofstring_for_symbol;;

let querying_grandson_ofstring_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_grandson_ofstring_symbol Item_for_symbol_each_grandson_ofstring_symbol_v.querying_grandson_ofstring_for_symbol;;

let abbreviating_topson_bare_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_topson_bare_symbol Item_for_symbol_each_topson_bare_symbol_v.abbreviating_topson_bare_for_symbol;;

let querying_topson_bare_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_topson_bare_symbol Item_for_symbol_each_topson_bare_symbol_v.querying_topson_bare_for_symbol;;

let extracting_topson_notleaf_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_topson_notleaf_symbol Item_for_symbol_each_topson_notleaf_symbol_v.extracting_topson_notleaf_for_symbol;;

let querying_topson_notleaf_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_topson_notleaf_symbol Item_for_symbol_each_topson_notleaf_symbol_v.querying_topson_notleaf_for_symbol;;

let upgrading_topson_notleaf_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_topson_notleaf_symbol Item_for_symbol_each_topson_notleaf_symbol_v.upgrading_topson_notleaf_for_symbol;;

let abbreviating_topson_ofstring_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_topson_ofstring_symbol Item_for_symbol_each_topson_ofstring_symbol_v.abbreviating_topson_ofstring_for_symbol;;

let querying_topson_ofstring_for_symbol = item_for_symbol_symbol_of_item_for_symbol_each_topson_ofstring_symbol Item_for_symbol_each_topson_ofstring_symbol_v.querying_topson_ofstring_for_symbol;;

let documenting_for_symbol = item_for_symbol_symbol_of_item_for_symbol_only_top_symbol Item_for_symbol_only_top_symbol_v.documenting_for_symbol;;

let longnaming_for_symbol = item_for_symbol_symbol_of_item_for_symbol_only_top_symbol Item_for_symbol_only_top_symbol_v.longnaming_for_symbol;;

let fullnaming_for_symbol = item_for_symbol_symbol_of_item_for_symbol_only_top_symbol Item_for_symbol_only_top_symbol_v.fullnaming_for_symbol;;

let listing_for_symbol = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.listing_for_symbol;;

let making_for_symbol = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.making_for_symbol;;

let making_for_symbol_bare = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.making_for_symbol_bare;;

let making_for_symbol_notleaf = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.making_for_symbol_notleaf;;

let making_for_symbol_ofstring = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.making_for_symbol_ofstring;;

let naming_for_symbol = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.naming_for_symbol;;

let naming_for_symbol_bare = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.naming_for_symbol_bare;;

let naming_for_symbol_notleaf = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.naming_for_symbol_notleaf;;

let naming_for_symbol_ofstring = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.naming_for_symbol_ofstring;;

let string_offing_for_symbol = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.string_offing_for_symbol;;

let string_offing_for_symbol_bare = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.string_offing_for_symbol_bare;;

let string_offing_for_symbol_notleaf = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.string_offing_for_symbol_notleaf;;

let string_offing_for_symbol_ofstring = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.string_offing_for_symbol_ofstring;;

let typing_for_symbol = item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol Item_for_symbol_by_group_topsons_symbol_v.typing_for_symbol;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Item_for_symbol_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Item_for_symbol_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try item_for_symbol_symbol_of_item_for_symbol_each_grandson_bare_symbol
      (Item_for_symbol_each_grandson_bare_symbol_v.make nam s)
  with Failure "Not_a_item_for_symbol_each_grandson_bare_symbol:Item_for_symbol_each_grandson_bare_symbol_v.ml:make" ->
  try item_for_symbol_symbol_of_item_for_symbol_each_grandson_notleaf_symbol
      (Item_for_symbol_each_grandson_notleaf_symbol_v.make nam s)
  with Failure "Not_a_item_for_symbol_each_grandson_notleaf_symbol:Item_for_symbol_each_grandson_notleaf_symbol_v.ml:make" ->
  try item_for_symbol_symbol_of_item_for_symbol_each_grandson_ofstring_symbol
      (Item_for_symbol_each_grandson_ofstring_symbol_v.make nam s)
  with Failure "Not_a_item_for_symbol_each_grandson_ofstring_symbol:Item_for_symbol_each_grandson_ofstring_symbol_v.ml:make" ->
  try item_for_symbol_symbol_of_item_for_symbol_each_topson_bare_symbol
      (Item_for_symbol_each_topson_bare_symbol_v.make nam s)
  with Failure "Not_a_item_for_symbol_each_topson_bare_symbol:Item_for_symbol_each_topson_bare_symbol_v.ml:make" ->
  try item_for_symbol_symbol_of_item_for_symbol_each_topson_notleaf_symbol
      (Item_for_symbol_each_topson_notleaf_symbol_v.make nam s)
  with Failure "Not_a_item_for_symbol_each_topson_notleaf_symbol:Item_for_symbol_each_topson_notleaf_symbol_v.ml:make" ->
  try item_for_symbol_symbol_of_item_for_symbol_each_topson_ofstring_symbol
      (Item_for_symbol_each_topson_ofstring_symbol_v.make nam s)
  with Failure "Not_a_item_for_symbol_each_topson_ofstring_symbol:Item_for_symbol_each_topson_ofstring_symbol_v.ml:make" ->
  try item_for_symbol_symbol_of_item_for_symbol_only_top_symbol
      (Item_for_symbol_only_top_symbol_v.make nam s)
  with Failure "Not_a_item_for_symbol_only_top_symbol:Item_for_symbol_only_top_symbol_v.ml:make" ->
  try item_for_symbol_symbol_of_item_for_symbol_by_group_topsons_symbol
      (Item_for_symbol_by_group_topsons_symbol_v.make nam s)
  with Failure "Not_a_item_for_symbol_by_group_topsons_symbol:Item_for_symbol_by_group_topsons_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Item_for_symbol_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Item_for_symbol_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Item_for_symbol_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Item_for_symbol_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Item_for_symbol subtype" nam s)
      "it does not exists"
      "Check file Item_for_symbol_symbol_v.ml"
    in
    failwith "Not_a_item_for_symbol_symbol:Item_for_symbol_symbol_v.ml:make"
;;


(** Item_for_symbol_symbol_v at 14:13:41 on 2 Jun 2013. created by version v1.13 of generator *)



