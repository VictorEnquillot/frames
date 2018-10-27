(** {3 Wavefunction_body_spatial_manye_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Wavefunction_body_spatial_manye_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_determinant_symbol sym_wmd ->
    Wavefunction_body_spatial_manye_determinant_symbol_v.name sym_wmd
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_fragment_symbol sym_wmf ->
    Wavefunction_body_spatial_manye_fragment_symbol_v.name sym_wmf
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_analytic -> "wavefunction_body_spatial_manye_analytic"
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_numerical -> "wavefunction_body_spatial_manye_numerical"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_determinant_symbol sym_wmd ->
  Wavefunction_body_spatial_manye_determinant_symbol_v.string_off sym_wmd
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_fragment_symbol sym_wmf ->
  Wavefunction_body_spatial_manye_fragment_symbol_v.string_off sym_wmf
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_analytic -> ""
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_numerical -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_wsm =
  Format.sprintf "Wavefunction_body_spatial_manye_symbol_t.%s" (String.capitalize (name sym_wsm))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_wsm =
  Format.sprintf "%s \"%s\"" (longname sym_wsm) (string_off sym_wsm)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol = function
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_determinant_symbol sym_wmd -> sym_wmd
  | sym_wsm -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol"
      "Wavefunction_body_spatial_manye_determinant_symbol"
      (name sym_wsm) "check"
;;

let wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol = function
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_fragment_symbol sym_wmf -> sym_wmf
  | sym_wsm -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol"
      "Wavefunction_body_spatial_manye_fragment_symbol"
      (name sym_wsm) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm = 
  let sym_wmd = wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
    Wavefunction_body_spatial_manye_determinant_symbol_v.wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd
;;


(** {6 Querying_topson_bare_for_symbol} *)

let is_wavefunction_body_spatial_manye_analytic = function
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_analytic -> true
  | _ -> false
;;

let is_wavefunction_body_spatial_manye_numerical = function
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_numerical -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol = function
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_determinant_symbol _ -> true
  | _ -> false
;;

let is_wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol = function
  | Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_fragment_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_scaled sym_wsm =
  if not (is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmd = wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_determinant_symbol_v.is_wavefunction_body_spatial_manye_determinant_scaled sym_wmd
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_bare_cc sym_wsm =
  if not (is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmd = wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_determinant_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_cc sym_wmd
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_ci sym_wsm =
  if not (is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmd = wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_determinant_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_ci sym_wmd
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_hf sym_wsm =
  if not (is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmd = wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_determinant_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_hf sym_wmd
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_mcscf sym_wsm =
  if not (is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmd = wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_determinant_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_mcscf sym_wmd
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_rhf sym_wsm =
  if not (is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmd = wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_determinant_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_rhf sym_wmd
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_uhf sym_wsm =
  if not (is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmd = wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_determinant_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_uhf sym_wmd
    end
;;

let is_wavefunction_body_spatial_manye_fragment_bare sym_wsm =
  if not (is_wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmf = wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_fragment_symbol_v.is_wavefunction_body_spatial_manye_fragment_bare sym_wmf
    end
;;

let is_wavefunction_body_spatial_manye_fragment_csf sym_wsm =
  if not (is_wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmf = wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_fragment_symbol_v.is_wavefunction_body_spatial_manye_fragment_csf sym_wmf
    end
;;

let is_wavefunction_body_spatial_manye_fragment_jastrowed sym_wsm =
  if not (is_wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmf = wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_fragment_symbol_v.is_wavefunction_body_spatial_manye_fragment_jastrowed sym_wmf
    end
;;

let is_wavefunction_body_spatial_manye_fragment_jastrowed_scaled sym_wsm =
  if not (is_wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
      let sym_wmf = wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
      Wavefunction_body_spatial_manye_fragment_symbol_v.is_wavefunction_body_spatial_manye_fragment_jastrowed_scaled sym_wmf
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm =
  if not (is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm)
  then false
  else
    begin
  let sym_wmd = wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_spatial_manye_symbol sym_wsm in
  Wavefunction_body_spatial_manye_determinant_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol sym_wmd = 
  Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_determinant_symbol sym_wmd
;;

let wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_fragment_symbol sym_wmf = 
  Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_fragment_symbol sym_wmf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb = 
  let sym_wmd = Wavefunction_body_spatial_manye_determinant_symbol_v.wavefunction_body_spatial_manye_determinant_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb in
    wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol sym_wmd
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)

let wavefunction_body_spatial_manye_analytic = Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_analytic;;

let wavefunction_body_spatial_manye_numerical = Wavefunction_body_spatial_manye_symbol_t.Wavefunction_body_spatial_manye_numerical;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_scaled = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol Wavefunction_body_spatial_manye_determinant_symbol_v.wavefunction_body_spatial_manye_determinant_scaled;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_bare_cc s = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol (Wavefunction_body_spatial_manye_determinant_symbol_v.wavefunction_body_spatial_manye_determinant_bare_cc s);;

let wavefunction_body_spatial_manye_determinant_bare_ci s = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol (Wavefunction_body_spatial_manye_determinant_symbol_v.wavefunction_body_spatial_manye_determinant_bare_ci s);;

let wavefunction_body_spatial_manye_determinant_bare_hf s = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol (Wavefunction_body_spatial_manye_determinant_symbol_v.wavefunction_body_spatial_manye_determinant_bare_hf s);;

let wavefunction_body_spatial_manye_determinant_bare_mcscf s = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol (Wavefunction_body_spatial_manye_determinant_symbol_v.wavefunction_body_spatial_manye_determinant_bare_mcscf s);;

let wavefunction_body_spatial_manye_determinant_bare_rhf s = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol (Wavefunction_body_spatial_manye_determinant_symbol_v.wavefunction_body_spatial_manye_determinant_bare_rhf s);;

let wavefunction_body_spatial_manye_determinant_bare_uhf s = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol (Wavefunction_body_spatial_manye_determinant_symbol_v.wavefunction_body_spatial_manye_determinant_bare_uhf s);;

let wavefunction_body_spatial_manye_fragment_bare s = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_fragment_symbol (Wavefunction_body_spatial_manye_fragment_symbol_v.wavefunction_body_spatial_manye_fragment_bare s);;

let wavefunction_body_spatial_manye_fragment_csf s = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_fragment_symbol (Wavefunction_body_spatial_manye_fragment_symbol_v.wavefunction_body_spatial_manye_fragment_csf s);;

let wavefunction_body_spatial_manye_fragment_jastrowed s = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_fragment_symbol (Wavefunction_body_spatial_manye_fragment_symbol_v.wavefunction_body_spatial_manye_fragment_jastrowed s);;

let wavefunction_body_spatial_manye_fragment_jastrowed_scaled s = wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_fragment_symbol (Wavefunction_body_spatial_manye_fragment_symbol_v.wavefunction_body_spatial_manye_fragment_jastrowed_scaled s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "wavefunction_body_spatial_manye_analytic" -> wavefunction_body_spatial_manye_analytic
  | "wavefunction_body_spatial_manye_numerical" -> wavefunction_body_spatial_manye_numerical
  | _ ->
  failwith "Not_a_topson_bare:Wavefunction_body_spatial_manye_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Wavefunction_body_spatial_manye_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_determinant_symbol
      (Wavefunction_body_spatial_manye_determinant_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_body_spatial_manye_determinant_symbol:Wavefunction_body_spatial_manye_determinant_symbol_v.ml:make" ->
  try wavefunction_body_spatial_manye_symbol_of_wavefunction_body_spatial_manye_fragment_symbol
      (Wavefunction_body_spatial_manye_fragment_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_body_spatial_manye_fragment_symbol:Wavefunction_body_spatial_manye_fragment_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Wavefunction_body_spatial_manye_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Wavefunction_body_spatial_manye_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Wavefunction_body_spatial_manye_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Wavefunction_body_spatial_manye_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Wavefunction_body_spatial_manye subtype" nam s)
      "it does not exists"
      "Check file Wavefunction_body_spatial_manye_symbol_v.ml"
    in
    failwith "Not_a_wavefunction_body_spatial_manye_symbol:Wavefunction_body_spatial_manye_symbol_v.ml:make"
;;


(** Wavefunction_body_spatial_manye_symbol_v at 11:11:33 on 27 Mar 2015. created by version v2.3 of generator *)



