(** {3 Wavefunction_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Wavefunction_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Wavefunction_body_symbol_t.Wavefunction_body_spatial_manye_symbol sym_wsm ->
    Wavefunction_body_spatial_manye_symbol_v.name sym_wsm
  | Wavefunction_body_symbol_t.Wavefunction_body_total_symbol sym_wbt ->
    Wavefunction_body_total_symbol_v.name sym_wbt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Wavefunction_body_symbol_t.Wavefunction_body_spatial_manye_symbol sym_wsm ->
  Wavefunction_body_spatial_manye_symbol_v.string_off sym_wsm
  | Wavefunction_body_symbol_t.Wavefunction_body_total_symbol sym_wbt ->
  Wavefunction_body_total_symbol_v.string_off sym_wbt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_wbo =
  Format.sprintf "Wavefunction_body_symbol_t.%s" (String.capitalize (name sym_wbo))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_wbo =
  Format.sprintf "%s \"%s\"" (longname sym_wbo) (string_off sym_wbo)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol = function
  | Wavefunction_body_symbol_t.Wavefunction_body_spatial_manye_symbol sym_wsm -> sym_wsm
  | sym_wbo -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol"
      "Wavefunction_body_spatial_manye_symbol"
      (name sym_wbo) "check"
;;

let wavefunction_body_total_symbol_off_wavefunction_body_symbol = function
  | Wavefunction_body_symbol_t.Wavefunction_body_total_symbol sym_wbt -> sym_wbt
  | sym_wbo -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_body_total_symbol_off_wavefunction_body_symbol"
      "Wavefunction_body_total_symbol"
      (name sym_wbo) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_symbol sym_wbo = 
  let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
    Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm
;;

let wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_symbol sym_wbo = 
  let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
    Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm
;;

let wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_symbol sym_wbo = 
  let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
    Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm
;;

let wavefunction_body_total_manye_symbol_off_wavefunction_body_symbol sym_wbo = 
  let sym_wbt = wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo in
    Wavefunction_body_total_symbol_v.wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol sym_wbt
;;

let wavefunction_body_total_orbital_symbol_off_wavefunction_body_symbol sym_wbo = 
  let sym_wbt = wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo in
    Wavefunction_body_total_symbol_v.wavefunction_body_total_orbital_symbol_off_wavefunction_body_total_symbol sym_wbt
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol = function
  | Wavefunction_body_symbol_t.Wavefunction_body_spatial_manye_symbol _ -> true
  | _ -> false
;;

let is_wavefunction_body_total_symbol_off_wavefunction_body_symbol = function
  | Wavefunction_body_symbol_t.Wavefunction_body_total_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_wavefunction_body_spatial_manye_analytic sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_analytic sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_determinant_scaled sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_determinant_scaled sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_numerical sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_numerical sym_wsm
    end
;;

let is_wavefunction_body_total_manye_analytic sym_wbo =
  if not (is_wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wbt = wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_total_symbol_v.is_wavefunction_body_total_manye_analytic sym_wbt
    end
;;

let is_wavefunction_body_total_manye_determinant sym_wbo =
  if not (is_wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wbt = wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_total_symbol_v.is_wavefunction_body_total_manye_determinant sym_wbt
    end
;;

let is_wavefunction_body_total_manye_numerical sym_wbo =
  if not (is_wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wbt = wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_total_symbol_v.is_wavefunction_body_total_manye_numerical sym_wbt
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_bare_cc sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_cc sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_ci sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_ci sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_hf sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_hf sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_mcscf sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_mcscf sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_rhf sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_rhf sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_uhf sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_uhf sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_fragment_bare sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_fragment_bare sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_fragment_csf sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_fragment_csf sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_fragment_jastrowed sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_fragment_jastrowed sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_fragment_jastrowed_scaled sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_fragment_jastrowed_scaled sym_wsm
    end
;;

let is_wavefunction_body_total_orbital_analytic sym_wbo =
  if not (is_wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wbt = wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_total_symbol_v.is_wavefunction_body_total_orbital_analytic sym_wbt
    end
;;

let is_wavefunction_body_total_orbital_numerical sym_wbo =
  if not (is_wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
      let sym_wbt = wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo in
      Wavefunction_body_total_symbol_v.is_wavefunction_body_total_orbital_numerical sym_wbt
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_symbol sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
  let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
  Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_symbol sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
  let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
  Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm
    end
;;

let is_wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_symbol sym_wbo =
  if not (is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
  let sym_wsm = wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo in
  Wavefunction_body_spatial_manye_symbol_v.is_wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm
    end
;;

let is_wavefunction_body_total_manye_symbol_off_wavefunction_body_symbol sym_wbo =
  if not (is_wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
  let sym_wbt = wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo in
  Wavefunction_body_total_symbol_v.is_wavefunction_body_total_manye_symbol_off_wavefunction_body_total_symbol sym_wbt
    end
;;

let is_wavefunction_body_total_orbital_symbol_off_wavefunction_body_symbol sym_wbo =
  if not (is_wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo)
  then false
  else
    begin
  let sym_wbt = wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo in
  Wavefunction_body_total_symbol_v.is_wavefunction_body_total_orbital_symbol_off_wavefunction_body_total_symbol sym_wbt
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol sym_wsm = 
  Wavefunction_body_symbol_t.Wavefunction_body_spatial_manye_symbol sym_wsm
;;

let wavefunction_body_symbol_of_wavefunction_body_total_symbol sym_wbt = 
  Wavefunction_body_symbol_t.Wavefunction_body_total_symbol sym_wbt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let wavefunction_body_symbol_of_wavefunction_body_spatial_manye_determinant_symbol sym_wmd = 
  let sym_wsm = Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol sym_wmd in
    wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol sym_wsm
;;

let wavefunction_body_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb = 
  let sym_wsm = Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb in
    wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol sym_wsm
;;

let wavefunction_body_symbol_of_wavefunction_body_spatial_manye_fragment_symbol sym_wmf = 
  let sym_wsm = Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_fragment_symbol sym_wmf in
    wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol sym_wsm
;;

let wavefunction_body_symbol_of_wavefunction_body_total_manye_symbol sym_wtm = 
  let sym_wbt = Wavefunction_body_total_symbol_v.wavefunction_body_total_symbol_of_wavefunction_body_total_manye_symbol sym_wtm in
    wavefunction_body_symbol_of_wavefunction_body_total_symbol sym_wbt
;;

let wavefunction_body_symbol_of_wavefunction_body_total_orbital_symbol sym_wto = 
  let sym_wbt = Wavefunction_body_total_symbol_v.wavefunction_body_total_symbol_of_wavefunction_body_total_orbital_symbol sym_wto in
    wavefunction_body_symbol_of_wavefunction_body_total_symbol sym_wbt
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let wavefunction_body_spatial_manye_analytic = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_analytic;;

let wavefunction_body_spatial_manye_determinant_scaled = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_determinant_scaled;;

let wavefunction_body_spatial_manye_numerical = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_numerical;;

let wavefunction_body_total_manye_analytic = wavefunction_body_symbol_of_wavefunction_body_total_symbol Wavefunction_body_total_symbol_v.wavefunction_body_total_manye_analytic;;

let wavefunction_body_total_manye_determinant = wavefunction_body_symbol_of_wavefunction_body_total_symbol Wavefunction_body_total_symbol_v.wavefunction_body_total_manye_determinant;;

let wavefunction_body_total_manye_numerical = wavefunction_body_symbol_of_wavefunction_body_total_symbol Wavefunction_body_total_symbol_v.wavefunction_body_total_manye_numerical;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_bare_cc s = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol (Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_determinant_bare_cc s);;

let wavefunction_body_spatial_manye_determinant_bare_ci s = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol (Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_determinant_bare_ci s);;

let wavefunction_body_spatial_manye_determinant_bare_hf s = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol (Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_determinant_bare_hf s);;

let wavefunction_body_spatial_manye_determinant_bare_mcscf s = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol (Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_determinant_bare_mcscf s);;

let wavefunction_body_spatial_manye_determinant_bare_rhf s = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol (Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_determinant_bare_rhf s);;

let wavefunction_body_spatial_manye_determinant_bare_uhf s = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol (Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_determinant_bare_uhf s);;

let wavefunction_body_spatial_manye_fragment_bare s = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol (Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_fragment_bare s);;

let wavefunction_body_spatial_manye_fragment_csf s = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol (Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_fragment_csf s);;

let wavefunction_body_spatial_manye_fragment_jastrowed s = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol (Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_fragment_jastrowed s);;

let wavefunction_body_spatial_manye_fragment_jastrowed_scaled s = wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol (Wavefunction_body_spatial_manye_symbol_v.wavefunction_body_spatial_manye_fragment_jastrowed_scaled s);;

let wavefunction_body_total_orbital_analytic s = wavefunction_body_symbol_of_wavefunction_body_total_symbol (Wavefunction_body_total_symbol_v.wavefunction_body_total_orbital_analytic s);;

let wavefunction_body_total_orbital_numerical s = wavefunction_body_symbol_of_wavefunction_body_total_symbol (Wavefunction_body_total_symbol_v.wavefunction_body_total_orbital_numerical s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Wavefunction_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Wavefunction_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol
      (Wavefunction_body_spatial_manye_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_body_spatial_manye_symbol:Wavefunction_body_spatial_manye_symbol_v.ml:make" ->
  try wavefunction_body_symbol_of_wavefunction_body_total_symbol
      (Wavefunction_body_total_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_body_total_symbol:Wavefunction_body_total_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Wavefunction_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Wavefunction_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Wavefunction_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Wavefunction_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Wavefunction_body subtype" nam s)
      "it does not exists"
      "Check file Wavefunction_body_symbol_v.ml"
    in
    failwith "Not_a_wavefunction_body_symbol:Wavefunction_body_symbol_v.ml:make"
;;


(** Wavefunction_body_symbol_v at 11:11:33 on 27 Mar 2015. created by version v2.3 of generator *)



