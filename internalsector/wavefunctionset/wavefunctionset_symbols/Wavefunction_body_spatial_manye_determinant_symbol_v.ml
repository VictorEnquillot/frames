(** {3 Wavefunction_body_spatial_manye_determinant_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Wavefunction_body_spatial_manye_determinant_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Wavefunction_body_spatial_manye_determinant_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb ->
    Wavefunction_body_spatial_manye_determinant_bare_symbol_v.name sym_wdb
  | Wavefunction_body_spatial_manye_determinant_symbol_t.Wavefunction_body_spatial_manye_determinant_scaled -> "wavefunction_body_spatial_manye_determinant_scaled"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Wavefunction_body_spatial_manye_determinant_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb ->
  Wavefunction_body_spatial_manye_determinant_bare_symbol_v.string_off sym_wdb
  | Wavefunction_body_spatial_manye_determinant_symbol_t.Wavefunction_body_spatial_manye_determinant_scaled -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_wmd =
  Format.sprintf "Wavefunction_body_spatial_manye_determinant_symbol_t.%s" (String.capitalize (name sym_wmd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_wmd =
  Format.sprintf "%s \"%s\"" (longname sym_wmd) (string_off sym_wmd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol = function
  | Wavefunction_body_spatial_manye_determinant_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb -> sym_wdb
  | sym_wmd -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol"
      "Wavefunction_body_spatial_manye_determinant_bare_symbol"
      (name sym_wmd) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_scaled = function
  | Wavefunction_body_spatial_manye_determinant_symbol_t.Wavefunction_body_spatial_manye_determinant_scaled -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol = function
  | Wavefunction_body_spatial_manye_determinant_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_bare_cc sym_wmd =
  if not (is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd)
  then false
  else
    begin
      let sym_wdb = wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd in
      Wavefunction_body_spatial_manye_determinant_bare_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_cc sym_wdb
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_ci sym_wmd =
  if not (is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd)
  then false
  else
    begin
      let sym_wdb = wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd in
      Wavefunction_body_spatial_manye_determinant_bare_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_ci sym_wdb
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_hf sym_wmd =
  if not (is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd)
  then false
  else
    begin
      let sym_wdb = wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd in
      Wavefunction_body_spatial_manye_determinant_bare_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_hf sym_wdb
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_mcscf sym_wmd =
  if not (is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd)
  then false
  else
    begin
      let sym_wdb = wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd in
      Wavefunction_body_spatial_manye_determinant_bare_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_mcscf sym_wdb
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_rhf sym_wmd =
  if not (is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd)
  then false
  else
    begin
      let sym_wdb = wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd in
      Wavefunction_body_spatial_manye_determinant_bare_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_rhf sym_wdb
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_uhf sym_wmd =
  if not (is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd)
  then false
  else
    begin
      let sym_wdb = wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_spatial_manye_determinant_symbol sym_wmd in
      Wavefunction_body_spatial_manye_determinant_bare_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_uhf sym_wdb
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb = 
  Wavefunction_body_spatial_manye_determinant_symbol_t.Wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_scaled = Wavefunction_body_spatial_manye_determinant_symbol_t.Wavefunction_body_spatial_manye_determinant_scaled;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_bare_cc s = wavefunction_body_spatial_manye_determinant_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol (Wavefunction_body_spatial_manye_determinant_bare_symbol_v.wavefunction_body_spatial_manye_determinant_bare_cc s);;

let wavefunction_body_spatial_manye_determinant_bare_ci s = wavefunction_body_spatial_manye_determinant_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol (Wavefunction_body_spatial_manye_determinant_bare_symbol_v.wavefunction_body_spatial_manye_determinant_bare_ci s);;

let wavefunction_body_spatial_manye_determinant_bare_hf s = wavefunction_body_spatial_manye_determinant_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol (Wavefunction_body_spatial_manye_determinant_bare_symbol_v.wavefunction_body_spatial_manye_determinant_bare_hf s);;

let wavefunction_body_spatial_manye_determinant_bare_mcscf s = wavefunction_body_spatial_manye_determinant_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol (Wavefunction_body_spatial_manye_determinant_bare_symbol_v.wavefunction_body_spatial_manye_determinant_bare_mcscf s);;

let wavefunction_body_spatial_manye_determinant_bare_rhf s = wavefunction_body_spatial_manye_determinant_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol (Wavefunction_body_spatial_manye_determinant_bare_symbol_v.wavefunction_body_spatial_manye_determinant_bare_rhf s);;

let wavefunction_body_spatial_manye_determinant_bare_uhf s = wavefunction_body_spatial_manye_determinant_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol (Wavefunction_body_spatial_manye_determinant_bare_symbol_v.wavefunction_body_spatial_manye_determinant_bare_uhf s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "wavefunction_body_spatial_manye_determinant_scaled" -> wavefunction_body_spatial_manye_determinant_scaled
  | _ ->
  failwith "Not_a_topson_bare:Wavefunction_body_spatial_manye_determinant_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Wavefunction_body_spatial_manye_determinant_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try wavefunction_body_spatial_manye_determinant_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol
      (Wavefunction_body_spatial_manye_determinant_bare_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_body_spatial_manye_determinant_bare_symbol:Wavefunction_body_spatial_manye_determinant_bare_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Wavefunction_body_spatial_manye_determinant_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Wavefunction_body_spatial_manye_determinant_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Wavefunction_body_spatial_manye_determinant_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Wavefunction_body_spatial_manye_determinant_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Wavefunction_body_spatial_manye_determinant subtype" nam s)
      "it does not exists"
      "Check file Wavefunction_body_spatial_manye_determinant_symbol_v.ml"
    in
    failwith "Not_a_wavefunction_body_spatial_manye_determinant_symbol:Wavefunction_body_spatial_manye_determinant_symbol_v.ml:make"
;;


(** Wavefunction_body_spatial_manye_determinant_symbol_v at 11:11:33 on 27 Mar 2015. created by version v2.3 of generator *)



