(** {3 Wavefunction_closure_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Wavefunction_closure_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Wavefunction_closure_symbol_t.Wavefunction_closure_coefficient_symbol sym_wcc ->
    Wavefunction_closure_coefficient_symbol_v.name sym_wcc
  | Wavefunction_closure_symbol_t.Wavefunction_closure_jastrow_factor_symbol sym_wjf ->
    Wavefunction_closure_jastrow_factor_symbol_v.name sym_wjf
  | Wavefunction_closure_symbol_t.Wavefunction_closure_spatial_orbital_symbol sym_wso ->
    Wavefunction_closure_spatial_orbital_symbol_v.name sym_wso
  | Wavefunction_closure_symbol_t.Wavefunction_closure_spin_symbol sym_wcs ->
    Wavefunction_closure_spin_symbol_v.name sym_wcs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Wavefunction_closure_symbol_t.Wavefunction_closure_coefficient_symbol sym_wcc ->
  Wavefunction_closure_coefficient_symbol_v.string_off sym_wcc
  | Wavefunction_closure_symbol_t.Wavefunction_closure_jastrow_factor_symbol sym_wjf ->
  Wavefunction_closure_jastrow_factor_symbol_v.string_off sym_wjf
  | Wavefunction_closure_symbol_t.Wavefunction_closure_spatial_orbital_symbol sym_wso ->
  Wavefunction_closure_spatial_orbital_symbol_v.string_off sym_wso
  | Wavefunction_closure_symbol_t.Wavefunction_closure_spin_symbol sym_wcs ->
  Wavefunction_closure_spin_symbol_v.string_off sym_wcs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_wcl =
  Format.sprintf "Wavefunction_closure_symbol_t.%s" (String.capitalize (name sym_wcl))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_wcl =
  Format.sprintf "%s \"%s\"" (longname sym_wcl) (string_off sym_wcl)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol = function
  | Wavefunction_closure_symbol_t.Wavefunction_closure_coefficient_symbol sym_wcc -> sym_wcc
  | sym_wcl -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol"
      "Wavefunction_closure_coefficient_symbol"
      (name sym_wcl) "check"
;;

let wavefunction_closure_jastrow_factor_symbol_off_wavefunction_closure_symbol = function
  | Wavefunction_closure_symbol_t.Wavefunction_closure_jastrow_factor_symbol sym_wjf -> sym_wjf
  | sym_wcl -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_closure_jastrow_factor_symbol_off_wavefunction_closure_symbol"
      "Wavefunction_closure_jastrow_factor_symbol"
      (name sym_wcl) "check"
;;

let wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol = function
  | Wavefunction_closure_symbol_t.Wavefunction_closure_spatial_orbital_symbol sym_wso -> sym_wso
  | sym_wcl -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol"
      "Wavefunction_closure_spatial_orbital_symbol"
      (name sym_wcl) "check"
;;

let wavefunction_closure_spin_symbol_off_wavefunction_closure_symbol = function
  | Wavefunction_closure_symbol_t.Wavefunction_closure_spin_symbol sym_wcs -> sym_wcs
  | sym_wcl -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_closure_spin_symbol_off_wavefunction_closure_symbol"
      "Wavefunction_closure_spin_symbol"
      (name sym_wcl) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_symbol sym_wcl = 
  let sym_wso = wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl in
    Wavefunction_closure_spatial_orbital_symbol_v.wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso
;;

let wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_symbol sym_wcl = 
  let sym_wso = wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl in
    Wavefunction_closure_spatial_orbital_symbol_v.wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso
;;

let wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_symbol sym_wcl = 
  let sym_wso = wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl in
    Wavefunction_closure_spatial_orbital_symbol_v.wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol = function
  | Wavefunction_closure_symbol_t.Wavefunction_closure_coefficient_symbol _ -> true
  | _ -> false
;;

let is_wavefunction_closure_jastrow_factor_symbol_off_wavefunction_closure_symbol = function
  | Wavefunction_closure_symbol_t.Wavefunction_closure_jastrow_factor_symbol _ -> true
  | _ -> false
;;

let is_wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol = function
  | Wavefunction_closure_symbol_t.Wavefunction_closure_spatial_orbital_symbol _ -> true
  | _ -> false
;;

let is_wavefunction_closure_spin_symbol_off_wavefunction_closure_symbol = function
  | Wavefunction_closure_symbol_t.Wavefunction_closure_spin_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_wavefunction_closure_coefficient_determinant sym_wcl =
  if not (is_wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
      let sym_wcc = wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol sym_wcl in
      Wavefunction_closure_coefficient_symbol_v.is_wavefunction_closure_coefficient_determinant sym_wcc
    end
;;

let is_wavefunction_closure_coefficient_jastrow sym_wcl =
  if not (is_wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
      let sym_wcc = wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol sym_wcl in
      Wavefunction_closure_coefficient_symbol_v.is_wavefunction_closure_coefficient_jastrow sym_wcc
    end
;;

let is_wavefunction_closure_coefficient_fragment sym_wcl =
  if not (is_wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
      let sym_wcc = wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol sym_wcl in
      Wavefunction_closure_coefficient_symbol_v.is_wavefunction_closure_coefficient_fragment sym_wcc
    end
;;

let is_wavefunction_closure_jastrow_factor_constructor sym_wcl =
  if not (is_wavefunction_closure_jastrow_factor_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
      let sym_wjf = wavefunction_closure_jastrow_factor_symbol_off_wavefunction_closure_symbol sym_wcl in
      Wavefunction_closure_jastrow_factor_symbol_v.is_wavefunction_closure_jastrow_factor_constructor sym_wjf
    end
;;

let is_wavefunction_closure_spatial_orbital_mo_constructor sym_wcl =
  if not (is_wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
      let sym_wso = wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl in
      Wavefunction_closure_spatial_orbital_symbol_v.is_wavefunction_closure_spatial_orbital_mo_constructor sym_wso
    end
;;

let is_wavefunction_closure_spatial_orbital_so_constructor sym_wcl =
  if not (is_wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
      let sym_wso = wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl in
      Wavefunction_closure_spatial_orbital_symbol_v.is_wavefunction_closure_spatial_orbital_so_constructor sym_wso
    end
;;

let is_wavefunction_closure_spatial_orbital_numerical_constructor sym_wcl =
  if not (is_wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
      let sym_wso = wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl in
      Wavefunction_closure_spatial_orbital_symbol_v.is_wavefunction_closure_spatial_orbital_numerical_constructor sym_wso
    end
;;

let is_wavefunction_closure_spin_up sym_wcl =
  if not (is_wavefunction_closure_spin_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
      let sym_wcs = wavefunction_closure_spin_symbol_off_wavefunction_closure_symbol sym_wcl in
      Wavefunction_closure_spin_symbol_v.is_wavefunction_closure_spin_up sym_wcs
    end
;;

let is_wavefunction_closure_spin_down sym_wcl =
  if not (is_wavefunction_closure_spin_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
      let sym_wcs = wavefunction_closure_spin_symbol_off_wavefunction_closure_symbol sym_wcl in
      Wavefunction_closure_spin_symbol_v.is_wavefunction_closure_spin_down sym_wcs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_symbol sym_wcl =
  if not (is_wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
  let sym_wso = wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl in
  Wavefunction_closure_spatial_orbital_symbol_v.is_wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso
    end
;;

let is_wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_symbol sym_wcl =
  if not (is_wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
  let sym_wso = wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl in
  Wavefunction_closure_spatial_orbital_symbol_v.is_wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso
    end
;;

let is_wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_symbol sym_wcl =
  if not (is_wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl)
  then false
  else
    begin
  let sym_wso = wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl in
  Wavefunction_closure_spatial_orbital_symbol_v.is_wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_spatial_orbital_symbol sym_wso
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let wavefunction_closure_symbol_of_wavefunction_closure_coefficient_symbol sym_wcc = 
  Wavefunction_closure_symbol_t.Wavefunction_closure_coefficient_symbol sym_wcc
;;

let wavefunction_closure_symbol_of_wavefunction_closure_jastrow_factor_symbol sym_wjf = 
  Wavefunction_closure_symbol_t.Wavefunction_closure_jastrow_factor_symbol sym_wjf
;;

let wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_symbol sym_wso = 
  Wavefunction_closure_symbol_t.Wavefunction_closure_spatial_orbital_symbol sym_wso
;;

let wavefunction_closure_symbol_of_wavefunction_closure_spin_symbol sym_wcs = 
  Wavefunction_closure_symbol_t.Wavefunction_closure_spin_symbol sym_wcs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_mo_symbol sym_wom = 
  let sym_wso = Wavefunction_closure_spatial_orbital_symbol_v.wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_mo_symbol sym_wom in
    wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_symbol sym_wso
;;

let wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_so_symbol sym_wos = 
  let sym_wso = Wavefunction_closure_spatial_orbital_symbol_v.wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_so_symbol sym_wos in
    wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_symbol sym_wso
;;

let wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_numerical_symbol sym_won = 
  let sym_wso = Wavefunction_closure_spatial_orbital_symbol_v.wavefunction_closure_spatial_orbital_symbol_of_wavefunction_closure_spatial_orbital_numerical_symbol sym_won in
    wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_symbol sym_wso
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let wavefunction_closure_coefficient_determinant s = wavefunction_closure_symbol_of_wavefunction_closure_coefficient_symbol (Wavefunction_closure_coefficient_symbol_v.wavefunction_closure_coefficient_determinant s);;

let wavefunction_closure_coefficient_jastrow s = wavefunction_closure_symbol_of_wavefunction_closure_coefficient_symbol (Wavefunction_closure_coefficient_symbol_v.wavefunction_closure_coefficient_jastrow s);;

let wavefunction_closure_coefficient_fragment s = wavefunction_closure_symbol_of_wavefunction_closure_coefficient_symbol (Wavefunction_closure_coefficient_symbol_v.wavefunction_closure_coefficient_fragment s);;

let wavefunction_closure_jastrow_factor_constructor s = wavefunction_closure_symbol_of_wavefunction_closure_jastrow_factor_symbol (Wavefunction_closure_jastrow_factor_symbol_v.wavefunction_closure_jastrow_factor_constructor s);;

let wavefunction_closure_spatial_orbital_mo_constructor s = wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_symbol (Wavefunction_closure_spatial_orbital_symbol_v.wavefunction_closure_spatial_orbital_mo_constructor s);;

let wavefunction_closure_spatial_orbital_so_constructor s = wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_symbol (Wavefunction_closure_spatial_orbital_symbol_v.wavefunction_closure_spatial_orbital_so_constructor s);;

let wavefunction_closure_spatial_orbital_numerical_constructor s = wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_symbol (Wavefunction_closure_spatial_orbital_symbol_v.wavefunction_closure_spatial_orbital_numerical_constructor s);;

let wavefunction_closure_spin_up s = wavefunction_closure_symbol_of_wavefunction_closure_spin_symbol (Wavefunction_closure_spin_symbol_v.wavefunction_closure_spin_up s);;

let wavefunction_closure_spin_down s = wavefunction_closure_symbol_of_wavefunction_closure_spin_symbol (Wavefunction_closure_spin_symbol_v.wavefunction_closure_spin_down s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Wavefunction_closure_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Wavefunction_closure_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try wavefunction_closure_symbol_of_wavefunction_closure_coefficient_symbol
      (Wavefunction_closure_coefficient_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_closure_coefficient_symbol:Wavefunction_closure_coefficient_symbol_v.ml:make" ->
  try wavefunction_closure_symbol_of_wavefunction_closure_jastrow_factor_symbol
      (Wavefunction_closure_jastrow_factor_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_closure_jastrow_factor_symbol:Wavefunction_closure_jastrow_factor_symbol_v.ml:make" ->
  try wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_symbol
      (Wavefunction_closure_spatial_orbital_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_closure_spatial_orbital_symbol:Wavefunction_closure_spatial_orbital_symbol_v.ml:make" ->
  try wavefunction_closure_symbol_of_wavefunction_closure_spin_symbol
      (Wavefunction_closure_spin_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_closure_spin_symbol:Wavefunction_closure_spin_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Wavefunction_closure_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Wavefunction_closure_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Wavefunction_closure_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Wavefunction_closure_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Wavefunction_closure subtype" nam s)
      "it does not exists"
      "Check file Wavefunction_closure_symbol_v.ml"
    in
    failwith "Not_a_wavefunction_closure_symbol:Wavefunction_closure_symbol_v.ml:make"
;;


(** Wavefunction_closure_symbol_v at 11:11:34 on 27 Mar 2015. created by version v2.3 of generator *)



