(** {3 Skeleton_set_body_centered_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Skeleton_set_body_centered_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol sym_sca ->
    Skeleton_set_body_centered_aopefset_symbol_v.name sym_sca
  | Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppefset_symbol sym_sce ->
    Skeleton_set_body_centered_ecppefset_symbol_v.name sym_sce
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol sym_sca ->
  Skeleton_set_body_centered_aopefset_symbol_v.string_off sym_sca
  | Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppefset_symbol sym_sce ->
  Skeleton_set_body_centered_ecppefset_symbol_v.string_off sym_sce
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sbc =
  Format.sprintf "Skeleton_set_body_centered_symbol_t.%s" (String.capitalize (name sym_sbc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sbc =
  Format.sprintf "%s \"%s\"" (longname sym_sbc) (string_off sym_sbc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol = function
  | Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol sym_sca -> sym_sca
  | sym_sbc -> Error_messages_v.print_fatal_error
      nam_cod "skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol"
      "Skeleton_set_body_centered_aopefset_symbol"
      (name sym_sbc) "check"
;;

let skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_body_centered_symbol = function
  | Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppefset_symbol sym_sce -> sym_sce
  | sym_sbc -> Error_messages_v.print_fatal_error
      nam_cod "skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_body_centered_symbol"
      "Skeleton_set_body_centered_ecppefset_symbol"
      (name sym_sbc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_set_body_centered_symbol sym_sbc = 
  let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
    Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_set_body_centered_aopefset_symbol sym_sca
;;

let skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_set_body_centered_symbol sym_sbc = 
  let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
    Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_set_body_centered_aopefset_symbol sym_sca
;;

let skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_set_body_centered_symbol sym_sbc = 
  let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
    Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_set_body_centered_aopefset_symbol sym_sca
;;

let skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_set_body_centered_symbol sym_sbc = 
  let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
    Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_set_body_centered_aopefset_symbol sym_sca
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol = function
  | Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol _ -> true
  | _ -> false
;;

let is_skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_body_centered_symbol = function
  | Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppefset_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_skeleton_set_body_centered_aopefset_onecenter_constructor sym_sbc =
  if not (is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc)
  then false
  else
    begin
      let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
      Skeleton_set_body_centered_aopefset_symbol_v.is_skeleton_set_body_centered_aopefset_onecenter_constructor sym_sca
    end
;;

let is_skeleton_set_body_centered_aopefset_anycenter_constructor sym_sbc =
  if not (is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc)
  then false
  else
    begin
      let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
      Skeleton_set_body_centered_aopefset_symbol_v.is_skeleton_set_body_centered_aopefset_anycenter_constructor sym_sca
    end
;;

let is_skeleton_set_body_centered_aopefset_shellsymmetry_constructor sym_sbc =
  if not (is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc)
  then false
  else
    begin
      let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
      Skeleton_set_body_centered_aopefset_symbol_v.is_skeleton_set_body_centered_aopefset_shellsymmetry_constructor sym_sca
    end
;;

let is_skeleton_set_body_centered_aopefset_shellordinal_constructor sym_sbc =
  if not (is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc)
  then false
  else
    begin
      let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
      Skeleton_set_body_centered_aopefset_symbol_v.is_skeleton_set_body_centered_aopefset_shellordinal_constructor sym_sca
    end
;;

let is_skeleton_set_body_centered_ecppefset_constructor sym_sbc =
  if not (is_skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc)
  then false
  else
    begin
      let sym_sce = skeleton_set_body_centered_ecppefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
      Skeleton_set_body_centered_ecppefset_symbol_v.is_skeleton_set_body_centered_ecppefset_constructor sym_sce
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_set_body_centered_symbol sym_sbc =
  if not (is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc)
  then false
  else
    begin
  let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
  Skeleton_set_body_centered_aopefset_symbol_v.is_skeleton_set_body_centered_aopefset_onecenter_symbol_off_skeleton_set_body_centered_aopefset_symbol sym_sca
    end
;;

let is_skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_set_body_centered_symbol sym_sbc =
  if not (is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc)
  then false
  else
    begin
  let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
  Skeleton_set_body_centered_aopefset_symbol_v.is_skeleton_set_body_centered_aopefset_anycenter_symbol_off_skeleton_set_body_centered_aopefset_symbol sym_sca
    end
;;

let is_skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_set_body_centered_symbol sym_sbc =
  if not (is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc)
  then false
  else
    begin
  let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
  Skeleton_set_body_centered_aopefset_symbol_v.is_skeleton_set_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_set_body_centered_aopefset_symbol sym_sca
    end
;;

let is_skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_set_body_centered_symbol sym_sbc =
  if not (is_skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc)
  then false
  else
    begin
  let sym_sca = skeleton_set_body_centered_aopefset_symbol_off_skeleton_set_body_centered_symbol sym_sbc in
  Skeleton_set_body_centered_aopefset_symbol_v.is_skeleton_set_body_centered_aopefset_shellordinal_symbol_off_skeleton_set_body_centered_aopefset_symbol sym_sca
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_symbol sym_sca = 
  Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol sym_sca
;;

let skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_ecppefset_symbol sym_sce = 
  Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppefset_symbol sym_sce
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_onecenter_symbol sym_sa1 = 
  let sym_sca = Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_symbol_of_skeleton_set_body_centered_aopefset_onecenter_symbol sym_sa1 in
    skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_symbol sym_sca
;;

let skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_anycenter_symbol sym_saa = 
  let sym_sca = Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_symbol_of_skeleton_set_body_centered_aopefset_anycenter_symbol sym_saa in
    skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_symbol sym_sca
;;

let skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_shellsymmetry_symbol sym_sas = 
  let sym_sca = Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_symbol_of_skeleton_set_body_centered_aopefset_shellsymmetry_symbol sym_sas in
    skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_symbol sym_sca
;;

let skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_shellordinal_symbol sym_sas = 
  let sym_sca = Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_symbol_of_skeleton_set_body_centered_aopefset_shellordinal_symbol sym_sas in
    skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_symbol sym_sca
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let skeleton_set_body_centered_aopefset_onecenter_constructor s = skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_symbol (Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_onecenter_constructor s);;

let skeleton_set_body_centered_aopefset_anycenter_constructor s = skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_symbol (Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_anycenter_constructor s);;

let skeleton_set_body_centered_aopefset_shellsymmetry_constructor s = skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_symbol (Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_shellsymmetry_constructor s);;

let skeleton_set_body_centered_aopefset_shellordinal_constructor s = skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_symbol (Skeleton_set_body_centered_aopefset_symbol_v.skeleton_set_body_centered_aopefset_shellordinal_constructor s);;

let skeleton_set_body_centered_ecppefset_constructor s = skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_ecppefset_symbol (Skeleton_set_body_centered_ecppefset_symbol_v.skeleton_set_body_centered_ecppefset_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Skeleton_set_body_centered_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Skeleton_set_body_centered_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_aopefset_symbol
      (Skeleton_set_body_centered_aopefset_symbol_v.make nam s)
  with Failure "Not_a_skeleton_set_body_centered_aopefset_symbol:Skeleton_set_body_centered_aopefset_symbol_v.ml:make" ->
  try skeleton_set_body_centered_symbol_of_skeleton_set_body_centered_ecppefset_symbol
      (Skeleton_set_body_centered_ecppefset_symbol_v.make nam s)
  with Failure "Not_a_skeleton_set_body_centered_ecppefset_symbol:Skeleton_set_body_centered_ecppefset_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Skeleton_set_body_centered_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Skeleton_set_body_centered_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Skeleton_set_body_centered_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Skeleton_set_body_centered_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Skeleton_set_body_centered subtype" nam s)
      "it does not exists"
      "Check file Skeleton_set_body_centered_symbol_v.ml"
    in
    failwith "Not_a_skeleton_set_body_centered_symbol:Skeleton_set_body_centered_symbol_v.ml:make"
;;


(** Skeleton_set_body_centered_symbol_v at 14:12:40 on 5 Jan 2017. created by version v2.4 of generator *)



