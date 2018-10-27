(** {3 Zerotied_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Zerotied_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Zerotied_symbol_t.Zerotied_block_symbol sym_zbl ->
    Zerotied_block_symbol_v.name sym_zbl
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Zerotied_symbol_t.Zerotied_block_symbol sym_zbl ->
  Zerotied_block_symbol_v.string_off sym_zbl
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_zer =
  Format.sprintf "Zerotied_symbol_t.%s" (String.capitalize (name sym_zer))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_zer =
  Format.sprintf "%s \"%s\"" (longname sym_zer) (string_off sym_zer)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let zerotied_block_symbol_off_zerotied_symbol = function
  | Zerotied_symbol_t.Zerotied_block_symbol sym_zbl -> sym_zbl
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let zerotied_block_none_none_ax1_symbol_off_zerotied_symbol sym_zer = 
  let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax1_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax1_single_symbol_off_zerotied_symbol sym_zer = 
  let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax1_single_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax1_double_symbol_off_zerotied_symbol sym_zer = 
  let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax1_double_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax1_biconjugated_symbol_off_zerotied_symbol sym_zer = 
  let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax1_biconjugated_symbol_off_zerotied_block_symbol sym_zbl
;;

let zerotied_block_none_none_ax1_triple_symbol_off_zerotied_symbol sym_zer = 
  let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
    Zerotied_block_symbol_v.zerotied_block_none_none_ax1_triple_symbol_off_zerotied_block_symbol sym_zbl
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_zerotied_block_symbol_off_zerotied_symbol = function
  | Zerotied_symbol_t.Zerotied_block_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_z_fh_z sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
      Zerotied_block_symbol_v.is_z_fh_z sym_zbl
    end
;;

let is_z_h2_z sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
      Zerotied_block_symbol_v.is_z_h2_z sym_zbl
    end
;;

let is_z_sh_z sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
      Zerotied_block_symbol_v.is_z_sh_z sym_zbl
    end
;;

let is_z_o2_z sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
      Zerotied_block_symbol_v.is_z_o2_z sym_zbl
    end
;;

let is_z_no_z sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
      Zerotied_block_symbol_v.is_z_no_z sym_zbl
    end
;;

let is_z_co_z sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
      Zerotied_block_symbol_v.is_z_co_z sym_zbl
    end
;;

let is_z_n2_z sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
      let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
      Zerotied_block_symbol_v.is_z_n2_z sym_zbl
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_zerotied_block_none_none_ax1_symbol_off_zerotied_symbol sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax1_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax1_single_symbol_off_zerotied_symbol sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax1_single_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax1_double_symbol_off_zerotied_symbol sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax1_double_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax1_biconjugated_symbol_off_zerotied_symbol sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax1_biconjugated_symbol_off_zerotied_block_symbol sym_zbl
    end
;;

let is_zerotied_block_none_none_ax1_triple_symbol_off_zerotied_symbol sym_zer =
  if not (is_zerotied_block_symbol_off_zerotied_symbol sym_zer)
  then false
  else
    begin
  let sym_zbl = zerotied_block_symbol_off_zerotied_symbol sym_zer in
  Zerotied_block_symbol_v.is_zerotied_block_none_none_ax1_triple_symbol_off_zerotied_block_symbol sym_zbl
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let zerotied_symbol_of_zerotied_block_symbol sym_zbl = 
  Zerotied_symbol_t.Zerotied_block_symbol sym_zbl
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let zerotied_symbol_of_zerotied_block_none_none_ax1_symbol sym_0na = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax1_symbol sym_0na in
    zerotied_symbol_of_zerotied_block_symbol sym_zbl
;;

let zerotied_symbol_of_zerotied_block_none_none_ax1_single_symbol sym_0as = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax1_single_symbol sym_0as in
    zerotied_symbol_of_zerotied_block_symbol sym_zbl
;;

let zerotied_symbol_of_zerotied_block_none_none_ax1_double_symbol sym_0ad = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax1_double_symbol sym_0ad in
    zerotied_symbol_of_zerotied_block_symbol sym_zbl
;;

let zerotied_symbol_of_zerotied_block_none_none_ax1_biconjugated_symbol sym_0ab = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax1_biconjugated_symbol sym_0ab in
    zerotied_symbol_of_zerotied_block_symbol sym_zbl
;;

let zerotied_symbol_of_zerotied_block_none_none_ax1_triple_symbol sym_0at = 
  let sym_zbl = Zerotied_block_symbol_v.zerotied_block_symbol_of_zerotied_block_none_none_ax1_triple_symbol sym_0at in
    zerotied_symbol_of_zerotied_block_symbol sym_zbl
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let z_fh_z = zerotied_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_fh_z;;

let z_h2_z = zerotied_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_h2_z;;

let z_sh_z = zerotied_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_sh_z;;

let z_o2_z = zerotied_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_o2_z;;

let z_no_z = zerotied_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_no_z;;

let z_co_z = zerotied_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_co_z;;

let z_n2_z = zerotied_symbol_of_zerotied_block_symbol Zerotied_block_symbol_v.z_n2_z;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Zerotied_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Zerotied_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try zerotied_symbol_of_zerotied_block_symbol
      (Zerotied_block_symbol_v.make nam s)
  with Failure "Not_a_zerotied_block_symbol:Zerotied_block_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Zerotied_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Zerotied_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Zerotied_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Zerotied_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Zerotied subtype" nam s)
      "it does not exists"
      "Check file Zerotied_symbol_v.ml"
    in
    failwith "Not_a_zerotied_symbol:Zerotied_symbol_v.ml:make"
;;


(** Zerotied_symbol_v at 12:15:54 on 23 Jun 2013. created by version v2.2 of generator *)



