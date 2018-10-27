(** {3 Closed_block_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Closed_block_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Closed_block_symbol_t.Closed_block_anion_symbol sym_cba ->
    Closed_block_anion_symbol_v.name sym_cba
  | Closed_block_symbol_t.Closed_block_cation_symbol sym_cbc ->
    Closed_block_cation_symbol_v.name sym_cbc
  | Closed_block_symbol_t.Closed_block_neutral_symbol sym_cbn ->
    Closed_block_neutral_symbol_v.name sym_cbn
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Closed_block_symbol_t.Closed_block_anion_symbol sym_cba ->
  Closed_block_anion_symbol_v.string_off sym_cba
  | Closed_block_symbol_t.Closed_block_cation_symbol sym_cbc ->
  Closed_block_cation_symbol_v.string_off sym_cbc
  | Closed_block_symbol_t.Closed_block_neutral_symbol sym_cbn ->
  Closed_block_neutral_symbol_v.string_off sym_cbn
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cbl =
  Format.sprintf "Closed_block_symbol_t.%s" (String.capitalize (name sym_cbl))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cbl =
  Format.sprintf "%s \"%s\"" (longname sym_cbl) (string_off sym_cbl)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let closed_block_anion_symbol_off_closed_block_symbol = function
  | Closed_block_symbol_t.Closed_block_anion_symbol sym_cba -> sym_cba
  | sym_cbl -> Error_messages_v.print_fatal_error
      nam_cod "closed_block_anion_symbol_off_closed_block_symbol"
      "Closed_block_anion_symbol"
      (name sym_cbl) "check"
;;

let closed_block_cation_symbol_off_closed_block_symbol = function
  | Closed_block_symbol_t.Closed_block_cation_symbol sym_cbc -> sym_cbc
  | sym_cbl -> Error_messages_v.print_fatal_error
      nam_cod "closed_block_cation_symbol_off_closed_block_symbol"
      "Closed_block_cation_symbol"
      (name sym_cbl) "check"
;;

let closed_block_neutral_symbol_off_closed_block_symbol = function
  | Closed_block_symbol_t.Closed_block_neutral_symbol sym_cbn -> sym_cbn
  | sym_cbl -> Error_messages_v.print_fatal_error
      nam_cod "closed_block_neutral_symbol_off_closed_block_symbol"
      "Closed_block_neutral_symbol"
      (name sym_cbl) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_closed_block_anion_symbol_off_closed_block_symbol = function
  | Closed_block_symbol_t.Closed_block_anion_symbol _ -> true
  | _ -> false
;;

let is_closed_block_cation_symbol_off_closed_block_symbol = function
  | Closed_block_symbol_t.Closed_block_cation_symbol _ -> true
  | _ -> false
;;

let is_closed_block_neutral_symbol_off_closed_block_symbol = function
  | Closed_block_symbol_t.Closed_block_neutral_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_z_fh_z sym_cbl =
  if not (is_closed_block_neutral_symbol_off_closed_block_symbol sym_cbl)
  then false
  else
    begin
      let sym_cbn = closed_block_neutral_symbol_off_closed_block_symbol sym_cbl in
      Closed_block_neutral_symbol_v.is_z_fh_z sym_cbn
    end
;;

let is_z_h2_z sym_cbl =
  if not (is_closed_block_neutral_symbol_off_closed_block_symbol sym_cbl)
  then false
  else
    begin
      let sym_cbn = closed_block_neutral_symbol_off_closed_block_symbol sym_cbl in
      Closed_block_neutral_symbol_v.is_z_h2_z sym_cbn
    end
;;

let is_z_sh_z sym_cbl =
  if not (is_closed_block_neutral_symbol_off_closed_block_symbol sym_cbl)
  then false
  else
    begin
      let sym_cbn = closed_block_neutral_symbol_off_closed_block_symbol sym_cbl in
      Closed_block_neutral_symbol_v.is_z_sh_z sym_cbn
    end
;;

let is_z_o2_z sym_cbl =
  if not (is_closed_block_neutral_symbol_off_closed_block_symbol sym_cbl)
  then false
  else
    begin
      let sym_cbn = closed_block_neutral_symbol_off_closed_block_symbol sym_cbl in
      Closed_block_neutral_symbol_v.is_z_o2_z sym_cbn
    end
;;

let is_z_no_z sym_cbl =
  if not (is_closed_block_neutral_symbol_off_closed_block_symbol sym_cbl)
  then false
  else
    begin
      let sym_cbn = closed_block_neutral_symbol_off_closed_block_symbol sym_cbl in
      Closed_block_neutral_symbol_v.is_z_no_z sym_cbn
    end
;;

let is_z_co_z sym_cbl =
  if not (is_closed_block_neutral_symbol_off_closed_block_symbol sym_cbl)
  then false
  else
    begin
      let sym_cbn = closed_block_neutral_symbol_off_closed_block_symbol sym_cbl in
      Closed_block_neutral_symbol_v.is_z_co_z sym_cbn
    end
;;

let is_z_n2_z sym_cbl =
  if not (is_closed_block_neutral_symbol_off_closed_block_symbol sym_cbl)
  then false
  else
    begin
      let sym_cbn = closed_block_neutral_symbol_off_closed_block_symbol sym_cbl in
      Closed_block_neutral_symbol_v.is_z_n2_z sym_cbn
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_closed_block_anion_constructor sym_cbl =
  if not (is_closed_block_anion_symbol_off_closed_block_symbol sym_cbl)
  then false
  else
    begin
      let sym_cba = closed_block_anion_symbol_off_closed_block_symbol sym_cbl in
      Closed_block_anion_symbol_v.is_closed_block_anion_constructor sym_cba
    end
;;

let is_closed_block_cation_constructor sym_cbl =
  if not (is_closed_block_cation_symbol_off_closed_block_symbol sym_cbl)
  then false
  else
    begin
      let sym_cbc = closed_block_cation_symbol_off_closed_block_symbol sym_cbl in
      Closed_block_cation_symbol_v.is_closed_block_cation_constructor sym_cbc
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let closed_block_symbol_of_closed_block_anion_symbol sym_cba = 
  Closed_block_symbol_t.Closed_block_anion_symbol sym_cba
;;

let closed_block_symbol_of_closed_block_cation_symbol sym_cbc = 
  Closed_block_symbol_t.Closed_block_cation_symbol sym_cbc
;;

let closed_block_symbol_of_closed_block_neutral_symbol sym_cbn = 
  Closed_block_symbol_t.Closed_block_neutral_symbol sym_cbn
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let z_fh_z = closed_block_symbol_of_closed_block_neutral_symbol Closed_block_neutral_symbol_v.z_fh_z;;

let z_h2_z = closed_block_symbol_of_closed_block_neutral_symbol Closed_block_neutral_symbol_v.z_h2_z;;

let z_sh_z = closed_block_symbol_of_closed_block_neutral_symbol Closed_block_neutral_symbol_v.z_sh_z;;

let z_o2_z = closed_block_symbol_of_closed_block_neutral_symbol Closed_block_neutral_symbol_v.z_o2_z;;

let z_no_z = closed_block_symbol_of_closed_block_neutral_symbol Closed_block_neutral_symbol_v.z_no_z;;

let z_co_z = closed_block_symbol_of_closed_block_neutral_symbol Closed_block_neutral_symbol_v.z_co_z;;

let z_n2_z = closed_block_symbol_of_closed_block_neutral_symbol Closed_block_neutral_symbol_v.z_n2_z;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let closed_block_anion_constructor s = closed_block_symbol_of_closed_block_anion_symbol (Closed_block_anion_symbol_v.closed_block_anion_constructor s);;

let closed_block_cation_constructor s = closed_block_symbol_of_closed_block_cation_symbol (Closed_block_cation_symbol_v.closed_block_cation_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Closed_block_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Closed_block_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try closed_block_symbol_of_closed_block_anion_symbol
      (Closed_block_anion_symbol_v.make nam s)
  with Failure "Not_a_closed_block_anion_symbol:Closed_block_anion_symbol_v.ml:make" ->
  try closed_block_symbol_of_closed_block_cation_symbol
      (Closed_block_cation_symbol_v.make nam s)
  with Failure "Not_a_closed_block_cation_symbol:Closed_block_cation_symbol_v.ml:make" ->
  try closed_block_symbol_of_closed_block_neutral_symbol
      (Closed_block_neutral_symbol_v.make nam s)
  with Failure "Not_a_closed_block_neutral_symbol:Closed_block_neutral_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Closed_block_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Closed_block_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Closed_block_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Closed_block_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Closed_block subtype" nam s)
      "it does not exists"
      "Check file Closed_block_symbol_v.ml"
    in
    failwith "Not_a_closed_block_symbol:Closed_block_symbol_v.ml:make"
;;


(** Closed_block_symbol_v at 12:27:31 on 24 Jun 2013. created by version v2.3 of generator *)



