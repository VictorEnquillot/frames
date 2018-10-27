
(** {3 The functionalities for a Symbol for a Id3v2_tag_specific.} *)

let nam_cod = "id3v2_tag_specific_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3v2_tag_specific_symbol_t.Id3v2_3_tag_specific_symbol sym_3ts ->
      Id3v2_3_tag_specific_symbol_v.name sym_3ts
  | Id3v2_tag_specific_symbol_t.Id3v2_4_tag_specific_symbol sym_4ts ->
      Id3v2_4_tag_specific_symbol_v.name sym_4ts
;;


(** {6 Upgrading} *)


let id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol sym_3ts = 
  Id3v2_tag_specific_symbol_t.Id3v2_3_tag_specific_symbol sym_3ts
;;

let id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol sym_4ts = 
  Id3v2_tag_specific_symbol_t.Id3v2_4_tag_specific_symbol sym_4ts
;;


(** {6 Abbreviating} *)


let EQUA = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.EQUA;;

let IPLS = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.IPLS;;

let RVAD = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.RVAD;;

let TDAT = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.TDAT;;

let TIME = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.TIME;;

let TORY = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.TORY;;

let TRDA = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.TRDA;;

let TYER = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.TYER;;

let TSIZ = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.TSIZ;;

let ASPI = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.ASPI;;

let EQU2 = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.EQU2;;

let RVA2 = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.RVA2;;

let SEEK = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.SEEK;;

let SIGN = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.SIGN;;

let TDEN = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TDEN;;

let TDOR = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TDOR;;

let TDRC = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TDRC;;

let TDRL = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TDRL;;

let TDTG = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TDTG;;

let TIPL = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TIPL;;

let TMCL = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TMCL;;

let TMOO = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TMOO;;

let TPRO = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TPRO;;

let TSOA = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TSOA;;

let TSOP = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TSOP;;

let TSOT = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TSOT;;

let TSST = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.TSST;;


(** {6 Making} *)


let make nam s =
  try id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol
      (Id3v2_3_tag_specific_symbol_v.make nam s)
  with Failure "Not_Id3v2_3_tag_specific_symbol:id3v2_3_tag_specific_symbol_v:make" ->
  try id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol
      (Id3v2_4_tag_specific_symbol_v.make nam s)
  with Failure "Not_Id3v2_4_tag_specific_symbol:id3v2_4_tag_specific_symbol_v:make" ->
    failwith "Not_Id3v2_tag_specific_symbol:id3v2_tag_specific_symbol_v:make"
;;


(** {6 Extracting} *)


let id3v2_3_tag_specific_symbol_off_id3v2_tag_specific_symbol = function
  | Id3v2_tag_specific_symbol_t.Id3v2_3_tag_specific_symbol sym_3ts -> sym_3ts
  | sym_its -> Error_messages_v.print_fatal_error
      nam_cod "id3v2_3_tag_specific_symbol_off_id3v2_tag_specific_symbol"
      "Id3v2_3_tag_specific_symbol"
      (name sym_its) "check"
;;

let id3v2_4_tag_specific_symbol_off_id3v2_tag_specific_symbol = function
  | Id3v2_tag_specific_symbol_t.Id3v2_4_tag_specific_symbol sym_4ts -> sym_4ts
  | sym_its -> Error_messages_v.print_fatal_error
      nam_cod "id3v2_4_tag_specific_symbol_off_id3v2_tag_specific_symbol"
      "Id3v2_4_tag_specific_symbol"
      (name sym_its) "check"
;;


(** {6 Querying} *)


let is_id3v2_3_tag_specific_symbol_off_id3v2_tag_specific_symbol = function
  | Id3v2_tag_specific_symbol_t.Id3v2_3_tag_specific_symbol _ -> true
  | _ -> false
;;

let is_id3v2_4_tag_specific_symbol_off_id3v2_tag_specific_symbol = function
  | Id3v2_tag_specific_symbol_t.Id3v2_4_tag_specific_symbol _ -> true
  | _ -> false
;;



(** created by ./generator id3v2_tag_specific implementation symbol at 17:43 6 Jun 2012. *)



