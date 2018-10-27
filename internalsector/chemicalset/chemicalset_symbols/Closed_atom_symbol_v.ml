(** {3 Closed_atom_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Closed_atom_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Closed_atom_symbol_t.Closed_atom_neutral_symbol sym_can ->
    Closed_atom_neutral_symbol_v.name sym_can
  | Closed_atom_symbol_t.Closed_atom_anion_symbol sym_caa ->
    Closed_atom_anion_symbol_v.name sym_caa
  | Closed_atom_symbol_t.Closed_atom_cation_symbol sym_cac ->
    Closed_atom_cation_symbol_v.name sym_cac
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Closed_atom_symbol_t.Closed_atom_neutral_symbol sym_can ->
  Closed_atom_neutral_symbol_v.string_off sym_can
  | Closed_atom_symbol_t.Closed_atom_anion_symbol sym_caa ->
  Closed_atom_anion_symbol_v.string_off sym_caa
  | Closed_atom_symbol_t.Closed_atom_cation_symbol sym_cac ->
  Closed_atom_cation_symbol_v.string_off sym_cac
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_cat =
  Format.sprintf "Closed_atom_symbol_t.%s" (String.capitalize (name sym_cat))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_cat =
  Format.sprintf "%s \"%s\"" (longname sym_cat) (string_off sym_cat)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let closed_atom_neutral_symbol_off_closed_atom_symbol = function
  | Closed_atom_symbol_t.Closed_atom_neutral_symbol sym_can -> sym_can
  | sym_cat -> Error_messages_v.print_fatal_error
      nam_cod "closed_atom_neutral_symbol_off_closed_atom_symbol"
      "Closed_atom_neutral_symbol"
      (name sym_cat) "check"
;;

let closed_atom_anion_symbol_off_closed_atom_symbol = function
  | Closed_atom_symbol_t.Closed_atom_anion_symbol sym_caa -> sym_caa
  | sym_cat -> Error_messages_v.print_fatal_error
      nam_cod "closed_atom_anion_symbol_off_closed_atom_symbol"
      "Closed_atom_anion_symbol"
      (name sym_cat) "check"
;;

let closed_atom_cation_symbol_off_closed_atom_symbol = function
  | Closed_atom_symbol_t.Closed_atom_cation_symbol sym_cac -> sym_cac
  | sym_cat -> Error_messages_v.print_fatal_error
      nam_cod "closed_atom_cation_symbol_off_closed_atom_symbol"
      "Closed_atom_cation_symbol"
      (name sym_cat) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_closed_atom_neutral_symbol_off_closed_atom_symbol = function
  | Closed_atom_symbol_t.Closed_atom_neutral_symbol _ -> true
  | _ -> false
;;

let is_closed_atom_anion_symbol_off_closed_atom_symbol = function
  | Closed_atom_symbol_t.Closed_atom_anion_symbol _ -> true
  | _ -> false
;;

let is_closed_atom_cation_symbol_off_closed_atom_symbol = function
  | Closed_atom_symbol_t.Closed_atom_cation_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_ar sym_cat =
  if not (is_closed_atom_neutral_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_can = closed_atom_neutral_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_neutral_symbol_v.is_ar sym_can
    end
;;

let is_he sym_cat =
  if not (is_closed_atom_neutral_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_can = closed_atom_neutral_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_neutral_symbol_v.is_he sym_can
    end
;;

let is_kr sym_cat =
  if not (is_closed_atom_neutral_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_can = closed_atom_neutral_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_neutral_symbol_v.is_kr sym_can
    end
;;

let is_ne sym_cat =
  if not (is_closed_atom_neutral_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_can = closed_atom_neutral_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_neutral_symbol_v.is_ne sym_can
    end
;;

let is_xe sym_cat =
  if not (is_closed_atom_neutral_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_can = closed_atom_neutral_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_neutral_symbol_v.is_xe sym_can
    end
;;

let is_fm1 sym_cat =
  if not (is_closed_atom_anion_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_caa = closed_atom_anion_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_anion_symbol_v.is_fm1 sym_caa
    end
;;

let is_hm1 sym_cat =
  if not (is_closed_atom_anion_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_caa = closed_atom_anion_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_anion_symbol_v.is_hm1 sym_caa
    end
;;

let is_clm1 sym_cat =
  if not (is_closed_atom_anion_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_caa = closed_atom_anion_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_anion_symbol_v.is_clm1 sym_caa
    end
;;

let is_brm1 sym_cat =
  if not (is_closed_atom_anion_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_caa = closed_atom_anion_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_anion_symbol_v.is_brm1 sym_caa
    end
;;

let is_im1 sym_cat =
  if not (is_closed_atom_anion_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_caa = closed_atom_anion_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_anion_symbol_v.is_im1 sym_caa
    end
;;

let is_om2 sym_cat =
  if not (is_closed_atom_anion_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_caa = closed_atom_anion_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_anion_symbol_v.is_om2 sym_caa
    end
;;

let is_sm2 sym_cat =
  if not (is_closed_atom_anion_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_caa = closed_atom_anion_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_anion_symbol_v.is_sm2 sym_caa
    end
;;

let is_hp1 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_hp1 sym_cac
    end
;;

let is_kp1 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_kp1 sym_cac
    end
;;

let is_lip1 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_lip1 sym_cac
    end
;;

let is_nap1 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_nap1 sym_cac
    end
;;

let is_nip1 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_nip1 sym_cac
    end
;;

let is_cup1 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_cup1 sym_cac
    end
;;

let is_mgp2 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_mgp2 sym_cac
    end
;;

let is_cap2 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_cap2 sym_cac
    end
;;

let is_fep2 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_fep2 sym_cac
    end
;;

let is_znp2 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_znp2 sym_cac
    end
;;

let is_cup2 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_cup2 sym_cac
    end
;;

let is_fep3 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_fep3 sym_cac
    end
;;

let is_nip3 sym_cat =
  if not (is_closed_atom_cation_symbol_off_closed_atom_symbol sym_cat)
  then false
  else
    begin
      let sym_cac = closed_atom_cation_symbol_off_closed_atom_symbol sym_cat in
      Closed_atom_cation_symbol_v.is_nip3 sym_cac
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let closed_atom_symbol_of_closed_atom_neutral_symbol sym_can = 
  Closed_atom_symbol_t.Closed_atom_neutral_symbol sym_can
;;

let closed_atom_symbol_of_closed_atom_anion_symbol sym_caa = 
  Closed_atom_symbol_t.Closed_atom_anion_symbol sym_caa
;;

let closed_atom_symbol_of_closed_atom_cation_symbol sym_cac = 
  Closed_atom_symbol_t.Closed_atom_cation_symbol sym_cac
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let ar = closed_atom_symbol_of_closed_atom_neutral_symbol Closed_atom_neutral_symbol_v.ar;;

let he = closed_atom_symbol_of_closed_atom_neutral_symbol Closed_atom_neutral_symbol_v.he;;

let kr = closed_atom_symbol_of_closed_atom_neutral_symbol Closed_atom_neutral_symbol_v.kr;;

let ne = closed_atom_symbol_of_closed_atom_neutral_symbol Closed_atom_neutral_symbol_v.ne;;

let xe = closed_atom_symbol_of_closed_atom_neutral_symbol Closed_atom_neutral_symbol_v.xe;;

let fm1 = closed_atom_symbol_of_closed_atom_anion_symbol Closed_atom_anion_symbol_v.fm1;;

let hm1 = closed_atom_symbol_of_closed_atom_anion_symbol Closed_atom_anion_symbol_v.hm1;;

let clm1 = closed_atom_symbol_of_closed_atom_anion_symbol Closed_atom_anion_symbol_v.clm1;;

let brm1 = closed_atom_symbol_of_closed_atom_anion_symbol Closed_atom_anion_symbol_v.brm1;;

let im1 = closed_atom_symbol_of_closed_atom_anion_symbol Closed_atom_anion_symbol_v.im1;;

let om2 = closed_atom_symbol_of_closed_atom_anion_symbol Closed_atom_anion_symbol_v.om2;;

let sm2 = closed_atom_symbol_of_closed_atom_anion_symbol Closed_atom_anion_symbol_v.sm2;;

let hp1 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.hp1;;

let kp1 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.kp1;;

let lip1 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.lip1;;

let nap1 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.nap1;;

let nip1 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.nip1;;

let cup1 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.cup1;;

let mgp2 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.mgp2;;

let cap2 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.cap2;;

let fep2 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.fep2;;

let znp2 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.znp2;;

let cup2 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.cup2;;

let fep3 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.fep3;;

let nip3 = closed_atom_symbol_of_closed_atom_cation_symbol Closed_atom_cation_symbol_v.nip3;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Closed_atom_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Closed_atom_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try closed_atom_symbol_of_closed_atom_neutral_symbol
      (Closed_atom_neutral_symbol_v.make nam s)
  with Failure "Not_a_closed_atom_neutral_symbol:Closed_atom_neutral_symbol_v.ml:make" ->
  try closed_atom_symbol_of_closed_atom_anion_symbol
      (Closed_atom_anion_symbol_v.make nam s)
  with Failure "Not_a_closed_atom_anion_symbol:Closed_atom_anion_symbol_v.ml:make" ->
  try closed_atom_symbol_of_closed_atom_cation_symbol
      (Closed_atom_cation_symbol_v.make nam s)
  with Failure "Not_a_closed_atom_cation_symbol:Closed_atom_cation_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Closed_atom_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Closed_atom_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Closed_atom_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Closed_atom_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Closed_atom subtype" nam s)
      "it does not exists"
      "Check file Closed_atom_symbol_v.ml"
    in
    failwith "Not_a_closed_atom_symbol:Closed_atom_symbol_v.ml:make"
;;


(** Closed_atom_symbol_v at 12:27:30 on 24 Jun 2013. created by version v2.3 of generator *)



