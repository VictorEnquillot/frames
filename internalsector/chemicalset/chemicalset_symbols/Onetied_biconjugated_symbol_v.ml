(** {3 Onetied_biconjugated_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Onetied_biconjugated_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Onetied_biconjugated_symbol_t.Onetied_biconjugated_atom_symbol sym_1ba ->
    Onetied_biconjugated_atom_symbol_v.name sym_1ba
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Onetied_biconjugated_symbol_t.Onetied_biconjugated_atom_symbol sym_1ba ->
  Onetied_biconjugated_atom_symbol_v.string_off sym_1ba
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_obi =
  Format.sprintf "Onetied_biconjugated_symbol_t.%s" (String.capitalize (name sym_obi))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_obi =
  Format.sprintf "%s \"%s\"" (longname sym_obi) (string_off sym_obi)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let onetied_biconjugated_atom_symbol_off_onetied_biconjugated_symbol = function
  | Onetied_biconjugated_symbol_t.Onetied_biconjugated_atom_symbol sym_1ba -> sym_1ba
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_onetied_biconjugated_atom_symbol_off_onetied_biconjugated_symbol = function
  | Onetied_biconjugated_symbol_t.Onetied_biconjugated_atom_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_z_n_b sym_obi =
  if not (is_onetied_biconjugated_atom_symbol_off_onetied_biconjugated_symbol sym_obi)
  then false
  else
    begin
      let sym_1ba = onetied_biconjugated_atom_symbol_off_onetied_biconjugated_symbol sym_obi in
      Onetied_biconjugated_atom_symbol_v.is_z_n_b sym_1ba
    end
;;

let is_z_o_b sym_obi =
  if not (is_onetied_biconjugated_atom_symbol_off_onetied_biconjugated_symbol sym_obi)
  then false
  else
    begin
      let sym_1ba = onetied_biconjugated_atom_symbol_off_onetied_biconjugated_symbol sym_obi in
      Onetied_biconjugated_atom_symbol_v.is_z_o_b sym_1ba
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let onetied_biconjugated_symbol_of_onetied_biconjugated_atom_symbol sym_1ba = 
  Onetied_biconjugated_symbol_t.Onetied_biconjugated_atom_symbol sym_1ba
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let z_n_b = onetied_biconjugated_symbol_of_onetied_biconjugated_atom_symbol Onetied_biconjugated_atom_symbol_v.z_n_b;;

let z_o_b = onetied_biconjugated_symbol_of_onetied_biconjugated_atom_symbol Onetied_biconjugated_atom_symbol_v.z_o_b;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Onetied_biconjugated_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Onetied_biconjugated_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try onetied_biconjugated_symbol_of_onetied_biconjugated_atom_symbol
      (Onetied_biconjugated_atom_symbol_v.make nam s)
  with Failure "Not_a_onetied_biconjugated_atom_symbol:Onetied_biconjugated_atom_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Onetied_biconjugated_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Onetied_biconjugated_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Onetied_biconjugated_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Onetied_biconjugated_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Onetied_biconjugated subtype" nam s)
      "it does not exists"
      "Check file Onetied_biconjugated_symbol_v.ml"
    in
    failwith "Not_a_onetied_biconjugated_symbol:Onetied_biconjugated_symbol_v.ml:make"
;;


(** Onetied_biconjugated_symbol_v at 12:16:18 on 23 Jun 2013. created by version v2.2 of generator *)



