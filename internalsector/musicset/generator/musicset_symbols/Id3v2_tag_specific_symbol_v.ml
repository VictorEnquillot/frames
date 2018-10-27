(** {3 Id3v2_tag_specific_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_tag_specific_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Id3v2_tag_specific_symbol_t.Id3v2_3_tag_specific_symbol sym_3ts ->
      Id3v2_3_tag_specific_symbol_v.name sym_3ts
  | Id3v2_tag_specific_symbol_t.Id3v2_4_tag_specific_symbol sym_4ts ->
      Id3v2_4_tag_specific_symbol_v.name sym_4ts
;;


(** {6 Extracting_topson} *)

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


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)

let is_id3v2_3_tag_specific_symbol_off_id3v2_tag_specific_symbol = function
  | Id3v2_tag_specific_symbol_t.Id3v2_3_tag_specific_symbol _ -> true
  | _ -> false
;;

let is_id3v2_4_tag_specific_symbol_off_id3v2_tag_specific_symbol = function
  | Id3v2_tag_specific_symbol_t.Id3v2_4_tag_specific_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)

let id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol sym_3ts = 
  Id3v2_tag_specific_symbol_t.Id3v2_3_tag_specific_symbol sym_3ts
;;

let id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol sym_4ts = 
  Id3v2_tag_specific_symbol_t.Id3v2_4_tag_specific_symbol sym_4ts
;;


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)


(** {6 Abbreviating_grandson} *)

let equa = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.equa;;

let ipls = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.ipls;;

let rvad = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.rvad;;

let tdat = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.tdat;;

let time = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.time;;

let tory = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.tory;;

let trda = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.trda;;

let tyer = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.tyer;;

let tsiz = id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol Id3v2_3_tag_specific_symbol_v.tsiz;;

let aspi = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.aspi;;

let equ2 = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.equ2;;

let rva2 = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.rva2;;

let seek = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.seek;;

let sign = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.sign;;

let tden = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tden;;

let tdor = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tdor;;

let tdrc = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tdrc;;

let tdrl = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tdrl;;

let tdtg = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tdtg;;

let tipl = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tipl;;

let tmcl = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tmcl;;

let tmoo = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tmoo;;

let tpro = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tpro;;

let tsoa = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tsoa;;

let tsop = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tsop;;

let tsot = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tsot;;

let tsst = id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol Id3v2_4_tag_specific_symbol_v.tsst;;


(** {6 Making} *)

let make nam s =
  try id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol
      (Id3v2_3_tag_specific_symbol_v.make nam s)
  with Failure "Not_Id3v2_3_tag_specific_symbol:Id3v2_3_tag_specific_symbol_v:make" ->
  try id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol
      (Id3v2_4_tag_specific_symbol_v.make nam s)
  with Failure "Not_Id3v2_4_tag_specific_symbol:Id3v2_4_tag_specific_symbol_v:make" ->
    failwith "Not_Id3v2_tag_specific_symbol:Id3v2_tag_specific_symbol_v:make"
;;


(** created by ./generator id3v2_tag_specific implementation symbol at 9:23 14 Jul 2012. *)



