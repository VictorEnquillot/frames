(** {3 A Symbol for a Polypeptide.} *)

(** {6 Displaying.} *)

val name :
  Polypeptide_symbol_t.polypeptide_symbol ->
    string
;;

val print : Format.formatter ->
  Polypeptide_symbol_t.polypeptide_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Polypeptide_regular from Polypeptide.} *)

val polypeptide_regular_symbol_off_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Polypeptide_regular_symbol_t.polypeptide_regular_symbol
;;

(** {9 Extracting Acg from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Acg. *)

(** {9 Extracting Adh from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Adh. *)

(** {9 Extracting Agagag from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Agagag. *)

(** {9 Extracting Agc from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Agc. *)

(** {9 Extracting Agg from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Agg. *)

(** {9 Extracting Agp from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Agp. *)

(** {9 Extracting Gac from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Gac. *)

(** {9 Extracting Gap from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Gap. *)

(** {9 Extracting Ggg from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Ggg. *)

(** {9 Extracting Ggacgg from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Ggacgg. *)

(** {9 Extracting Ggaggg from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Ggaggg. *)

(** {9 Extracting Gagaga from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Gagaga. *)

(** {9 Extracting Mhb from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Mhb. *)

(** {9 Extracting Pac from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Pac. *)

(** {9 Extracting Pag from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Pag. *)

(** {9 Extracting Pgk from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Pgk. *)

(** {9 Extracting Pti from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Pti. *)

(** {9 Extracting Sac from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Sac. *)

(** {9 Extracting Tab from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Tab. *)

(** {9 Extracting Try from Polypeptide_regular from Polypeptide.} *)

(* No Extraction from doublet Try. *)

(** {9 Extracting String from Polypeptide_regular from Polypeptide.} *)

val polypeptide_regular_string_off_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    string
;;

(** {6 Extracting Polyproline from Polypeptide.} *)

val polyproline_symbol_off_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Polyproline_symbol_t.polyproline_symbol
;;

(** {9 Extracting Doublet_string_ordinal from Polyproline from Polypeptide.} *)

(* No Extraction from doublet doublet_string_ordinal. *)

(** {6 Extracting Polyglycine from Polypeptide.} *)

val polyglycine_symbol_off_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Polyglycine_symbol_t.polyglycine_symbol
;;

(** {9 Extracting Doublet_string_ordinal from Polyglycine from Polypeptide.} *)

(* No Extraction from doublet doublet_string_ordinal. *)

(** {6 Querying.} *)

(** {6 Querying Polypeptide_regular in Polypeptide.} *)

val is_polypeptide_regular_symbol_off_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
  bool
;;

(** {9 Querying Acg in Polypeptide_regular in Polypeptide.} *)

(* No Query from Acg 0. *)

(** {9 Querying Adh in Polypeptide_regular in Polypeptide.} *)

(* No Query from Adh 0. *)

(** {9 Querying Agagag in Polypeptide_regular in Polypeptide.} *)

(* No Query from Agagag 0. *)

(** {9 Querying Agc in Polypeptide_regular in Polypeptide.} *)

(* No Query from Agc 0. *)

(** {9 Querying Agg in Polypeptide_regular in Polypeptide.} *)

(* No Query from Agg 0. *)

(** {9 Querying Agp in Polypeptide_regular in Polypeptide.} *)

(* No Query from Agp 0. *)

(** {9 Querying Gac in Polypeptide_regular in Polypeptide.} *)

(* No Query from Gac 0. *)

(** {9 Querying Gap in Polypeptide_regular in Polypeptide.} *)

(* No Query from Gap 0. *)

(** {9 Querying Ggg in Polypeptide_regular in Polypeptide.} *)

(* No Query from Ggg 0. *)

(** {9 Querying Ggacgg in Polypeptide_regular in Polypeptide.} *)

(* No Query from Ggacgg 0. *)

(** {9 Querying Ggaggg in Polypeptide_regular in Polypeptide.} *)

(* No Query from Ggaggg 0. *)

(** {9 Querying Gagaga in Polypeptide_regular in Polypeptide.} *)

(* No Query from Gagaga 0. *)

(** {9 Querying Mhb in Polypeptide_regular in Polypeptide.} *)

(* No Query from Mhb 0. *)

(** {9 Querying Pac in Polypeptide_regular in Polypeptide.} *)

(* No Query from Pac 0. *)

(** {9 Querying Pag in Polypeptide_regular in Polypeptide.} *)

(* No Query from Pag 0. *)

(** {9 Querying Pgk in Polypeptide_regular in Polypeptide.} *)

(* No Query from Pgk 0. *)

(** {9 Querying Pti in Polypeptide_regular in Polypeptide.} *)

(* No Query from Pti 0. *)

(** {9 Querying Sac in Polypeptide_regular in Polypeptide.} *)

(* No Query from Sac 0. *)

(** {9 Querying Tab in Polypeptide_regular in Polypeptide.} *)

(* No Query from Tab 0. *)

(** {9 Querying Try in Polypeptide_regular in Polypeptide.} *)

(* No Query from Try 0. *)

(** {9 Querying String in Polypeptide_regular in Polypeptide.} *)

val is_polypeptide_regular_string_off_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
  bool
;;

(** {6 Querying Polyproline in Polypeptide.} *)

val is_polyproline_symbol_off_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
  bool
;;

(** {9 Querying Doublet_string_ordinal in Polyproline in Polypeptide.} *)

(* No Query from doublet_string_ordinal d. *)

(** {6 Querying Polyglycine in Polypeptide.} *)

val is_polyglycine_symbol_off_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
  bool
;;

(** {9 Querying Doublet_string_ordinal in Polyglycine in Polypeptide.} *)

(* No Query from doublet_string_ordinal d. *)

(** {6 Upgrading from Polypeptide_regular to Polypeptide.} *)

val polypeptide_symbol_of_polypeptide_regular_symbol :
  Polypeptide_regular_symbol_t.polypeptide_regular_symbol ->
    Polypeptide_symbol_t.polypeptide_symbol
;;

(** {9 Upgrading from Acg through Polypeptide_regular to Polypeptide.} *)

val acg : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Adh through Polypeptide_regular to Polypeptide.} *)

val adh : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Agagag through Polypeptide_regular to Polypeptide.} *)

val agagag : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Agc through Polypeptide_regular to Polypeptide.} *)

val agc : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Agg through Polypeptide_regular to Polypeptide.} *)

val agg : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Agp through Polypeptide_regular to Polypeptide.} *)

val agp : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Gac through Polypeptide_regular to Polypeptide.} *)

val gac : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Gap through Polypeptide_regular to Polypeptide.} *)

val gap : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Ggg through Polypeptide_regular to Polypeptide.} *)

val ggg : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Ggacgg through Polypeptide_regular to Polypeptide.} *)

val ggacgg : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Ggaggg through Polypeptide_regular to Polypeptide.} *)

val ggaggg : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Gagaga through Polypeptide_regular to Polypeptide.} *)

val gagaga : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Mhb through Polypeptide_regular to Polypeptide.} *)

val mhb : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Pac through Polypeptide_regular to Polypeptide.} *)

val pac : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Pag through Polypeptide_regular to Polypeptide.} *)

val pag : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Pgk through Polypeptide_regular to Polypeptide.} *)

val pgk : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Pti through Polypeptide_regular to Polypeptide.} *)

val pti : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Sac through Polypeptide_regular to Polypeptide.} *)

val sac : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Tab through Polypeptide_regular to Polypeptide.} *)

val tab : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from Try through Polypeptide_regular to Polypeptide.} *)

val tr_ : Polypeptide_symbol_t.polypeptide_symbol;;

(** {9 Upgrading from String through Polypeptide_regular to Polypeptide.} *)

val polypeptide_symbol_of_polypeptide_regular_string :
  string ->
    Polypeptide_symbol_t.polypeptide_symbol
;;

(** {6 Upgrading from Polyproline to Polypeptide.} *)

val polypeptide_symbol_of_polyproline_symbol :
  Polyproline_symbol_t.polyproline_symbol ->
    Polypeptide_symbol_t.polypeptide_symbol
;;

(** {9 Upgrading from Doublet_string_ordinal through Polyproline to Polypeptide.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** {6 Upgrading from Polyglycine to Polypeptide.} *)

val polypeptide_symbol_of_polyglycine_symbol :
  Polyglycine_symbol_t.polyglycine_symbol ->
    Polypeptide_symbol_t.polypeptide_symbol
;;

(** {9 Upgrading from Doublet_string_ordinal through Polyglycine to Polypeptide.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** created by ./do_entitysum_symbol_v_mli.sh polypeptide 12 January 2011. *)

