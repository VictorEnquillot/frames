(** {3 A Symbol for a Box.} *)

let nam_mod = "Box_symbol_v";;

(** {6 Modules.} *)

module Bxs_t = Box_symbol_t
module Prs_t = Protein_symbol_t
module Prs_v = Protein_symbol_v

(** {6 Displaying.} *)

let name = function
  | Bxs_t.String str -> Format.sprintf "%s" str
  | Bxs_t.Protein_symbol smb_prn -> 
      Prs_v.name smb_prn
;;

let print ppf = function
  | Bxs_t.String str -> Format.fprintf ppf "%s" str
  | Bxs_t.Protein_symbol smb_prn -> 
      Prs_v.print ppf smb_prn
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found box_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting String from Box.} *)

let box_string_off_box_symbol = function
  | Bxs_t.String s -> s
  | s ->  print_fatal_error
      "string_symbol_off_box_symbol"
      "String_symbol" (name s)
;;

(** {6 Extracting Protein from Box.} *)

let protein_symbol_off_box_symbol = function
  | Bxs_t.Protein_symbol smb_prn -> smb_prn
  | s ->  print_fatal_error
      "protein_symbol_off_box_symbol"
      "Protein_symbol" (name s)
;;

(** {9 Extracting Acg from Protein from Box.} *)

(* No Extraction from Acg 0. *)

(** {9 Extracting Adh from Protein from Box.} *)

(* No Extraction from Adh 0. *)

(** {9 Extracting Agagag from Protein from Box.} *)

(* No Extraction from Agagag 0. *)

(** {9 Extracting Agc from Protein from Box.} *)

(* No Extraction from Agc 0. *)

(** {9 Extracting Agg from Protein from Box.} *)

(* No Extraction from Agg 0. *)

(** {9 Extracting Agp from Protein from Box.} *)

(* No Extraction from Agp 0. *)

(** {9 Extracting Gac from Protein from Box.} *)

(* No Extraction from Gac 0. *)

(** {9 Extracting Gap from Protein from Box.} *)

(* No Extraction from Gap 0. *)

(** {9 Extracting Ggg from Protein from Box.} *)

(* No Extraction from Ggg 0. *)

(** {9 Extracting Ggacgg from Protein from Box.} *)

(* No Extraction from Ggacgg 0. *)

(** {9 Extracting Ggaggg from Protein from Box.} *)

(* No Extraction from Ggaggg 0. *)

(** {9 Extracting Gagaga from Protein from Box.} *)

(* No Extraction from Gagaga 0. *)

(** {9 Extracting Mhb from Protein from Box.} *)

(* No Extraction from Mhb 0. *)

(** {9 Extracting Pac from Protein from Box.} *)

(* No Extraction from Pac 0. *)

(** {9 Extracting Pag from Protein from Box.} *)

(* No Extraction from Pag 0. *)

(** {9 Extracting Pgk from Protein from Box.} *)

(* No Extraction from Pgk 0. *)

(** {9 Extracting Pti from Protein from Box.} *)

(* No Extraction from Pti 0. *)

(** {9 Extracting Sac from Protein from Box.} *)

(* No Extraction from Sac 0. *)

(** {9 Extracting Tab from Protein from Box.} *)

(* No Extraction from Tab 0. *)

(** {9 Extracting Try from Protein from Box.} *)

(* No Extraction from Try 0. *)

(** {9 Extracting String from Protein from Box.} *)

let protein_string_off_box_symbol smb_box =
  let smb_prn = protein_symbol_off_box_symbol smb_box in
    Prs_v.protein_string_off_protein_symbol smb_prn
;;

(** {6 Querying.} *)

(** {6 Querying String in Box.} *)

let is_box_string_off_box_symbol = function
  | Bxs_t.String _ -> true
  | _ -> false
;;

(** {6 Querying Protein in Box.} *)

let is_protein_symbol_off_box_symbol = function
  | Bxs_t.Protein_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Acg in Protein in Box.} *)

(* No Query from Acg 0. *)


(** {9 Querying Adh in Protein in Box.} *)

(* No Query from Adh 0. *)


(** {9 Querying Agagag in Protein in Box.} *)

(* No Query from Agagag 0. *)


(** {9 Querying Agc in Protein in Box.} *)

(* No Query from Agc 0. *)


(** {9 Querying Agg in Protein in Box.} *)

(* No Query from Agg 0. *)


(** {9 Querying Agp in Protein in Box.} *)

(* No Query from Agp 0. *)


(** {9 Querying Gac in Protein in Box.} *)

(* No Query from Gac 0. *)


(** {9 Querying Gap in Protein in Box.} *)

(* No Query from Gap 0. *)


(** {9 Querying Ggg in Protein in Box.} *)

(* No Query from Ggg 0. *)


(** {9 Querying Ggacgg in Protein in Box.} *)

(* No Query from Ggacgg 0. *)


(** {9 Querying Ggaggg in Protein in Box.} *)

(* No Query from Ggaggg 0. *)


(** {9 Querying Gagaga in Protein in Box.} *)

(* No Query from Gagaga 0. *)


(** {9 Querying Mhb in Protein in Box.} *)

(* No Query from Mhb 0. *)


(** {9 Querying Pac in Protein in Box.} *)

(* No Query from Pac 0. *)


(** {9 Querying Pag in Protein in Box.} *)

(* No Query from Pag 0. *)


(** {9 Querying Pgk in Protein in Box.} *)

(* No Query from Pgk 0. *)


(** {9 Querying Pti in Protein in Box.} *)

(* No Query from Pti 0. *)


(** {9 Querying Sac in Protein in Box.} *)

(* No Query from Sac 0. *)


(** {9 Querying Tab in Protein in Box.} *)

(* No Query from Tab 0. *)


(** {9 Querying Try in Protein in Box.} *)

(* No Query from Try 0. *)


(** {9 Querying String in Protein in Box.} *)

let is_protein_string_off_box_symbol smb_box =
  if not (is_protein_symbol_off_box_symbol smb_box)
  then false
  else
    begin
      let smb_prn = protein_symbol_off_box_symbol smb_box in
      Prs_v.is_protein_string_off_protein_symbol smb_prn
    end
;;

(** {6 Upgrading from String to Box.} *)

let make s =
  Bxs_t.String s
;;

let box_symbol_of_box_string s =
  Bxs_t.String s
;;

(** {6 Upgrading from Protein to Box.} *)

let box_symbol_of_protein_symbol smb_prn =
  Bxs_t.Protein_symbol smb_prn
;;

(** {9 Upgrading from Acg through Protein to Box.} *)

let acg = box_symbol_of_protein_symbol Prs_t.Acg;;

(** {9 Upgrading from Adh through Protein to Box.} *)

let adh = box_symbol_of_protein_symbol Prs_t.Adh;;

(** {9 Upgrading from Agagag through Protein to Box.} *)

let agagag = box_symbol_of_protein_symbol Prs_t.Agagag;;

(** {9 Upgrading from Agc through Protein to Box.} *)

let agc = box_symbol_of_protein_symbol Prs_t.Agc;;

(** {9 Upgrading from Agg through Protein to Box.} *)

let agg = box_symbol_of_protein_symbol Prs_t.Agg;;

(** {9 Upgrading from Agp through Protein to Box.} *)

let agp = box_symbol_of_protein_symbol Prs_t.Agp;;

(** {9 Upgrading from Gac through Protein to Box.} *)

let gac = box_symbol_of_protein_symbol Prs_t.Gac;;

(** {9 Upgrading from Gap through Protein to Box.} *)

let gap = box_symbol_of_protein_symbol Prs_t.Gap;;

(** {9 Upgrading from Ggg through Protein to Box.} *)

let ggg = box_symbol_of_protein_symbol Prs_t.Ggg;;

(** {9 Upgrading from Ggacgg through Protein to Box.} *)

let ggacgg = box_symbol_of_protein_symbol Prs_t.Ggacgg;;

(** {9 Upgrading from Ggaggg through Protein to Box.} *)

let ggaggg = box_symbol_of_protein_symbol Prs_t.Ggaggg;;

(** {9 Upgrading from Gagaga through Protein to Box.} *)

let gagaga = box_symbol_of_protein_symbol Prs_t.Gagaga;;

(** {9 Upgrading from Mhb through Protein to Box.} *)

let mhb = box_symbol_of_protein_symbol Prs_t.Mhb;;

(** {9 Upgrading from Pac through Protein to Box.} *)

let pac = box_symbol_of_protein_symbol Prs_t.Pac;;

(** {9 Upgrading from Pag through Protein to Box.} *)

let pag = box_symbol_of_protein_symbol Prs_t.Pag;;

(** {9 Upgrading from Pgk through Protein to Box.} *)

let pgk = box_symbol_of_protein_symbol Prs_t.Pgk;;

(** {9 Upgrading from Pti through Protein to Box.} *)

let pti = box_symbol_of_protein_symbol Prs_t.Pti;;

(** {9 Upgrading from Sac through Protein to Box.} *)

let sac = box_symbol_of_protein_symbol Prs_t.Sac;;

(** {9 Upgrading from Tab through Protein to Box.} *)

let tab = box_symbol_of_protein_symbol Prs_t.Tab;;

(** {9 Upgrading from Try through Protein to Box.} *)

let tr_ = box_symbol_of_protein_symbol Prs_t.Try;;

(** {9 Upgrading from String through Protein to Box.} *)

let box_symbol_of_protein_string s =
  let smb_prn = Prs_v.protein_symbol_of_protein_string s in
  box_symbol_of_protein_symbol smb_prn
;;

(** created by ./do_entitysum_symbol_v_ml.sh box 12 January 2011. *)

