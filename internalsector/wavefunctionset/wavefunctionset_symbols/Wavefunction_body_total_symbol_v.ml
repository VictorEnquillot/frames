(** {3 Wavefunction_body_total_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Wavefunction_body_total_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Wavefunction_body_total_symbol_t.Wavefunction_body_total_manye_symbol sym_wtm ->
    Wavefunction_body_total_manye_symbol_v.name sym_wtm
  | Wavefunction_body_total_symbol_t.Wavefunction_body_total_orbital_symbol sym_wto ->
    Wavefunction_body_total_orbital_symbol_v.name sym_wto
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Wavefunction_body_total_symbol_t.Wavefunction_body_total_manye_symbol sym_wtm ->
  Wavefunction_body_total_manye_symbol_v.string_off sym_wtm
  | Wavefunction_body_total_symbol_t.Wavefunction_body_total_orbital_symbol sym_wto ->
  Wavefunction_body_total_orbital_symbol_v.string_off sym_wto
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_wbt =
  Format.sprintf "Wavefunction_body_total_symbol_t.%s" (String.capitalize (name sym_wbt))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_wbt =
  Format.sprintf "%s \"%s\"" (longname sym_wbt) (string_off sym_wbt)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol = function
  | Wavefunction_body_total_symbol_t.Wavefunction_body_total_manye_symbol sym_wtm -> sym_wtm
  | sym_wbt -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol"
      "Wavefunction_body_total_manye_symbol"
      (name sym_wbt) "check"
;;

let wavefunction_body_total_orbital_symbol_off_wavefunction_body_total_symbol = function
  | Wavefunction_body_total_symbol_t.Wavefunction_body_total_orbital_symbol sym_wto -> sym_wto
  | sym_wbt -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_body_total_orbital_symbol_off_wavefunction_body_total_symbol"
      "Wavefunction_body_total_orbital_symbol"
      (name sym_wbt) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol = function
  | Wavefunction_body_total_symbol_t.Wavefunction_body_total_manye_symbol _ -> true
  | _ -> false
;;

let is_wavefunction_body_total_orbital_symbol_off_wavefunction_body_total_symbol = function
  | Wavefunction_body_total_symbol_t.Wavefunction_body_total_orbital_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_wavefunction_body_total_manye_analytic sym_wbt =
  if not (is_wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol sym_wbt)
  then false
  else
    begin
      let sym_wtm = wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol sym_wbt in
      Wavefunction_body_total_manye_symbol_v.is_wavefunction_body_total_manye_analytic sym_wtm
    end
;;

let is_wavefunction_body_total_manye_determinant sym_wbt =
  if not (is_wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol sym_wbt)
  then false
  else
    begin
      let sym_wtm = wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol sym_wbt in
      Wavefunction_body_total_manye_symbol_v.is_wavefunction_body_total_manye_determinant sym_wtm
    end
;;

let is_wavefunction_body_total_manye_numerical sym_wbt =
  if not (is_wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol sym_wbt)
  then false
  else
    begin
      let sym_wtm = wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol sym_wbt in
      Wavefunction_body_total_manye_symbol_v.is_wavefunction_body_total_manye_numerical sym_wtm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_wavefunction_body_total_orbital_analytic sym_wbt =
  if not (is_wavefunction_body_total_orbital_symbol_off_wavefunction_body_total_symbol sym_wbt)
  then false
  else
    begin
      let sym_wto = wavefunction_body_total_orbital_symbol_off_wavefunction_body_total_symbol sym_wbt in
      Wavefunction_body_total_orbital_symbol_v.is_wavefunction_body_total_orbital_analytic sym_wto
    end
;;

let is_wavefunction_body_total_orbital_numerical sym_wbt =
  if not (is_wavefunction_body_total_orbital_symbol_off_wavefunction_body_total_symbol sym_wbt)
  then false
  else
    begin
      let sym_wto = wavefunction_body_total_orbital_symbol_off_wavefunction_body_total_symbol sym_wbt in
      Wavefunction_body_total_orbital_symbol_v.is_wavefunction_body_total_orbital_numerical sym_wto
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let wavefunction_body_total_symbol_of_wavefunction_body_total_manye_symbol sym_wtm = 
  Wavefunction_body_total_symbol_t.Wavefunction_body_total_manye_symbol sym_wtm
;;

let wavefunction_body_total_symbol_of_wavefunction_body_total_orbital_symbol sym_wto = 
  Wavefunction_body_total_symbol_t.Wavefunction_body_total_orbital_symbol sym_wto
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let wavefunction_body_total_manye_analytic = wavefunction_body_total_symbol_of_wavefunction_body_total_manye_symbol Wavefunction_body_total_manye_symbol_v.wavefunction_body_total_manye_analytic;;

let wavefunction_body_total_manye_determinant = wavefunction_body_total_symbol_of_wavefunction_body_total_manye_symbol Wavefunction_body_total_manye_symbol_v.wavefunction_body_total_manye_determinant;;

let wavefunction_body_total_manye_numerical = wavefunction_body_total_symbol_of_wavefunction_body_total_manye_symbol Wavefunction_body_total_manye_symbol_v.wavefunction_body_total_manye_numerical;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let wavefunction_body_total_orbital_analytic s = wavefunction_body_total_symbol_of_wavefunction_body_total_orbital_symbol (Wavefunction_body_total_orbital_symbol_v.wavefunction_body_total_orbital_analytic s);;

let wavefunction_body_total_orbital_numerical s = wavefunction_body_total_symbol_of_wavefunction_body_total_orbital_symbol (Wavefunction_body_total_orbital_symbol_v.wavefunction_body_total_orbital_numerical s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Wavefunction_body_total_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Wavefunction_body_total_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try wavefunction_body_total_symbol_of_wavefunction_body_total_manye_symbol
      (Wavefunction_body_total_manye_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_body_total_manye_symbol:Wavefunction_body_total_manye_symbol_v.ml:make" ->
  try wavefunction_body_total_symbol_of_wavefunction_body_total_orbital_symbol
      (Wavefunction_body_total_orbital_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_body_total_orbital_symbol:Wavefunction_body_total_orbital_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Wavefunction_body_total_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Wavefunction_body_total_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Wavefunction_body_total_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Wavefunction_body_total_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Wavefunction_body_total subtype" nam s)
      "it does not exists"
      "Check file Wavefunction_body_total_symbol_v.ml"
    in
    failwith "Not_a_wavefunction_body_total_symbol:Wavefunction_body_total_symbol_v.ml:make"
;;


(** Wavefunction_body_total_symbol_v at 11:11:34 on 27 Mar 2015. created by version v2.3 of generator *)



