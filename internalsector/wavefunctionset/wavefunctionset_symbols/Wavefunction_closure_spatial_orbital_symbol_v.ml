(** {3 Wavefunction_closure_spatial_orbital_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Wavefunction_closure_spatial_orbital_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_mo_symbol sym_wom ->
    Wavefunction_closure_spatial_orbital_mo_symbol_v.name sym_wom
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_so_symbol sym_wos ->
    Wavefunction_closure_spatial_orbital_so_symbol_v.name sym_wos
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_numerical_symbol sym_won ->
    Wavefunction_closure_spatial_orbital_numerical_symbol_v.name sym_won
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_mo_symbol sym_wom ->
  Wavefunction_closure_spatial_orbital_mo_symbol_v.string_off sym_wom
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_so_symbol sym_wos ->
  Wavefunction_closure_spatial_orbital_so_symbol_v.string_off sym_wos
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_numerical_symbol sym_won ->
  Wavefunction_closure_spatial_orbital_numerical_symbol_v.string_off sym_won
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_wso =
  Format.sprintf "Wavefunction_closure_spatial_orbital_symbol_t.%s" (String.capitalize (name sym_wso))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_wso =
  Format.sprintf "%s \"%s\"" (longname sym_wso) (string_off sym_wso)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_spatial_orbital_symbol = function
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_mo_symbol sym_wom -> sym_wom
  | sym_wso -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_spatial_orbital_symbol"
      "Wavefunction_closure_spatial_orbital_mo_symbol"
      (name sym_wso) "check"
;;

let wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_spatial_orbital_symbol = function
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_so_symbol sym_wos -> sym_wos
  | sym_wso -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_spatial_orbital_symbol"
      "Wavefunction_closure_spatial_orbital_so_symbol"
      (name sym_wso) "check"
;;

let wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_spatial_orbital_symbol = function
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_numerical_symbol sym_won -> sym_won
  | sym_wso -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_spatial_orbital_symbol"
      "Wavefunction_closure_spatial_orbital_numerical_symbol"
      (name sym_wso) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_spatial_orbital_symbol = function
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_mo_symbol _ -> true
  | _ -> false
;;

let is_wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_spatial_orbital_symbol = function
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_so_symbol _ -> true
  | _ -> false
;;

let is_wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_spatial_orbital_symbol = function
  | Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_numerical_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_wavefunction_closure_spatial_orbital_mo_constructor sym_wso =
  if not (is_wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso)
  then false
  else
    begin
      let sym_wom = wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso in
      Wavefunction_closure_spatial_orbital_mo_symbol_v.is_wavefunction_closure_spatial_orbital_mo_constructor sym_wom
    end
;;

let is_wavefunction_closure_spatial_orbital_so_constructor sym_wso =
  if not (is_wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso)
  then false
  else
    begin
      let sym_wos = wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso in
      Wavefunction_closure_spatial_orbital_so_symbol_v.is_wavefunction_closure_spatial_orbital_so_constructor sym_wos
    end
;;

let is_wavefunction_closure_spatial_orbital_numerical_constructor sym_wso =
  if not (is_wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso)
  then false
  else
    begin
      let sym_won = wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso in
      Wavefunction_closure_spatial_orbital_numerical_symbol_v.is_wavefunction_closure_spatial_orbital_numerical_constructor sym_won
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_mo_symbol sym_wom = 
  Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_mo_symbol sym_wom
;;

let wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_so_symbol sym_wos = 
  Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_so_symbol sym_wos
;;

let wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_numerical_symbol sym_won = 
  Wavefunction_closure_spatial_orbital_symbol_t.Wavefunction_closure_spatial_orbital_numerical_symbol sym_won
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let wavefunction_closure_spatial_orbital_mo_constructor s = wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_mo_symbol (Wavefunction_closure_spatial_orbital_mo_symbol_v.wavefunction_closure_spatial_orbital_mo_constructor s);;

let wavefunction_closure_spatial_orbital_so_constructor s = wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_so_symbol (Wavefunction_closure_spatial_orbital_so_symbol_v.wavefunction_closure_spatial_orbital_so_constructor s);;

let wavefunction_closure_spatial_orbital_numerical_constructor s = wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_numerical_symbol (Wavefunction_closure_spatial_orbital_numerical_symbol_v.wavefunction_closure_spatial_orbital_numerical_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Wavefunction_closure_spatial_orbital_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Wavefunction_closure_spatial_orbital_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_mo_symbol
      (Wavefunction_closure_spatial_orbital_mo_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_closure_spatial_orbital_mo_symbol:Wavefunction_closure_spatial_orbital_mo_symbol_v.ml:make" ->
  try wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_so_symbol
      (Wavefunction_closure_spatial_orbital_so_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_closure_spatial_orbital_so_symbol:Wavefunction_closure_spatial_orbital_so_symbol_v.ml:make" ->
  try wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_numerical_symbol
      (Wavefunction_closure_spatial_orbital_numerical_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_closure_spatial_orbital_numerical_symbol:Wavefunction_closure_spatial_orbital_numerical_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Wavefunction_closure_spatial_orbital_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Wavefunction_closure_spatial_orbital_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Wavefunction_closure_spatial_orbital_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Wavefunction_closure_spatial_orbital_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Wavefunction_closure_spatial_orbital subtype" nam s)
      "it does not exists"
      "Check file Wavefunction_closure_spatial_orbital_symbol_v.ml"
    in
    failwith "Not_a_wavefunction_closure_spatial_orbital_symbol:Wavefunction_closure_spatial_orbital_symbol_v.ml:make"
;;


(** Wavefunction_closure_spatial_orbital_symbol_v at 11:11:35 on 27 Mar 2015. created by version v2.3 of generator *)



