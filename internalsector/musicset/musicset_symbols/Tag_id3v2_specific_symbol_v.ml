(** {3 Tag_id3v2_specific_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Tag_id3v2_specific_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Tag_id3v2_specific_symbol_t.Tag_id3v2_3_specific_symbol sym_t3s ->
    Tag_id3v2_3_specific_symbol_v.name sym_t3s
  | Tag_id3v2_specific_symbol_t.Tag_id3v2_4_specific_symbol sym_t4s ->
    Tag_id3v2_4_specific_symbol_v.name sym_t4s
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Tag_id3v2_specific_symbol_t.Tag_id3v2_3_specific_symbol sym_t3s ->
  Tag_id3v2_3_specific_symbol_v.string_off sym_t3s
  | Tag_id3v2_specific_symbol_t.Tag_id3v2_4_specific_symbol sym_t4s ->
  Tag_id3v2_4_specific_symbol_v.string_off sym_t4s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_tis =
  Format.sprintf "Tag_id3v2_specific_symbol_t.%s" (String.capitalize (name sym_tis))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_tis =
  Format.sprintf "%s \"%s\"" (longname sym_tis) (string_off sym_tis)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol = function
  | Tag_id3v2_specific_symbol_t.Tag_id3v2_3_specific_symbol sym_t3s -> sym_t3s
  | sym_tis -> Error_messages_v.print_fatal_error
      nam_cod "tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol"
      "Tag_id3v2_3_specific_symbol"
      (name sym_tis) "check"
;;

let tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol = function
  | Tag_id3v2_specific_symbol_t.Tag_id3v2_4_specific_symbol sym_t4s -> sym_t4s
  | sym_tis -> Error_messages_v.print_fatal_error
      nam_cod "tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol"
      "Tag_id3v2_4_specific_symbol"
      (name sym_tis) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol = function
  | Tag_id3v2_specific_symbol_t.Tag_id3v2_3_specific_symbol _ -> true
  | _ -> false
;;

let is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol = function
  | Tag_id3v2_specific_symbol_t.Tag_id3v2_4_specific_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_equa sym_tis =
  if not (is_tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t3s = tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_3_specific_symbol_v.is_equa sym_t3s
    end
;;

let is_ipls sym_tis =
  if not (is_tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t3s = tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_3_specific_symbol_v.is_ipls sym_t3s
    end
;;

let is_rvad sym_tis =
  if not (is_tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t3s = tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_3_specific_symbol_v.is_rvad sym_t3s
    end
;;

let is_tdat sym_tis =
  if not (is_tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t3s = tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_3_specific_symbol_v.is_tdat sym_t3s
    end
;;

let is_time sym_tis =
  if not (is_tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t3s = tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_3_specific_symbol_v.is_time sym_t3s
    end
;;

let is_tory sym_tis =
  if not (is_tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t3s = tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_3_specific_symbol_v.is_tory sym_t3s
    end
;;

let is_trda sym_tis =
  if not (is_tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t3s = tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_3_specific_symbol_v.is_trda sym_t3s
    end
;;

let is_tyer sym_tis =
  if not (is_tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t3s = tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_3_specific_symbol_v.is_tyer sym_t3s
    end
;;

let is_tsiz sym_tis =
  if not (is_tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t3s = tag_id3v2_3_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_3_specific_symbol_v.is_tsiz sym_t3s
    end
;;

let is_aspi sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_aspi sym_t4s
    end
;;

let is_equ2 sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_equ2 sym_t4s
    end
;;

let is_rva2 sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_rva2 sym_t4s
    end
;;

let is_seek sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_seek sym_t4s
    end
;;

let is_sign sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_sign sym_t4s
    end
;;

let is_tden sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tden sym_t4s
    end
;;

let is_tdor sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tdor sym_t4s
    end
;;

let is_tdrc sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tdrc sym_t4s
    end
;;

let is_tdrl sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tdrl sym_t4s
    end
;;

let is_tdtg sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tdtg sym_t4s
    end
;;

let is_tipl sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tipl sym_t4s
    end
;;

let is_tmcl sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tmcl sym_t4s
    end
;;

let is_tmoo sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tmoo sym_t4s
    end
;;

let is_tpro sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tpro sym_t4s
    end
;;

let is_tsoa sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tsoa sym_t4s
    end
;;

let is_tsop sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tsop sym_t4s
    end
;;

let is_tsot sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tsot sym_t4s
    end
;;

let is_tsst sym_tis =
  if not (is_tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis)
  then false
  else
    begin
      let sym_t4s = tag_id3v2_4_specific_symbol_off_tag_id3v2_specific_symbol sym_tis in
      Tag_id3v2_4_specific_symbol_v.is_tsst sym_t4s
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol sym_t3s = 
  Tag_id3v2_specific_symbol_t.Tag_id3v2_3_specific_symbol sym_t3s
;;

let tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol sym_t4s = 
  Tag_id3v2_specific_symbol_t.Tag_id3v2_4_specific_symbol sym_t4s
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let equa = tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol Tag_id3v2_3_specific_symbol_v.equa;;

let ipls = tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol Tag_id3v2_3_specific_symbol_v.ipls;;

let rvad = tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol Tag_id3v2_3_specific_symbol_v.rvad;;

let tdat = tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol Tag_id3v2_3_specific_symbol_v.tdat;;

let time = tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol Tag_id3v2_3_specific_symbol_v.time;;

let tory = tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol Tag_id3v2_3_specific_symbol_v.tory;;

let trda = tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol Tag_id3v2_3_specific_symbol_v.trda;;

let tyer = tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol Tag_id3v2_3_specific_symbol_v.tyer;;

let tsiz = tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol Tag_id3v2_3_specific_symbol_v.tsiz;;

let aspi = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.aspi;;

let equ2 = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.equ2;;

let rva2 = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.rva2;;

let seek = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.seek;;

let sign = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.sign;;

let tden = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tden;;

let tdor = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tdor;;

let tdrc = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tdrc;;

let tdrl = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tdrl;;

let tdtg = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tdtg;;

let tipl = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tipl;;

let tmcl = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tmcl;;

let tmoo = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tmoo;;

let tpro = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tpro;;

let tsoa = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tsoa;;

let tsop = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tsop;;

let tsot = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tsot;;

let tsst = tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol Tag_id3v2_4_specific_symbol_v.tsst;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Tag_id3v2_specific_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Tag_id3v2_specific_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try tag_id3v2_specific_symbol_of_tag_id3v2_3_specific_symbol
      (Tag_id3v2_3_specific_symbol_v.make nam s)
  with Failure "Not_a_tag_id3v2_3_specific_symbol:Tag_id3v2_3_specific_symbol_v.ml:make" ->
  try tag_id3v2_specific_symbol_of_tag_id3v2_4_specific_symbol
      (Tag_id3v2_4_specific_symbol_v.make nam s)
  with Failure "Not_a_tag_id3v2_4_specific_symbol:Tag_id3v2_4_specific_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Tag_id3v2_specific_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Tag_id3v2_specific_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Tag_id3v2_specific_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Tag_id3v2_specific_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Tag_id3v2_specific subtype" nam s)
      "it does not exists"
      "Check file Tag_id3v2_specific_symbol_v.ml"
    in
    failwith "Not_a_tag_id3v2_specific_symbol:Tag_id3v2_specific_symbol_v.ml:make"
;;


(** Tag_id3v2_specific_symbol_v at 18:57:23 on 27 Jun 2013. created by version v2.3 of generator *)



