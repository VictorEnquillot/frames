(** {3 The Symbol functionalities to refer for a leftextended non-glycine Molecule_aminoacid.} *)

(** {6 Making.} *)

val make_of_count :
    Index_p.index ->
      Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol
;;

val make_of_count_of_molecule_aminoacid_fragmented_symbol :
    Index_p.index ->
      Molecule_aminoacid_symbol_t.molecule_aminoacid_fragmented_symbol ->
	Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol
;;

val make_of_count_of_molecule_aminoacid_regular_symbol :
    Index_p.index ->
      Molecule_aminoacid_symbol_t.molecule_aminoacid_regular_symbol ->
	Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol
;;
(** [g; ..;g; n] -> ([g; ..;g], n) 
    where g is aglycine and n any non glycine. *)

 val make_of_polyglycinefragmentedended_symbol_booted_repeated_list :
     (Molecule_aminoacid_symbol_t.molecule_aminoacid_segmented_symbol,
      Molecule_aminoacid_symbol_t.molecule_aminoacid_fragmented_symbol)
     Booted_repeated_list_t.booted_repeated_list ->
       Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol
;;

(** {6 Extracting.} *)

val molecule_aminoacid_fragmented_symbol_off_polypeptide_subunit_symbol :
    Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol ->
      Molecule_aminoacid_symbol_t.molecule_aminoacid_fragmented_symbol
;;

val glycine_count_of_polypeptide_subunit_symbol :
    Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol ->
      Index_p.index
;;

val buried_fragment_symbol_backbone_of_polypeptide_subunit_symbol :
    Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol ->
      Fragment_symbol_t.buried_fragment_symbol
;;

(** {6 Converting.} *)

val name :  
    Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol ->
      string
;;

val shortname :  
    Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol ->
      string
;;

val print : Format.formatter ->  
  Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol ->
    unit
;;
