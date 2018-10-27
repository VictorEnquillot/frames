(** {3 Skeleton_set_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Skeleton_set_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Skeleton_set_symbol_t.Skeleton_set_body_symbol sym_ssb ->
    Skeleton_set_body_symbol_v.name sym_ssb
  | Skeleton_set_symbol_t.Skeleton_set_fence_symbol sym_ssf ->
    Skeleton_set_fence_symbol_v.name sym_ssf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Skeleton_set_symbol_t.Skeleton_set_body_symbol sym_ssb ->
  Skeleton_set_body_symbol_v.string_off sym_ssb
  | Skeleton_set_symbol_t.Skeleton_set_fence_symbol sym_ssf ->
  Skeleton_set_fence_symbol_v.string_off sym_ssf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sse =
  Format.sprintf "Skeleton_set_symbol_t.%s" (String.capitalize (name sym_sse))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sse =
  Format.sprintf "%s \"%s\"" (longname sym_sse) (string_off sym_sse)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let skeleton_set_body_symbol_off_skeleton_set_symbol = function
  | Skeleton_set_symbol_t.Skeleton_set_body_symbol sym_ssb -> sym_ssb
  | sym_sse -> Error_messages_v.print_fatal_error
      nam_cod "skeleton_set_body_symbol_off_skeleton_set_symbol"
      "Skeleton_set_body_symbol"
      (name sym_sse) "check"
;;

let skeleton_set_fence_symbol_off_skeleton_set_symbol = function
  | Skeleton_set_symbol_t.Skeleton_set_fence_symbol sym_ssf -> sym_ssf
  | sym_sse -> Error_messages_v.print_fatal_error
      nam_cod "skeleton_set_fence_symbol_off_skeleton_set_symbol"
      "Skeleton_set_fence_symbol"
      (name sym_sse) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let skeleton_set_body_centered_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_body_symbol_v.skeleton_set_body_centered_symbol_off_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_body_symbol_v.skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_body_symbol_v.skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_body_symbol_v.skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_body_symbol_v.skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_body_symbol_v.skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_body_symbol_v.skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_body_periodic_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_body_symbol_v.skeleton_set_body_periodic_symbol_off_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_body_periodic_blochwaveset_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_body_symbol_v.skeleton_set_body_periodic_blochwaveset_symbol_off_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_body_periodic_waveletset_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_body_symbol_v.skeleton_set_body_periodic_waveletset_symbol_off_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_fence_centered_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_fence_symbol_v.skeleton_set_fence_centered_symbol_off_skeleton_set_fence_symbol sym_ssf
;;

let skeleton_set_fence_centered_aopef_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_fence_symbol_v.skeleton_set_fence_centered_aopef_symbol_off_skeleton_set_fence_symbol sym_ssf
;;

let skeleton_set_fence_centered_ecppef_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_fence_symbol_v.skeleton_set_fence_centered_ecppef_symbol_off_skeleton_set_fence_symbol sym_ssf
;;

let skeleton_set_fence_periodic_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_fence_symbol_v.skeleton_set_fence_periodic_symbol_off_skeleton_set_fence_symbol sym_ssf
;;

let skeleton_set_fence_periodic_blochwave_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_fence_symbol_v.skeleton_set_fence_periodic_blochwave_symbol_off_skeleton_set_fence_symbol sym_ssf
;;

let skeleton_set_fence_periodic_wavelet_symbol_off_skeleton_set_symbol sym_sse = 
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
    Skeleton_set_fence_symbol_v.skeleton_set_fence_periodic_wavelet_symbol_off_skeleton_set_fence_symbol sym_ssf
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_skeleton_set_body_symbol_off_skeleton_set_symbol = function
  | Skeleton_set_symbol_t.Skeleton_set_body_symbol _ -> true
  | _ -> false
;;

let is_skeleton_set_fence_symbol_off_skeleton_set_symbol = function
  | Skeleton_set_symbol_t.Skeleton_set_fence_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_skeleton_set_body_centered_aopefset_onecenter_constructor sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_aopefset_onecenter_constructor sym_ssb
    end
;;

let is_skeleton_set_body_centered_aopefset_anycenter_constructor sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_aopefset_anycenter_constructor sym_ssb
    end
;;

let is_skeleton_set_body_centered_aopefset_shellsymmetry_constructor sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_aopefset_shellsymmetry_constructor sym_ssb
    end
;;

let is_skeleton_set_body_centered_aopefset_shellordinal_constructor sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_aopefset_shellordinal_constructor sym_ssb
    end
;;

let is_skeleton_set_body_centered_ecppefset_constructor sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_ecppefset_constructor sym_ssb
    end
;;

let is_skeleton_set_body_periodic_blochwaveset_constructor sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_body_symbol_v.is_skeleton_set_body_periodic_blochwaveset_constructor sym_ssb
    end
;;

let is_skeleton_set_body_periodic_waveletset_constructor sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_body_symbol_v.is_skeleton_set_body_periodic_waveletset_constructor sym_ssb
    end
;;

let is_skeleton_set_fence_centered_aopef_constructor sym_sse =
  if not (is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_fence_symbol_v.is_skeleton_set_fence_centered_aopef_constructor sym_ssf
    end
;;

let is_skeleton_set_fence_centered_ecppef_constructor sym_sse =
  if not (is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_fence_symbol_v.is_skeleton_set_fence_centered_ecppef_constructor sym_ssf
    end
;;

let is_skeleton_set_fence_periodic_blochwave_constructor sym_sse =
  if not (is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_fence_symbol_v.is_skeleton_set_fence_periodic_blochwave_constructor sym_ssf
    end
;;

let is_skeleton_set_fence_periodic_wavelet_constructor sym_sse =
  if not (is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
      let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
      Skeleton_set_fence_symbol_v.is_skeleton_set_fence_periodic_wavelet_constructor sym_ssf
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_skeleton_set_body_centered_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_symbol_off_skeleton_set_body_symbol sym_ssb
    end
;;

let is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_symbol sym_ssb
    end
;;

let is_skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_set_body_symbol sym_ssb
    end
;;

let is_skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_set_body_symbol sym_ssb
    end
;;

let is_skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_set_body_symbol sym_ssb
    end
;;

let is_skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_set_body_symbol sym_ssb
    end
;;

let is_skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_body_symbol_v.is_skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_body_symbol sym_ssb
    end
;;

let is_skeleton_set_body_periodic_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_body_symbol_v.is_skeleton_set_body_periodic_symbol_off_skeleton_set_body_symbol sym_ssb
    end
;;

let is_skeleton_set_body_periodic_blochwaveset_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_body_symbol_v.is_skeleton_set_body_periodic_blochwaveset_symbol_off_skeleton_set_body_symbol sym_ssb
    end
;;

let is_skeleton_set_body_periodic_waveletset_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssb = skeleton_set_body_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_body_symbol_v.is_skeleton_set_body_periodic_waveletset_symbol_off_skeleton_set_body_symbol sym_ssb
    end
;;

let is_skeleton_set_fence_centered_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_fence_symbol_v.is_skeleton_set_fence_centered_symbol_off_skeleton_set_fence_symbol sym_ssf
    end
;;

let is_skeleton_set_fence_centered_aopef_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_fence_symbol_v.is_skeleton_set_fence_centered_aopef_symbol_off_skeleton_set_fence_symbol sym_ssf
    end
;;

let is_skeleton_set_fence_centered_ecppef_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_fence_symbol_v.is_skeleton_set_fence_centered_ecppef_symbol_off_skeleton_set_fence_symbol sym_ssf
    end
;;

let is_skeleton_set_fence_periodic_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_fence_symbol_v.is_skeleton_set_fence_periodic_symbol_off_skeleton_set_fence_symbol sym_ssf
    end
;;

let is_skeleton_set_fence_periodic_blochwave_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_fence_symbol_v.is_skeleton_set_fence_periodic_blochwave_symbol_off_skeleton_set_fence_symbol sym_ssf
    end
;;

let is_skeleton_set_fence_periodic_wavelet_symbol_off_skeleton_set_symbol sym_sse =
  if not (is_skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse)
  then false
  else
    begin
  let sym_ssf = skeleton_set_fence_symbol_off_skeleton_set_symbol sym_sse in
  Skeleton_set_fence_symbol_v.is_skeleton_set_fence_periodic_wavelet_symbol_off_skeleton_set_fence_symbol sym_ssf
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb = 
  Skeleton_set_symbol_t.Skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_fence_symbol sym_ssf = 
  Skeleton_set_symbol_t.Skeleton_set_fence_symbol sym_ssf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let skeleton_set_symbol_of_skeleton_set_body_centered_symbol sym_sbc = 
  let sym_ssb = Skeleton_set_body_symbol_v.skeleton_set_body_symbol_of_skeleton_set_body_centered_symbol sym_sbc in
    skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_body_centered_aopefset_symbol sym_sca = 
  let sym_ssb = Skeleton_set_body_symbol_v.skeleton_set_body_symbol_of_skeleton_set_body_centered_aopefset_symbol sym_sca in
    skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_body_centered_aopefset_onecenter_symbol sym_sa1 = 
  let sym_ssb = Skeleton_set_body_symbol_v.skeleton_set_body_symbol_of_skeleton_set_body_centered_aopefset_onecenter_symbol sym_sa1 in
    skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_body_centered_aopefset_anycenter_symbol sym_saa = 
  let sym_ssb = Skeleton_set_body_symbol_v.skeleton_set_body_symbol_of_skeleton_set_body_centered_aopefset_anycenter_symbol sym_saa in
    skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_body_centered_aopefset_shellsymmetry_symbol sym_sas = 
  let sym_ssb = Skeleton_set_body_symbol_v.skeleton_set_body_symbol_of_skeleton_set_body_centered_aopefset_shellsymmetry_symbol sym_sas in
    skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_body_centered_aopefset_shellordinal_symbol sym_sas = 
  let sym_ssb = Skeleton_set_body_symbol_v.skeleton_set_body_symbol_of_skeleton_set_body_centered_aopefset_shellordinal_symbol sym_sas in
    skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_body_centered_ecppefset_symbol sym_sce = 
  let sym_ssb = Skeleton_set_body_symbol_v.skeleton_set_body_symbol_of_skeleton_set_body_centered_ecppefset_symbol sym_sce in
    skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_body_periodic_symbol sym_sbp = 
  let sym_ssb = Skeleton_set_body_symbol_v.skeleton_set_body_symbol_of_skeleton_set_body_periodic_symbol sym_sbp in
    skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_body_periodic_blochwaveset_symbol sym_spb = 
  let sym_ssb = Skeleton_set_body_symbol_v.skeleton_set_body_symbol_of_skeleton_set_body_periodic_blochwaveset_symbol sym_spb in
    skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_body_periodic_waveletset_symbol sym_spw = 
  let sym_ssb = Skeleton_set_body_symbol_v.skeleton_set_body_symbol_of_skeleton_set_body_periodic_waveletset_symbol sym_spw in
    skeleton_set_symbol_of_skeleton_set_body_symbol sym_ssb
;;

let skeleton_set_symbol_of_skeleton_set_fence_centered_symbol sym_sfc = 
  let sym_ssf = Skeleton_set_fence_symbol_v.skeleton_set_fence_symbol_of_skeleton_set_fence_centered_symbol sym_sfc in
    skeleton_set_symbol_of_skeleton_set_fence_symbol sym_ssf
;;

let skeleton_set_symbol_of_skeleton_set_fence_centered_aopef_symbol sym_sca = 
  let sym_ssf = Skeleton_set_fence_symbol_v.skeleton_set_fence_symbol_of_skeleton_set_fence_centered_aopef_symbol sym_sca in
    skeleton_set_symbol_of_skeleton_set_fence_symbol sym_ssf
;;

let skeleton_set_symbol_of_skeleton_set_fence_centered_ecppef_symbol sym_sce = 
  let sym_ssf = Skeleton_set_fence_symbol_v.skeleton_set_fence_symbol_of_skeleton_set_fence_centered_ecppef_symbol sym_sce in
    skeleton_set_symbol_of_skeleton_set_fence_symbol sym_ssf
;;

let skeleton_set_symbol_of_skeleton_set_fence_periodic_symbol sym_sfp = 
  let sym_ssf = Skeleton_set_fence_symbol_v.skeleton_set_fence_symbol_of_skeleton_set_fence_periodic_symbol sym_sfp in
    skeleton_set_symbol_of_skeleton_set_fence_symbol sym_ssf
;;

let skeleton_set_symbol_of_skeleton_set_fence_periodic_blochwave_symbol sym_spb = 
  let sym_ssf = Skeleton_set_fence_symbol_v.skeleton_set_fence_symbol_of_skeleton_set_fence_periodic_blochwave_symbol sym_spb in
    skeleton_set_symbol_of_skeleton_set_fence_symbol sym_ssf
;;

let skeleton_set_symbol_of_skeleton_set_fence_periodic_wavelet_symbol sym_spw = 
  let sym_ssf = Skeleton_set_fence_symbol_v.skeleton_set_fence_symbol_of_skeleton_set_fence_periodic_wavelet_symbol sym_spw in
    skeleton_set_symbol_of_skeleton_set_fence_symbol sym_ssf
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let skeleton_set_body_centered_aopefset_onecenter_constructor s = skeleton_set_symbol_of_skeleton_set_body_symbol (Skeleton_set_body_symbol_v.skeleton_set_body_centered_aopefset_onecenter_constructor s);;

let skeleton_set_body_centered_aopefset_anycenter_constructor s = skeleton_set_symbol_of_skeleton_set_body_symbol (Skeleton_set_body_symbol_v.skeleton_set_body_centered_aopefset_anycenter_constructor s);;

let skeleton_set_body_centered_aopefset_shellsymmetry_constructor s = skeleton_set_symbol_of_skeleton_set_body_symbol (Skeleton_set_body_symbol_v.skeleton_set_body_centered_aopefset_shellsymmetry_constructor s);;

let skeleton_set_body_centered_aopefset_shellordinal_constructor s = skeleton_set_symbol_of_skeleton_set_body_symbol (Skeleton_set_body_symbol_v.skeleton_set_body_centered_aopefset_shellordinal_constructor s);;

let skeleton_set_body_centered_ecppefset_constructor s = skeleton_set_symbol_of_skeleton_set_body_symbol (Skeleton_set_body_symbol_v.skeleton_set_body_centered_ecppefset_constructor s);;

let skeleton_set_body_periodic_blochwaveset_constructor s = skeleton_set_symbol_of_skeleton_set_body_symbol (Skeleton_set_body_symbol_v.skeleton_set_body_periodic_blochwaveset_constructor s);;

let skeleton_set_body_periodic_waveletset_constructor s = skeleton_set_symbol_of_skeleton_set_body_symbol (Skeleton_set_body_symbol_v.skeleton_set_body_periodic_waveletset_constructor s);;

let skeleton_set_fence_centered_aopef_constructor s = skeleton_set_symbol_of_skeleton_set_fence_symbol (Skeleton_set_fence_symbol_v.skeleton_set_fence_centered_aopef_constructor s);;

let skeleton_set_fence_centered_ecppef_constructor s = skeleton_set_symbol_of_skeleton_set_fence_symbol (Skeleton_set_fence_symbol_v.skeleton_set_fence_centered_ecppef_constructor s);;

let skeleton_set_fence_periodic_blochwave_constructor s = skeleton_set_symbol_of_skeleton_set_fence_symbol (Skeleton_set_fence_symbol_v.skeleton_set_fence_periodic_blochwave_constructor s);;

let skeleton_set_fence_periodic_wavelet_constructor s = skeleton_set_symbol_of_skeleton_set_fence_symbol (Skeleton_set_fence_symbol_v.skeleton_set_fence_periodic_wavelet_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Skeleton_set_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Skeleton_set_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try skeleton_set_symbol_of_skeleton_set_body_symbol
      (Skeleton_set_body_symbol_v.make nam s)
  with Failure "Not_a_skeleton_set_body_symbol:Skeleton_set_body_symbol_v.ml:make" ->
  try skeleton_set_symbol_of_skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_v.make nam s)
  with Failure "Not_a_skeleton_set_fence_symbol:Skeleton_set_fence_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Skeleton_set_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Skeleton_set_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Skeleton_set_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Skeleton_set_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Skeleton_set subtype" nam s)
      "it does not exists"
      "Check file Skeleton_set_symbol_v.ml"
    in
    failwith "Not_a_skeleton_set_symbol:Skeleton_set_symbol_v.ml:make"
;;


(** Skeleton_set_symbol_v at 14:12:39 on 5 Jan 2017. created by version v2.4 of generator *)



