(** {3 Onetied_double_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Onetied_double_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Onetied_double_symbol_t.Onetied_double_atom_symbol sym_1da ->
    Onetied_double_atom_symbol_v.name sym_1da
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Onetied_double_symbol_t.Onetied_double_atom_symbol sym_1da ->
  Onetied_double_atom_symbol_v.string_off sym_1da
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_odo =
  Format.sprintf "Onetied_double_symbol_t.%s" (String.capitalize (name sym_odo))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_odo =
  Format.sprintf "%s \"%s\"" (longname sym_odo) (string_off sym_odo)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let onetied_double_atom_symbol_off_onetied_double_symbol = function
  | Onetied_double_symbol_t.Onetied_double_atom_symbol sym_1da -> sym_1da
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_onetied_double_atom_symbol_off_onetied_double_symbol = function
  | Onetied_double_symbol_t.Onetied_double_atom_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_z_o_d sym_odo =
  if not (is_onetied_double_atom_symbol_off_onetied_double_symbol sym_odo)
  then false
  else
    begin
      let sym_1da = onetied_double_atom_symbol_off_onetied_double_symbol sym_odo in
      Onetied_double_atom_symbol_v.is_z_o_d sym_1da
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let onetied_double_symbol_of_onetied_double_atom_symbol sym_1da = 
  Onetied_double_symbol_t.Onetied_double_atom_symbol sym_1da
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let z_o_d = onetied_double_symbol_of_onetied_double_atom_symbol Onetied_double_atom_symbol_v.z_o_d;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Onetied_double_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Onetied_double_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try onetied_double_symbol_of_onetied_double_atom_symbol
      (Onetied_double_atom_symbol_v.make nam s)
  with Failure "Not_a_onetied_double_atom_symbol:Onetied_double_atom_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Onetied_double_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Onetied_double_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Onetied_double_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Onetied_double_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Onetied_double subtype" nam s)
      "it does not exists"
      "Check file Onetied_double_symbol_v.ml"
    in
    failwith "Not_a_onetied_double_symbol:Onetied_double_symbol_v.ml:make"
;;


(** Onetied_double_symbol_v at 12:16:18 on 23 Jun 2013. created by version v2.2 of generator *)



