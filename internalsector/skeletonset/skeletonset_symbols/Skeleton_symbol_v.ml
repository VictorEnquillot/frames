(** {3 Skeleton_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Skeleton_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Skeleton_symbol_t.Skeleton_context_symbol sym_sco ->
    Skeleton_context_symbol_v.name sym_sco
  | Skeleton_symbol_t.Skeleton_set_symbol sym_sse ->
    Skeleton_set_symbol_v.name sym_sse
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Skeleton_symbol_t.Skeleton_context_symbol sym_sco ->
  Skeleton_context_symbol_v.string_off sym_sco
  | Skeleton_symbol_t.Skeleton_set_symbol sym_sse ->
  Skeleton_set_symbol_v.string_off sym_sse
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ske =
  Format.sprintf "Skeleton_symbol_t.%s" (String.capitalize (name sym_ske))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ske =
  Format.sprintf "%s \"%s\"" (longname sym_ske) (string_off sym_ske)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let skeleton_context_symbol_off_skeleton_symbol = function
  | Skeleton_symbol_t.Skeleton_context_symbol sym_sco -> sym_sco
  | sym_ske -> Error_messages_v.print_fatal_error
      nam_cod "skeleton_context_symbol_off_skeleton_symbol"
      "Skeleton_context_symbol"
      (name sym_ske) "check"
;;

let skeleton_set_symbol_off_skeleton_symbol = function
  | Skeleton_symbol_t.Skeleton_set_symbol sym_sse -> sym_sse
  | sym_ske -> Error_messages_v.print_fatal_error
      nam_cod "skeleton_set_symbol_off_skeleton_symbol"
      "Skeleton_set_symbol"
      (name sym_ske) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let skeleton_context_database_symbol_off_skeleton_symbol sym_ske = 
  let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
    Skeleton_context_symbol_v.skeleton_context_database_symbol_off_skeleton_context_symbol sym_sco
;;

let skeleton_context_databox_symbol_off_skeleton_symbol sym_ske = 
  let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
    Skeleton_context_symbol_v.skeleton_context_databox_symbol_off_skeleton_context_symbol sym_sco
;;

let skeleton_context_domain_symbol_off_skeleton_symbol sym_ske = 
  let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
    Skeleton_context_symbol_v.skeleton_context_domain_symbol_off_skeleton_context_symbol sym_sco
;;

let skeleton_context_sector_symbol_off_skeleton_symbol sym_ske = 
  let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
    Skeleton_context_symbol_v.skeleton_context_sector_symbol_off_skeleton_context_symbol sym_sco
;;

let skeleton_set_body_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_body_centered_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_centered_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_body_centered_aopefset_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_body_centered_ecppefset_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_body_periodic_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_periodic_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_body_periodic_blochwaveset_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_periodic_blochwaveset_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_body_periodic_waveletset_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_body_periodic_waveletset_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_fence_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_fence_centered_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_fence_centered_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_fence_centered_aopef_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_fence_centered_aopef_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_fence_centered_ecppef_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_fence_centered_ecppef_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_fence_periodic_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_fence_periodic_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_fence_periodic_blochwave_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_fence_periodic_blochwave_symbol_off_skeleton_set_symbol sym_sse
;;

let skeleton_set_fence_periodic_wavelet_symbol_off_skeleton_symbol sym_ske = 
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
    Skeleton_set_symbol_v.skeleton_set_fence_periodic_wavelet_symbol_off_skeleton_set_symbol sym_sse
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_skeleton_context_symbol_off_skeleton_symbol = function
  | Skeleton_symbol_t.Skeleton_context_symbol _ -> true
  | _ -> false
;;

let is_skeleton_set_symbol_off_skeleton_symbol = function
  | Skeleton_symbol_t.Skeleton_set_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_skeleton_context_database_constructor sym_ske =
  if not (is_skeleton_context_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
      Skeleton_context_symbol_v.is_skeleton_context_database_constructor sym_sco
    end
;;

let is_skeleton_context_databox_constructor sym_ske =
  if not (is_skeleton_context_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
      Skeleton_context_symbol_v.is_skeleton_context_databox_constructor sym_sco
    end
;;

let is_skeleton_context_domain_constructor sym_ske =
  if not (is_skeleton_context_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
      Skeleton_context_symbol_v.is_skeleton_context_domain_constructor sym_sco
    end
;;

let is_skeleton_context_sector_constructor sym_ske =
  if not (is_skeleton_context_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
      Skeleton_context_symbol_v.is_skeleton_context_sector_constructor sym_sco
    end
;;

let is_skeleton_set_body_centered_aopefset_onecenter_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_body_centered_aopefset_onecenter_constructor sym_sse
    end
;;

let is_skeleton_set_body_centered_aopefset_anycenter_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_body_centered_aopefset_anycenter_constructor sym_sse
    end
;;

let is_skeleton_set_body_centered_aopefset_shellsymmetry_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_body_centered_aopefset_shellsymmetry_constructor sym_sse
    end
;;

let is_skeleton_set_body_centered_aopefset_shellordinal_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_body_centered_aopefset_shellordinal_constructor sym_sse
    end
;;

let is_skeleton_set_body_centered_ecppefset_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_body_centered_ecppefset_constructor sym_sse
    end
;;

let is_skeleton_set_body_periodic_blochwaveset_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_body_periodic_blochwaveset_constructor sym_sse
    end
;;

let is_skeleton_set_body_periodic_waveletset_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_body_periodic_waveletset_constructor sym_sse
    end
;;

let is_skeleton_set_fence_centered_aopef_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_fence_centered_aopef_constructor sym_sse
    end
;;

let is_skeleton_set_fence_centered_ecppef_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_fence_centered_ecppef_constructor sym_sse
    end
;;

let is_skeleton_set_fence_periodic_blochwave_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_fence_periodic_blochwave_constructor sym_sse
    end
;;

let is_skeleton_set_fence_periodic_wavelet_constructor sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
      let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
      Skeleton_set_symbol_v.is_skeleton_set_fence_periodic_wavelet_constructor sym_sse
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_skeleton_context_database_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_context_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
  Skeleton_context_symbol_v.is_skeleton_context_database_symbol_off_skeleton_context_symbol sym_sco
    end
;;

let is_skeleton_context_databox_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_context_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
  Skeleton_context_symbol_v.is_skeleton_context_databox_symbol_off_skeleton_context_symbol sym_sco
    end
;;

let is_skeleton_context_domain_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_context_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
  Skeleton_context_symbol_v.is_skeleton_context_domain_symbol_off_skeleton_context_symbol sym_sco
    end
;;

let is_skeleton_context_sector_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_context_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sco = skeleton_context_symbol_off_skeleton_symbol sym_ske in
  Skeleton_context_symbol_v.is_skeleton_context_sector_symbol_off_skeleton_context_symbol sym_sco
    end
;;

let is_skeleton_set_body_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_body_centered_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_centered_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_body_centered_ecppefset_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_body_periodic_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_periodic_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_body_periodic_blochwaveset_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_periodic_blochwaveset_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_body_periodic_waveletset_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_body_periodic_waveletset_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_fence_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_fence_centered_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_fence_centered_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_fence_centered_aopef_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_fence_centered_aopef_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_fence_centered_ecppef_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_fence_centered_ecppef_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_fence_periodic_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_fence_periodic_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_fence_periodic_blochwave_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_fence_periodic_blochwave_symbol_off_skeleton_set_symbol sym_sse
    end
;;

let is_skeleton_set_fence_periodic_wavelet_symbol_off_skeleton_symbol sym_ske =
  if not (is_skeleton_set_symbol_off_skeleton_symbol sym_ske)
  then false
  else
    begin
  let sym_sse = skeleton_set_symbol_off_skeleton_symbol sym_ske in
  Skeleton_set_symbol_v.is_skeleton_set_fence_periodic_wavelet_symbol_off_skeleton_set_symbol sym_sse
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let skeleton_symbol_of_skeleton_context_symbol sym_sco = 
  Skeleton_symbol_t.Skeleton_context_symbol sym_sco
;;

let skeleton_symbol_of_skeleton_set_symbol sym_sse = 
  Skeleton_symbol_t.Skeleton_set_symbol sym_sse
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let skeleton_symbol_of_skeleton_context_database_symbol sym_scd = 
  let sym_sco = Skeleton_context_symbol_v.skeleton_context_symbol_of_skeleton_context_database_symbol sym_scd in
    skeleton_symbol_of_skeleton_context_symbol sym_sco
;;

let skeleton_symbol_of_skeleton_context_databox_symbol sym_scd = 
  let sym_sco = Skeleton_context_symbol_v.skeleton_context_symbol_of_skeleton_context_databox_symbol sym_scd in
    skeleton_symbol_of_skeleton_context_symbol sym_sco
;;

let skeleton_symbol_of_skeleton_context_domain_symbol sym_scd = 
  let sym_sco = Skeleton_context_symbol_v.skeleton_context_symbol_of_skeleton_context_domain_symbol sym_scd in
    skeleton_symbol_of_skeleton_context_symbol sym_sco
;;

let skeleton_symbol_of_skeleton_context_sector_symbol sym_scs = 
  let sym_sco = Skeleton_context_symbol_v.skeleton_context_symbol_of_skeleton_context_sector_symbol sym_scs in
    skeleton_symbol_of_skeleton_context_symbol sym_sco
;;

let skeleton_symbol_of_skeleton_set_body_symbol sym_ssb = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_body_centered_symbol sym_sbc = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_centered_symbol sym_sbc in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_body_centered_aopefset_symbol sym_sca = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_centered_aopefset_symbol sym_sca in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_body_centered_aopefset_onecenter_symbol sym_sa1 = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_centered_aopefset_onecenter_symbol sym_sa1 in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_body_centered_aopefset_anycenter_symbol sym_saa = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_centered_aopefset_anycenter_symbol sym_saa in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_body_centered_aopefset_shellsymmetry_symbol sym_sas = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_centered_aopefset_shellsymmetry_symbol sym_sas in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_body_centered_aopefset_shellordinal_symbol sym_sas = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_centered_aopefset_shellordinal_symbol sym_sas in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_body_centered_ecppefset_symbol sym_sce = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_centered_ecppefset_symbol sym_sce in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_body_periodic_symbol sym_sbp = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_periodic_symbol sym_sbp in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_body_periodic_blochwaveset_symbol sym_spb = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_periodic_blochwaveset_symbol sym_spb in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_body_periodic_waveletset_symbol sym_spw = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_body_periodic_waveletset_symbol sym_spw in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_fence_symbol sym_ssf = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_fence_symbol sym_ssf in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_fence_centered_symbol sym_sfc = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_fence_centered_symbol sym_sfc in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_fence_centered_aopef_symbol sym_sca = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_fence_centered_aopef_symbol sym_sca in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_fence_centered_ecppef_symbol sym_sce = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_fence_centered_ecppef_symbol sym_sce in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_fence_periodic_symbol sym_sfp = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_fence_periodic_symbol sym_sfp in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_fence_periodic_blochwave_symbol sym_spb = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_fence_periodic_blochwave_symbol sym_spb in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;

let skeleton_symbol_of_skeleton_set_fence_periodic_wavelet_symbol sym_spw = 
  let sym_sse = Skeleton_set_symbol_v.skeleton_set_symbol_of_skeleton_set_fence_periodic_wavelet_symbol sym_spw in
    skeleton_symbol_of_skeleton_set_symbol sym_sse
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let skeleton_context_database_constructor s = skeleton_symbol_of_skeleton_context_symbol (Skeleton_context_symbol_v.skeleton_context_database_constructor s);;

let skeleton_context_databox_constructor s = skeleton_symbol_of_skeleton_context_symbol (Skeleton_context_symbol_v.skeleton_context_databox_constructor s);;

let skeleton_context_domain_constructor s = skeleton_symbol_of_skeleton_context_symbol (Skeleton_context_symbol_v.skeleton_context_domain_constructor s);;

let skeleton_context_sector_constructor s = skeleton_symbol_of_skeleton_context_symbol (Skeleton_context_symbol_v.skeleton_context_sector_constructor s);;

let skeleton_set_body_centered_aopefset_onecenter_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_body_centered_aopefset_onecenter_constructor s);;

let skeleton_set_body_centered_aopefset_anycenter_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_body_centered_aopefset_anycenter_constructor s);;

let skeleton_set_body_centered_aopefset_shellsymmetry_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_body_centered_aopefset_shellsymmetry_constructor s);;

let skeleton_set_body_centered_aopefset_shellordinal_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_body_centered_aopefset_shellordinal_constructor s);;

let skeleton_set_body_centered_ecppefset_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_body_centered_ecppefset_constructor s);;

let skeleton_set_body_periodic_blochwaveset_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_body_periodic_blochwaveset_constructor s);;

let skeleton_set_body_periodic_waveletset_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_body_periodic_waveletset_constructor s);;

let skeleton_set_fence_centered_aopef_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_fence_centered_aopef_constructor s);;

let skeleton_set_fence_centered_ecppef_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_fence_centered_ecppef_constructor s);;

let skeleton_set_fence_periodic_blochwave_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_fence_periodic_blochwave_constructor s);;

let skeleton_set_fence_periodic_wavelet_constructor s = skeleton_symbol_of_skeleton_set_symbol (Skeleton_set_symbol_v.skeleton_set_fence_periodic_wavelet_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Skeleton_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Skeleton_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try skeleton_symbol_of_skeleton_context_symbol
      (Skeleton_context_symbol_v.make nam s)
  with Failure "Not_a_skeleton_context_symbol:Skeleton_context_symbol_v.ml:make" ->
  try skeleton_symbol_of_skeleton_set_symbol
      (Skeleton_set_symbol_v.make nam s)
  with Failure "Not_a_skeleton_set_symbol:Skeleton_set_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Skeleton_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Skeleton_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Skeleton_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Skeleton_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Skeleton subtype" nam s)
      "it does not exists"
      "Check file Skeleton_symbol_v.ml"
    in
    failwith "Not_a_skeleton_symbol:Skeleton_symbol_v.ml:make"
;;


(** Skeleton_symbol_v at 14:12:39 on 5 Jan 2017. created by version v2.4 of generator *)



