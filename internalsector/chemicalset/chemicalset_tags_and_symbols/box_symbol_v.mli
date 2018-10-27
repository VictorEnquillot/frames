(** {3 A Symbol for a Box.} *)

(** {6 Displaying.} *)

val name :
  Box_symbol_t.box_symbol ->
    string
;;

val print : Format.formatter ->
  Box_symbol_t.box_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting String from Box.} *)

val box_string_off_box_symbol :
  Box_symbol_t.box_symbol ->
    string

;;
(** {6 Extracting Protein from Box.} *)

val protein_symbol_off_box_symbol :
  Box_symbol_t.box_symbol ->
    Protein_symbol_t.protein_symbol
;;

(** {9 Extracting Acg from Protein from Box.} *)

(* No Extraction from doublet Acg. *)

(** {9 Extracting Adh from Protein from Box.} *)

(* No Extraction from doublet Adh. *)

(** {9 Extracting Agagag from Protein from Box.} *)

(* No Extraction from doublet Agagag. *)

(** {9 Extracting Agc from Protein from Box.} *)

(* No Extraction from doublet Agc. *)

(** {9 Extracting Agg from Protein from Box.} *)

(* No Extraction from doublet Agg. *)

(** {9 Extracting Agp from Protein from Box.} *)

(* No Extraction from doublet Agp. *)

(** {9 Extracting Gac from Protein from Box.} *)

(* No Extraction from doublet Gac. *)

(** {9 Extracting Gap from Protein from Box.} *)

(* No Extraction from doublet Gap. *)

(** {9 Extracting Ggg from Protein from Box.} *)

(* No Extraction from doublet Ggg. *)

(** {9 Extracting Ggacgg from Protein from Box.} *)

(* No Extraction from doublet Ggacgg. *)

(** {9 Extracting Ggaggg from Protein from Box.} *)

(* No Extraction from doublet Ggaggg. *)

(** {9 Extracting Gagaga from Protein from Box.} *)

(* No Extraction from doublet Gagaga. *)

(** {9 Extracting Mhb from Protein from Box.} *)

(* No Extraction from doublet Mhb. *)

(** {9 Extracting Pac from Protein from Box.} *)

(* No Extraction from doublet Pac. *)

(** {9 Extracting Pag from Protein from Box.} *)

(* No Extraction from doublet Pag. *)

(** {9 Extracting Pgk from Protein from Box.} *)

(* No Extraction from doublet Pgk. *)

(** {9 Extracting Pti from Protein from Box.} *)

(* No Extraction from doublet Pti. *)

(** {9 Extracting Sac from Protein from Box.} *)

(* No Extraction from doublet Sac. *)

(** {9 Extracting Tab from Protein from Box.} *)

(* No Extraction from doublet Tab. *)

(** {9 Extracting Try from Protein from Box.} *)

(* No Extraction from doublet Try. *)

(** {9 Extracting String from Protein from Box.} *)

val protein_string_off_box_symbol :
  Box_symbol_t.box_symbol ->
    string
;;

(** {6 Querying.} *)

(** {6 Querying String in Box.} *)

val is_box_string_off_box_symbol :
  Box_symbol_t.box_symbol ->
    bool
;;

(** {6 Querying Protein in Box.} *)

val is_protein_symbol_off_box_symbol :
  Box_symbol_t.box_symbol ->
  bool
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

val is_protein_string_off_box_symbol :
  Box_symbol_t.box_symbol ->
  bool
;;

(** {6 Upgrading from String to Box.} *)

val make :
  string ->
    Box_symbol_t.box_symbol
;;

val box_symbol_of_box_string :
  string ->
    Box_symbol_t.box_symbol
;;

(** {6 Upgrading from Protein to Box.} *)

val box_symbol_of_protein_symbol :
  Protein_symbol_t.protein_symbol ->
    Box_symbol_t.box_symbol
;;

(** {9 Upgrading from Acg through Protein to Box.} *)

val acg : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Adh through Protein to Box.} *)

val adh : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Agagag through Protein to Box.} *)

val agagag : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Agc through Protein to Box.} *)

val agc : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Agg through Protein to Box.} *)

val agg : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Agp through Protein to Box.} *)

val agp : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Gac through Protein to Box.} *)

val gac : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Gap through Protein to Box.} *)

val gap : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Ggg through Protein to Box.} *)

val ggg : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Ggacgg through Protein to Box.} *)

val ggacgg : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Ggaggg through Protein to Box.} *)

val ggaggg : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Gagaga through Protein to Box.} *)

val gagaga : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Mhb through Protein to Box.} *)

val mhb : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Pac through Protein to Box.} *)

val pac : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Pag through Protein to Box.} *)

val pag : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Pgk through Protein to Box.} *)

val pgk : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Pti through Protein to Box.} *)

val pti : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Sac through Protein to Box.} *)

val sac : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Tab through Protein to Box.} *)

val tab : Box_symbol_t.box_symbol;;

(** {9 Upgrading from Try through Protein to Box.} *)

val tr_ : Box_symbol_t.box_symbol;;

(** {9 Upgrading from String through Protein to Box.} *)

val box_symbol_of_protein_string :
  string ->
    Box_symbol_t.box_symbol
;;

(** created by ./do_entitysum_symbol_v_mli.sh box 12 January 2011. *)

