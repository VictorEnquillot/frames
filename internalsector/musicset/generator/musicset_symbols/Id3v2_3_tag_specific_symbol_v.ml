(** {3 Id3v2_3_tag_specific_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_3_tag_specific_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Id3v2_3_tag_specific_symbol_t.Equa -> "Equa"
  | Id3v2_3_tag_specific_symbol_t.Ipls -> "Ipls"
  | Id3v2_3_tag_specific_symbol_t.Rvad -> "Rvad"
  | Id3v2_3_tag_specific_symbol_t.Tdat -> "Tdat"
  | Id3v2_3_tag_specific_symbol_t.Time -> "Time"
  | Id3v2_3_tag_specific_symbol_t.Tory -> "Tory"
  | Id3v2_3_tag_specific_symbol_t.Trda -> "Trda"
  | Id3v2_3_tag_specific_symbol_t.Tyer -> "Tyer"
  | Id3v2_3_tag_specific_symbol_t.Tsiz -> "Tsiz"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let equa = Id3v2_3_tag_specific_symbol_t.Equa;;

let ipls = Id3v2_3_tag_specific_symbol_t.Ipls;;

let rvad = Id3v2_3_tag_specific_symbol_t.Rvad;;

let tdat = Id3v2_3_tag_specific_symbol_t.Tdat;;

let time = Id3v2_3_tag_specific_symbol_t.Time;;

let tory = Id3v2_3_tag_specific_symbol_t.Tory;;

let trda = Id3v2_3_tag_specific_symbol_t.Trda;;

let tyer = Id3v2_3_tag_specific_symbol_t.Tyer;;

let tsiz = Id3v2_3_tag_specific_symbol_t.Tsiz;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "equa" -> equa
  | "ipls" -> ipls
  | "rvad" -> rvad
  | "tdat" -> tdat
  | "time" -> time
  | "tory" -> tory
  | "trda" -> trda
  | "tyer" -> tyer
  | "tsiz" -> tsiz
  | _ ->
    failwith "Not_Id3v2_3_tag_specific_symbol:Id3v2_3_tag_specific_symbol_v:make"
;;


(** created by ./generator id3v2_3_tag_specific implementation symbol at 9:23 14 Jul 2012. *)



