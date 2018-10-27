(** {3 Onetied_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Onetied_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Onetied_symbol_t.Onetied_single_symbol sym_osi ->
    Onetied_single_symbol_v.name sym_osi
  | Onetied_symbol_t.Onetied_double_symbol sym_odo ->
    Onetied_double_symbol_v.name sym_odo
  | Onetied_symbol_t.Onetied_triple_symbol sym_otr ->
    Onetied_triple_symbol_v.name sym_otr
  | Onetied_symbol_t.Onetied_biconjugated_symbol sym_obi ->
    Onetied_biconjugated_symbol_v.name sym_obi
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Onetied_symbol_t.Onetied_single_symbol sym_osi ->
  Onetied_single_symbol_v.string_off sym_osi
  | Onetied_symbol_t.Onetied_double_symbol sym_odo ->
  Onetied_double_symbol_v.string_off sym_odo
  | Onetied_symbol_t.Onetied_triple_symbol sym_otr ->
  Onetied_triple_symbol_v.string_off sym_otr
  | Onetied_symbol_t.Onetied_biconjugated_symbol sym_obi ->
  Onetied_biconjugated_symbol_v.string_off sym_obi
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_one =
  Format.sprintf "Onetied_symbol_t.%s" (String.capitalize (name sym_one))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_one =
  Format.sprintf "%s \"%s\"" (longname sym_one) (string_off sym_one)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let onetied_single_symbol_off_onetied_symbol = function
  | Onetied_symbol_t.Onetied_single_symbol sym_osi -> sym_osi
  | sym_one -> Error_messages_v.print_fatal_error
      nam_cod "onetied_single_symbol_off_onetied_symbol"
      "Onetied_single_symbol"
      (name sym_one) "check"
;;

let onetied_double_symbol_off_onetied_symbol = function
  | Onetied_symbol_t.Onetied_double_symbol sym_odo -> sym_odo
  | sym_one -> Error_messages_v.print_fatal_error
      nam_cod "onetied_double_symbol_off_onetied_symbol"
      "Onetied_double_symbol"
      (name sym_one) "check"
;;

let onetied_triple_symbol_off_onetied_symbol = function
  | Onetied_symbol_t.Onetied_triple_symbol sym_otr -> sym_otr
  | sym_one -> Error_messages_v.print_fatal_error
      nam_cod "onetied_triple_symbol_off_onetied_symbol"
      "Onetied_triple_symbol"
      (name sym_one) "check"
;;

let onetied_biconjugated_symbol_off_onetied_symbol = function
  | Onetied_symbol_t.Onetied_biconjugated_symbol sym_obi -> sym_obi
  | sym_one -> Error_messages_v.print_fatal_error
      nam_cod "onetied_biconjugated_symbol_off_onetied_symbol"
      "Onetied_biconjugated_symbol"
      (name sym_one) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let onetied_single_atom_symbol_off_onetied_symbol sym_one = 
  let sym_osi = onetied_single_symbol_off_onetied_symbol sym_one in
    Onetied_single_symbol_v.onetied_single_atom_symbol_off_onetied_single_symbol sym_osi
;;

let onetied_double_atom_symbol_off_onetied_symbol sym_one = 
  let sym_odo = onetied_double_symbol_off_onetied_symbol sym_one in
    Onetied_double_symbol_v.onetied_double_atom_symbol_off_onetied_double_symbol sym_odo
;;

let onetied_triple_atom_symbol_off_onetied_symbol sym_one = 
  let sym_otr = onetied_triple_symbol_off_onetied_symbol sym_one in
    Onetied_triple_symbol_v.onetied_triple_atom_symbol_off_onetied_triple_symbol sym_otr
;;

let onetied_biconjugated_atom_symbol_off_onetied_symbol sym_one = 
  let sym_obi = onetied_biconjugated_symbol_off_onetied_symbol sym_one in
    Onetied_biconjugated_symbol_v.onetied_biconjugated_atom_symbol_off_onetied_biconjugated_symbol sym_obi
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_onetied_single_symbol_off_onetied_symbol = function
  | Onetied_symbol_t.Onetied_single_symbol _ -> true
  | _ -> false
;;

let is_onetied_double_symbol_off_onetied_symbol = function
  | Onetied_symbol_t.Onetied_double_symbol _ -> true
  | _ -> false
;;

let is_onetied_triple_symbol_off_onetied_symbol = function
  | Onetied_symbol_t.Onetied_triple_symbol _ -> true
  | _ -> false
;;

let is_onetied_biconjugated_symbol_off_onetied_symbol = function
  | Onetied_symbol_t.Onetied_biconjugated_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_z_h_s sym_one =
  if not (is_onetied_single_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
      let sym_osi = onetied_single_symbol_off_onetied_symbol sym_one in
      Onetied_single_symbol_v.is_z_h_s sym_osi
    end
;;

let is_z_f_s sym_one =
  if not (is_onetied_single_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
      let sym_osi = onetied_single_symbol_off_onetied_symbol sym_one in
      Onetied_single_symbol_v.is_z_f_s sym_osi
    end
;;

let is_z_s_s sym_one =
  if not (is_onetied_single_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
      let sym_osi = onetied_single_symbol_off_onetied_symbol sym_one in
      Onetied_single_symbol_v.is_z_s_s sym_osi
    end
;;

let is_z_o_d sym_one =
  if not (is_onetied_double_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
      let sym_odo = onetied_double_symbol_off_onetied_symbol sym_one in
      Onetied_double_symbol_v.is_z_o_d sym_odo
    end
;;

let is_z_n_t sym_one =
  if not (is_onetied_triple_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
      let sym_otr = onetied_triple_symbol_off_onetied_symbol sym_one in
      Onetied_triple_symbol_v.is_z_n_t sym_otr
    end
;;

let is_z_n_b sym_one =
  if not (is_onetied_biconjugated_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
      let sym_obi = onetied_biconjugated_symbol_off_onetied_symbol sym_one in
      Onetied_biconjugated_symbol_v.is_z_n_b sym_obi
    end
;;

let is_z_o_b sym_one =
  if not (is_onetied_biconjugated_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
      let sym_obi = onetied_biconjugated_symbol_off_onetied_symbol sym_one in
      Onetied_biconjugated_symbol_v.is_z_o_b sym_obi
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_onetied_single_atom_symbol_off_onetied_symbol sym_one =
  if not (is_onetied_single_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
  let sym_osi = onetied_single_symbol_off_onetied_symbol sym_one in
  Onetied_single_symbol_v.is_onetied_single_atom_symbol_off_onetied_single_symbol sym_osi
    end
;;

let is_onetied_double_atom_symbol_off_onetied_symbol sym_one =
  if not (is_onetied_double_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
  let sym_odo = onetied_double_symbol_off_onetied_symbol sym_one in
  Onetied_double_symbol_v.is_onetied_double_atom_symbol_off_onetied_double_symbol sym_odo
    end
;;

let is_onetied_triple_atom_symbol_off_onetied_symbol sym_one =
  if not (is_onetied_triple_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
  let sym_otr = onetied_triple_symbol_off_onetied_symbol sym_one in
  Onetied_triple_symbol_v.is_onetied_triple_atom_symbol_off_onetied_triple_symbol sym_otr
    end
;;

let is_onetied_biconjugated_atom_symbol_off_onetied_symbol sym_one =
  if not (is_onetied_biconjugated_symbol_off_onetied_symbol sym_one)
  then false
  else
    begin
  let sym_obi = onetied_biconjugated_symbol_off_onetied_symbol sym_one in
  Onetied_biconjugated_symbol_v.is_onetied_biconjugated_atom_symbol_off_onetied_biconjugated_symbol sym_obi
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let onetied_symbol_of_onetied_single_symbol sym_osi = 
  Onetied_symbol_t.Onetied_single_symbol sym_osi
;;

let onetied_symbol_of_onetied_double_symbol sym_odo = 
  Onetied_symbol_t.Onetied_double_symbol sym_odo
;;

let onetied_symbol_of_onetied_triple_symbol sym_otr = 
  Onetied_symbol_t.Onetied_triple_symbol sym_otr
;;

let onetied_symbol_of_onetied_biconjugated_symbol sym_obi = 
  Onetied_symbol_t.Onetied_biconjugated_symbol sym_obi
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let onetied_symbol_of_onetied_single_atom_symbol sym_1sa = 
  let sym_osi = Onetied_single_symbol_v.onetied_single_symbol_of_onetied_single_atom_symbol sym_1sa in
    onetied_symbol_of_onetied_single_symbol sym_osi
;;

let onetied_symbol_of_onetied_double_atom_symbol sym_1da = 
  let sym_odo = Onetied_double_symbol_v.onetied_double_symbol_of_onetied_double_atom_symbol sym_1da in
    onetied_symbol_of_onetied_double_symbol sym_odo
;;

let onetied_symbol_of_onetied_triple_atom_symbol sym_1ta = 
  let sym_otr = Onetied_triple_symbol_v.onetied_triple_symbol_of_onetied_triple_atom_symbol sym_1ta in
    onetied_symbol_of_onetied_triple_symbol sym_otr
;;

let onetied_symbol_of_onetied_biconjugated_atom_symbol sym_1ba = 
  let sym_obi = Onetied_biconjugated_symbol_v.onetied_biconjugated_symbol_of_onetied_biconjugated_atom_symbol sym_1ba in
    onetied_symbol_of_onetied_biconjugated_symbol sym_obi
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let z_h_s = onetied_symbol_of_onetied_single_symbol Onetied_single_symbol_v.z_h_s;;

let z_f_s = onetied_symbol_of_onetied_single_symbol Onetied_single_symbol_v.z_f_s;;

let z_s_s = onetied_symbol_of_onetied_single_symbol Onetied_single_symbol_v.z_s_s;;

let z_o_d = onetied_symbol_of_onetied_double_symbol Onetied_double_symbol_v.z_o_d;;

let z_n_t = onetied_symbol_of_onetied_triple_symbol Onetied_triple_symbol_v.z_n_t;;

let z_n_b = onetied_symbol_of_onetied_biconjugated_symbol Onetied_biconjugated_symbol_v.z_n_b;;

let z_o_b = onetied_symbol_of_onetied_biconjugated_symbol Onetied_biconjugated_symbol_v.z_o_b;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Onetied_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Onetied_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try onetied_symbol_of_onetied_single_symbol
      (Onetied_single_symbol_v.make nam s)
  with Failure "Not_a_onetied_single_symbol:Onetied_single_symbol_v.ml:make" ->
  try onetied_symbol_of_onetied_double_symbol
      (Onetied_double_symbol_v.make nam s)
  with Failure "Not_a_onetied_double_symbol:Onetied_double_symbol_v.ml:make" ->
  try onetied_symbol_of_onetied_triple_symbol
      (Onetied_triple_symbol_v.make nam s)
  with Failure "Not_a_onetied_triple_symbol:Onetied_triple_symbol_v.ml:make" ->
  try onetied_symbol_of_onetied_biconjugated_symbol
      (Onetied_biconjugated_symbol_v.make nam s)
  with Failure "Not_a_onetied_biconjugated_symbol:Onetied_biconjugated_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Onetied_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Onetied_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Onetied_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Onetied_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Onetied subtype" nam s)
      "it does not exists"
      "Check file Onetied_symbol_v.ml"
    in
    failwith "Not_a_onetied_symbol:Onetied_symbol_v.ml:make"
;;


(** Onetied_symbol_v at 12:16:18 on 23 Jun 2013. created by version v2.2 of generator *)



