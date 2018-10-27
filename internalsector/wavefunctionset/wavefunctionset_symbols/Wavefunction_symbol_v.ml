(** {3 Wavefunction_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Wavefunction_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Wavefunction_symbol_t.Wavefunction_body_symbol sym_wbo ->
    Wavefunction_body_symbol_v.name sym_wbo
  | Wavefunction_symbol_t.Wavefunction_context_symbol sym_wco ->
    Wavefunction_context_symbol_v.name sym_wco
  | Wavefunction_symbol_t.Wavefunction_closure_symbol sym_wcl ->
    Wavefunction_closure_symbol_v.name sym_wcl
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Wavefunction_symbol_t.Wavefunction_body_symbol sym_wbo ->
  Wavefunction_body_symbol_v.string_off sym_wbo
  | Wavefunction_symbol_t.Wavefunction_context_symbol sym_wco ->
  Wavefunction_context_symbol_v.string_off sym_wco
  | Wavefunction_symbol_t.Wavefunction_closure_symbol sym_wcl ->
  Wavefunction_closure_symbol_v.string_off sym_wcl
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_wav =
  Format.sprintf "Wavefunction_symbol_t.%s" (String.capitalize (name sym_wav))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_wav =
  Format.sprintf "%s \"%s\"" (longname sym_wav) (string_off sym_wav)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let wavefunction_body_symbol_off_wavefunction_symbol = function
  | Wavefunction_symbol_t.Wavefunction_body_symbol sym_wbo -> sym_wbo
  | sym_wav -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_body_symbol_off_wavefunction_symbol"
      "Wavefunction_body_symbol"
      (name sym_wav) "check"
;;

let wavefunction_context_symbol_off_wavefunction_symbol = function
  | Wavefunction_symbol_t.Wavefunction_context_symbol sym_wco -> sym_wco
  | sym_wav -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_context_symbol_off_wavefunction_symbol"
      "Wavefunction_context_symbol"
      (name sym_wav) "check"
;;

let wavefunction_closure_symbol_off_wavefunction_symbol = function
  | Wavefunction_symbol_t.Wavefunction_closure_symbol sym_wcl -> sym_wcl
  | sym_wav -> Error_messages_v.print_fatal_error
      nam_cod "wavefunction_closure_symbol_off_wavefunction_symbol"
      "Wavefunction_closure_symbol"
      (name sym_wav) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let wavefunction_body_spatial_manye_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo
;;

let wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_symbol sym_wbo
;;

let wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_symbol sym_wbo
;;

let wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_symbol sym_wbo
;;

let wavefunction_body_total_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_body_symbol_v.wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo
;;

let wavefunction_body_total_manye_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_body_symbol_v.wavefunction_body_total_manye_symbol_off_wavefunction_body_symbol sym_wbo
;;

let wavefunction_body_total_orbital_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_body_symbol_v.wavefunction_body_total_orbital_symbol_off_wavefunction_body_symbol sym_wbo
;;

let wavefunction_context_createdby_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wco = wavefunction_context_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_context_symbol_v.wavefunction_context_createdby_symbol_off_wavefunction_context_symbol sym_wco
;;

let wavefunction_context_domain_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wco = wavefunction_context_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_context_symbol_v.wavefunction_context_domain_symbol_off_wavefunction_context_symbol sym_wco
;;

let wavefunction_closure_coefficient_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_closure_symbol_v.wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_closure_jastrow_factor_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_closure_symbol_v.wavefunction_closure_jastrow_factor_symbol_off_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_closure_spatial_orbital_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_closure_symbol_v.wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_closure_symbol_v.wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_closure_symbol_v.wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_closure_symbol_v.wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_closure_spin_symbol_off_wavefunction_symbol sym_wav = 
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
    Wavefunction_closure_symbol_v.wavefunction_closure_spin_symbol_off_wavefunction_closure_symbol sym_wcl
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_wavefunction_body_symbol_off_wavefunction_symbol = function
  | Wavefunction_symbol_t.Wavefunction_body_symbol _ -> true
  | _ -> false
;;

let is_wavefunction_context_symbol_off_wavefunction_symbol = function
  | Wavefunction_symbol_t.Wavefunction_context_symbol _ -> true
  | _ -> false
;;

let is_wavefunction_closure_symbol_off_wavefunction_symbol = function
  | Wavefunction_symbol_t.Wavefunction_closure_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_wavefunction_body_spatial_manye_analytic sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_analytic sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_determinant_scaled sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_determinant_scaled sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_numerical sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_numerical sym_wbo
    end
;;

let is_wavefunction_body_total_manye_analytic sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_total_manye_analytic sym_wbo
    end
;;

let is_wavefunction_body_total_manye_determinant sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_total_manye_determinant sym_wbo
    end
;;

let is_wavefunction_body_total_manye_numerical sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_total_manye_numerical sym_wbo
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_wavefunction_body_spatial_manye_determinant_bare_cc sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_cc sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_ci sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_ci sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_hf sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_hf sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_mcscf sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_mcscf sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_rhf sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_rhf sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_uhf sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_uhf sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_fragment_bare sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_fragment_bare sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_fragment_csf sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_fragment_csf sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_fragment_jastrowed sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_fragment_jastrowed sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_fragment_jastrowed_scaled sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_fragment_jastrowed_scaled sym_wbo
    end
;;

let is_wavefunction_body_total_orbital_analytic sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_total_orbital_analytic sym_wbo
    end
;;

let is_wavefunction_body_total_orbital_numerical sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_body_symbol_v.is_wavefunction_body_total_orbital_numerical sym_wbo
    end
;;

let is_wavefunction_context_database sym_wav =
  if not (is_wavefunction_context_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wco = wavefunction_context_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_context_symbol_v.is_wavefunction_context_database sym_wco
    end
;;

let is_wavefunction_context_input_file sym_wav =
  if not (is_wavefunction_context_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wco = wavefunction_context_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_context_symbol_v.is_wavefunction_context_input_file sym_wco
    end
;;

let is_wavefunction_context_domain_constructor sym_wav =
  if not (is_wavefunction_context_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wco = wavefunction_context_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_context_symbol_v.is_wavefunction_context_domain_constructor sym_wco
    end
;;

let is_wavefunction_closure_coefficient_determinant sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_closure_symbol_v.is_wavefunction_closure_coefficient_determinant sym_wcl
    end
;;

let is_wavefunction_closure_coefficient_jastrow sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_closure_symbol_v.is_wavefunction_closure_coefficient_jastrow sym_wcl
    end
;;

let is_wavefunction_closure_coefficient_fragment sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_closure_symbol_v.is_wavefunction_closure_coefficient_fragment sym_wcl
    end
;;

let is_wavefunction_closure_jastrow_factor_constructor sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_closure_symbol_v.is_wavefunction_closure_jastrow_factor_constructor sym_wcl
    end
;;

let is_wavefunction_closure_spatial_orbital_mo_constructor sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_closure_symbol_v.is_wavefunction_closure_spatial_orbital_mo_constructor sym_wcl
    end
;;

let is_wavefunction_closure_spatial_orbital_so_constructor sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_closure_symbol_v.is_wavefunction_closure_spatial_orbital_so_constructor sym_wcl
    end
;;

let is_wavefunction_closure_spatial_orbital_numerical_constructor sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_closure_symbol_v.is_wavefunction_closure_spatial_orbital_numerical_constructor sym_wcl
    end
;;

let is_wavefunction_closure_spin_up sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_closure_symbol_v.is_wavefunction_closure_spin_up sym_wcl
    end
;;

let is_wavefunction_closure_spin_down sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
      let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
      Wavefunction_closure_symbol_v.is_wavefunction_closure_spin_down sym_wcl
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_wavefunction_body_spatial_manye_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_symbol_off_wavefunction_body_symbol sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_determinant_symbol_off_wavefunction_body_symbol sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_determinant_bare_symbol_off_wavefunction_body_symbol sym_wbo
    end
;;

let is_wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_body_symbol_v.is_wavefunction_body_spatial_manye_fragment_symbol_off_wavefunction_body_symbol sym_wbo
    end
;;

let is_wavefunction_body_total_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_body_symbol_v.is_wavefunction_body_total_symbol_off_wavefunction_body_symbol sym_wbo
    end
;;

let is_wavefunction_body_total_manye_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_body_symbol_v.is_wavefunction_body_total_manye_symbol_off_wavefunction_body_symbol sym_wbo
    end
;;

let is_wavefunction_body_total_orbital_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_body_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wbo = wavefunction_body_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_body_symbol_v.is_wavefunction_body_total_orbital_symbol_off_wavefunction_body_symbol sym_wbo
    end
;;

let is_wavefunction_context_createdby_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_context_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wco = wavefunction_context_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_context_symbol_v.is_wavefunction_context_createdby_symbol_off_wavefunction_context_symbol sym_wco
    end
;;

let is_wavefunction_context_domain_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_context_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wco = wavefunction_context_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_context_symbol_v.is_wavefunction_context_domain_symbol_off_wavefunction_context_symbol sym_wco
    end
;;

let is_wavefunction_closure_coefficient_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_closure_symbol_v.is_wavefunction_closure_coefficient_symbol_off_wavefunction_closure_symbol sym_wcl
    end
;;

let is_wavefunction_closure_jastrow_factor_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_closure_symbol_v.is_wavefunction_closure_jastrow_factor_symbol_off_wavefunction_closure_symbol sym_wcl
    end
;;

let is_wavefunction_closure_spatial_orbital_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_closure_symbol_v.is_wavefunction_closure_spatial_orbital_symbol_off_wavefunction_closure_symbol sym_wcl
    end
;;

let is_wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_closure_symbol_v.is_wavefunction_closure_spatial_orbital_mo_symbol_off_wavefunction_closure_symbol sym_wcl
    end
;;

let is_wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_closure_symbol_v.is_wavefunction_closure_spatial_orbital_so_symbol_off_wavefunction_closure_symbol sym_wcl
    end
;;

let is_wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_closure_symbol_v.is_wavefunction_closure_spatial_orbital_numerical_symbol_off_wavefunction_closure_symbol sym_wcl
    end
;;

let is_wavefunction_closure_spin_symbol_off_wavefunction_symbol sym_wav =
  if not (is_wavefunction_closure_symbol_off_wavefunction_symbol sym_wav)
  then false
  else
    begin
  let sym_wcl = wavefunction_closure_symbol_off_wavefunction_symbol sym_wav in
  Wavefunction_closure_symbol_v.is_wavefunction_closure_spin_symbol_off_wavefunction_closure_symbol sym_wcl
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let wavefunction_symbol_of_wavefunction_body_symbol sym_wbo = 
  Wavefunction_symbol_t.Wavefunction_body_symbol sym_wbo
;;

let wavefunction_symbol_of_wavefunction_context_symbol sym_wco = 
  Wavefunction_symbol_t.Wavefunction_context_symbol sym_wco
;;

let wavefunction_symbol_of_wavefunction_closure_symbol sym_wcl = 
  Wavefunction_symbol_t.Wavefunction_closure_symbol sym_wcl
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let wavefunction_symbol_of_wavefunction_body_spatial_manye_symbol sym_wsm = 
  let sym_wbo = Wavefunction_body_symbol_v.wavefunction_body_symbol_of_wavefunction_body_spatial_manye_symbol sym_wsm in
    wavefunction_symbol_of_wavefunction_body_symbol sym_wbo
;;

let wavefunction_symbol_of_wavefunction_body_spatial_manye_determinant_symbol sym_wmd = 
  let sym_wbo = Wavefunction_body_symbol_v.wavefunction_body_symbol_of_wavefunction_body_spatial_manye_determinant_symbol sym_wmd in
    wavefunction_symbol_of_wavefunction_body_symbol sym_wbo
;;

let wavefunction_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb = 
  let sym_wbo = Wavefunction_body_symbol_v.wavefunction_body_symbol_of_wavefunction_body_spatial_manye_determinant_bare_symbol sym_wdb in
    wavefunction_symbol_of_wavefunction_body_symbol sym_wbo
;;

let wavefunction_symbol_of_wavefunction_body_spatial_manye_fragment_symbol sym_wmf = 
  let sym_wbo = Wavefunction_body_symbol_v.wavefunction_body_symbol_of_wavefunction_body_spatial_manye_fragment_symbol sym_wmf in
    wavefunction_symbol_of_wavefunction_body_symbol sym_wbo
;;

let wavefunction_symbol_of_wavefunction_body_total_symbol sym_wbt = 
  let sym_wbo = Wavefunction_body_symbol_v.wavefunction_body_symbol_of_wavefunction_body_total_symbol sym_wbt in
    wavefunction_symbol_of_wavefunction_body_symbol sym_wbo
;;

let wavefunction_symbol_of_wavefunction_body_total_manye_symbol sym_wtm = 
  let sym_wbo = Wavefunction_body_symbol_v.wavefunction_body_symbol_of_wavefunction_body_total_manye_symbol sym_wtm in
    wavefunction_symbol_of_wavefunction_body_symbol sym_wbo
;;

let wavefunction_symbol_of_wavefunction_body_total_orbital_symbol sym_wto = 
  let sym_wbo = Wavefunction_body_symbol_v.wavefunction_body_symbol_of_wavefunction_body_total_orbital_symbol sym_wto in
    wavefunction_symbol_of_wavefunction_body_symbol sym_wbo
;;

let wavefunction_symbol_of_wavefunction_context_createdby_symbol sym_wcc = 
  let sym_wco = Wavefunction_context_symbol_v.wavefunction_context_symbol_of_wavefunction_context_createdby_symbol sym_wcc in
    wavefunction_symbol_of_wavefunction_context_symbol sym_wco
;;

let wavefunction_symbol_of_wavefunction_context_domain_symbol sym_wcd = 
  let sym_wco = Wavefunction_context_symbol_v.wavefunction_context_symbol_of_wavefunction_context_domain_symbol sym_wcd in
    wavefunction_symbol_of_wavefunction_context_symbol sym_wco
;;

let wavefunction_symbol_of_wavefunction_closure_coefficient_symbol sym_wcc = 
  let sym_wcl = Wavefunction_closure_symbol_v.wavefunction_closure_symbol_of_wavefunction_closure_coefficient_symbol sym_wcc in
    wavefunction_symbol_of_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_symbol_of_wavefunction_closure_jastrow_factor_symbol sym_wjf = 
  let sym_wcl = Wavefunction_closure_symbol_v.wavefunction_closure_symbol_of_wavefunction_closure_jastrow_factor_symbol sym_wjf in
    wavefunction_symbol_of_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_symbol_of_wavefunction_closure_spatial_orbital_symbol sym_wso = 
  let sym_wcl = Wavefunction_closure_symbol_v.wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_symbol sym_wso in
    wavefunction_symbol_of_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_symbol_of_wavefunction_closure_spatial_orbital_mo_symbol sym_wom = 
  let sym_wcl = Wavefunction_closure_symbol_v.wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_mo_symbol sym_wom in
    wavefunction_symbol_of_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_symbol_of_wavefunction_closure_spatial_orbital_so_symbol sym_wos = 
  let sym_wcl = Wavefunction_closure_symbol_v.wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_so_symbol sym_wos in
    wavefunction_symbol_of_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_symbol_of_wavefunction_closure_spatial_orbital_numerical_symbol sym_won = 
  let sym_wcl = Wavefunction_closure_symbol_v.wavefunction_closure_symbol_of_wavefunction_closure_spatial_orbital_numerical_symbol sym_won in
    wavefunction_symbol_of_wavefunction_closure_symbol sym_wcl
;;

let wavefunction_symbol_of_wavefunction_closure_spin_symbol sym_wcs = 
  let sym_wcl = Wavefunction_closure_symbol_v.wavefunction_closure_symbol_of_wavefunction_closure_spin_symbol sym_wcs in
    wavefunction_symbol_of_wavefunction_closure_symbol sym_wcl
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let wavefunction_body_spatial_manye_analytic = wavefunction_symbol_of_wavefunction_body_symbol Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_analytic;;

let wavefunction_body_spatial_manye_determinant_scaled = wavefunction_symbol_of_wavefunction_body_symbol Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_determinant_scaled;;

let wavefunction_body_spatial_manye_numerical = wavefunction_symbol_of_wavefunction_body_symbol Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_numerical;;

let wavefunction_body_total_manye_analytic = wavefunction_symbol_of_wavefunction_body_symbol Wavefunction_body_symbol_v.wavefunction_body_total_manye_analytic;;

let wavefunction_body_total_manye_determinant = wavefunction_symbol_of_wavefunction_body_symbol Wavefunction_body_symbol_v.wavefunction_body_total_manye_determinant;;

let wavefunction_body_total_manye_numerical = wavefunction_symbol_of_wavefunction_body_symbol Wavefunction_body_symbol_v.wavefunction_body_total_manye_numerical;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let wavefunction_body_spatial_manye_determinant_bare_cc s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_determinant_bare_cc s);;

let wavefunction_body_spatial_manye_determinant_bare_ci s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_determinant_bare_ci s);;

let wavefunction_body_spatial_manye_determinant_bare_hf s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_determinant_bare_hf s);;

let wavefunction_body_spatial_manye_determinant_bare_mcscf s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_determinant_bare_mcscf s);;

let wavefunction_body_spatial_manye_determinant_bare_rhf s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_determinant_bare_rhf s);;

let wavefunction_body_spatial_manye_determinant_bare_uhf s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_determinant_bare_uhf s);;

let wavefunction_body_spatial_manye_fragment_bare s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_fragment_bare s);;

let wavefunction_body_spatial_manye_fragment_csf s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_fragment_csf s);;

let wavefunction_body_spatial_manye_fragment_jastrowed s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_fragment_jastrowed s);;

let wavefunction_body_spatial_manye_fragment_jastrowed_scaled s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_spatial_manye_fragment_jastrowed_scaled s);;

let wavefunction_body_total_orbital_analytic s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_total_orbital_analytic s);;

let wavefunction_body_total_orbital_numerical s = wavefunction_symbol_of_wavefunction_body_symbol (Wavefunction_body_symbol_v.wavefunction_body_total_orbital_numerical s);;

let wavefunction_context_database s = wavefunction_symbol_of_wavefunction_context_symbol (Wavefunction_context_symbol_v.wavefunction_context_database s);;

let wavefunction_context_input_file s = wavefunction_symbol_of_wavefunction_context_symbol (Wavefunction_context_symbol_v.wavefunction_context_input_file s);;

let wavefunction_context_domain_constructor s = wavefunction_symbol_of_wavefunction_context_symbol (Wavefunction_context_symbol_v.wavefunction_context_domain_constructor s);;

let wavefunction_closure_coefficient_determinant s = wavefunction_symbol_of_wavefunction_closure_symbol (Wavefunction_closure_symbol_v.wavefunction_closure_coefficient_determinant s);;

let wavefunction_closure_coefficient_jastrow s = wavefunction_symbol_of_wavefunction_closure_symbol (Wavefunction_closure_symbol_v.wavefunction_closure_coefficient_jastrow s);;

let wavefunction_closure_coefficient_fragment s = wavefunction_symbol_of_wavefunction_closure_symbol (Wavefunction_closure_symbol_v.wavefunction_closure_coefficient_fragment s);;

let wavefunction_closure_jastrow_factor_constructor s = wavefunction_symbol_of_wavefunction_closure_symbol (Wavefunction_closure_symbol_v.wavefunction_closure_jastrow_factor_constructor s);;

let wavefunction_closure_spatial_orbital_mo_constructor s = wavefunction_symbol_of_wavefunction_closure_symbol (Wavefunction_closure_symbol_v.wavefunction_closure_spatial_orbital_mo_constructor s);;

let wavefunction_closure_spatial_orbital_so_constructor s = wavefunction_symbol_of_wavefunction_closure_symbol (Wavefunction_closure_symbol_v.wavefunction_closure_spatial_orbital_so_constructor s);;

let wavefunction_closure_spatial_orbital_numerical_constructor s = wavefunction_symbol_of_wavefunction_closure_symbol (Wavefunction_closure_symbol_v.wavefunction_closure_spatial_orbital_numerical_constructor s);;

let wavefunction_closure_spin_up s = wavefunction_symbol_of_wavefunction_closure_symbol (Wavefunction_closure_symbol_v.wavefunction_closure_spin_up s);;

let wavefunction_closure_spin_down s = wavefunction_symbol_of_wavefunction_closure_symbol (Wavefunction_closure_symbol_v.wavefunction_closure_spin_down s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Wavefunction_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Wavefunction_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try wavefunction_symbol_of_wavefunction_body_symbol
      (Wavefunction_body_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_body_symbol:Wavefunction_body_symbol_v.ml:make" ->
  try wavefunction_symbol_of_wavefunction_context_symbol
      (Wavefunction_context_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_context_symbol:Wavefunction_context_symbol_v.ml:make" ->
  try wavefunction_symbol_of_wavefunction_closure_symbol
      (Wavefunction_closure_symbol_v.make nam s)
  with Failure "Not_a_wavefunction_closure_symbol:Wavefunction_closure_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Wavefunction_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Wavefunction_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Wavefunction_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Wavefunction_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Wavefunction subtype" nam s)
      "it does not exists"
      "Check file Wavefunction_symbol_v.ml"
    in
    failwith "Not_a_wavefunction_symbol:Wavefunction_symbol_v.ml:make"
;;


(** Wavefunction_symbol_v at 11:11:32 on 27 Mar 2015. created by version v2.3 of generator *)



