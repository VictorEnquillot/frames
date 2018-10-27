(** {3 The functionalities for a Polypeptide_sequence.} *)

let nam_cod = "Polypeptide_sequence_v";;

let make sym_plp =
  Polypeptide_sequence_provider_v.provide sym_plp
;;

let glycine_nterminals_off_polypeptide_sequence seq_plp =
(*  *)
  let (seq_ntl, _) = 
    List_v.split_left_included_of_predicate_of_list 
      Molecule_aminoacid_symbol_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol 
      seq_plp
  in
  seq_ntl
;;

let glycine_nterminals_remainder_off_polypeptide_sequence seq_plp =
  let (_, seq_rem) = 
    List_v.split_left_included_of_predicate_of_list 
      Molecule_aminoacid_symbol_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol 
      seq_plp
  in
  seq_rem
;;

let make_of_count_of_molecule_aminoacid_fragmented_symbol cnt sym_maf =
  let sym_gly = Molecule_aminoacid_symbol_v.glycine in
  Booted_repeated_list_v.make_of_extension_of_count_of_boot sym_gly cnt sym_maf  
;;

let make_of_polyglycinefragmentedended_symbol_booted_repeated_list sym_brl =
(* (g;g;..;g], f) -> (n, f) *)

    let sym_amf = Booted_repeated_list_v.boot_part_off_booted_repeated_list sym_brl in
    let cnt_gly = Booted_repeated_list_v.count sym_brl in 
    make_of_count_of_molecule_aminoacid_fragmented_symbol cnt_gly sym_amf
;;

let reduced_embedded_sequence_off_polypeptide_sequence seq_plp =
(* starts from first embedded fragmented. excludes cterminal glycines if any. *)
  let seq_rem =
    glycine_nterminals_remainder_off_polypeptide_sequence 
      seq_plp in
  let rev_rem = List.rev seq_rem in
  let (_, seq_emb) = 
    List_v.split_right_included_of_predicate_of_list 
      Molecule_aminoacid_symbol_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol 
      rev_rem
  in
  List.rev seq_emb
;;

let nterminal_molecule_aminoacid_symbol_off_polypeptide_sequence seq_plp =
  List.hd seq_plp
;;
(*
let nterminal_molecule_aminoacid_symbol_off_polypeptide_regular_symbol sym_plr =
  let sym_plp = Polypeptide_symbol_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr in
  let seq_plp = make sym_plp in
  List.hd seq_plp
;;
*)

let nterminal_molecule_aminoacid_symbol_off_polypeptide_symbol sym_plp =
  let seq_plp = make sym_plp in
  List.hd seq_plp
;;

let nterminal_molecule_aminoacid_symbol_remainder_list_off_polypeptide_sequence seq_plp =
  List.tl seq_plp
;;

let largest_embedded_sequence_off_polypeptide_sequence seq_plp =
(* starts from first embedded (even glycine). *) 
(* excludes cterminal glycines if any. *)
  let seq_rem =
    nterminal_molecule_aminoacid_symbol_remainder_list_off_polypeptide_sequence 
      seq_plp in
  let rev_rem = List.rev seq_rem in
  let (_, seq_emb) = 
    List_v.split_right_included_of_predicate_of_list 
      Molecule_aminoacid_symbol_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol 
      rev_rem
  in
  List.rev seq_emb
;;

let largest_embedded_sequence_of_polypeptide_symbol sym_plp =
(* contains glycines *)
  let seq_plp = make sym_plp in
  largest_embedded_sequence_off_polypeptide_sequence seq_plp
;;

let cterminal_glycines_off_polypeptide_sequence seq_plp =
  let seq_rev = List.rev seq_plp in
  let (seq_ctl, _) = 
    List_v.split_right_included_of_predicate_of_list 
      Molecule_aminoacid_symbol_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol 
      seq_rev
  in
  List.rev seq_ctl
;;

let cterminal_glycines_off_polypeptide_symbol sym_plp =
  let seq_plp = make sym_plp in
  cterminal_glycines_off_polypeptide_sequence seq_plp
;;

(** {6 Leftextended sequence or Fragmented_sequence} *)

let molecule_aminoacid_symbol_list_list_off_largest_embedded_sequence seq_lem =
  (* from largest_embedded_sequence where *)
  (*      first aminoacid may be a glycine *) 
  (*      last aminoacid is fragmented *) 
  (* cluster polyglycine with following fragment_aminoacid as sublists of sequence *)
  (* [g;g;g;f;g;f] -> [ [[g;g;g;f];[g;f]                                           *)

    List_v.burst_left_included_of_predicate_of_list  
      Molecule_aminoacid_symbol_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol 
      seq_lem
;;

let aminoacid_segmented_fragmented_booted_repeated_list_list_off_largest_embedded_sequence seq_lem =

  let sym_ama_ll =
    molecule_aminoacid_symbol_list_list_off_largest_embedded_sequence
      seq_lem in
  
  let sym_ama_bol = List.map Booted_repeated_list_v.make_of_repeated_list sym_ama_ll in

  List.map 
    (Booted_repeated_list_v.map 
       Molecule_aminoacid_symbol_v.molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol 
       Molecule_aminoacid_symbol_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol 
    )
    sym_ama_bol 
;;

let buried_polypeptide_subunit_symbol_list_off_largest_embedded_sequence seq_lem =
  (* [g;g;g;f] -> (3, f) *)

  let sym_bol =
    aminoacid_segmented_fragmented_booted_repeated_list_list_off_largest_embedded_sequence 
      seq_lem in

  List.map  
    make_of_polyglycinefragmentedended_symbol_booted_repeated_list
    sym_bol
;;

let buried_polypeptide_subunit_symbol_list_of_polypeptide_symbol sym_plp =
  (* [nter;g;g;g;f;g;f;g;g;cter] -> [(3,f);(1;f)]*)

  let seq_lem = 
    largest_embedded_sequence_of_polypeptide_symbol sym_plp in
  buried_polypeptide_subunit_symbol_list_off_largest_embedded_sequence seq_lem 
;;

(** {6 Converting.} *)

let name seq_plp =
  let sym_amo_l = List.map 
      Molecule_aminoacid_symbol_v.molecule_aminoacid_olc_symbol_off_molecule_aminoacid_symbol
      seq_plp in
  List_v.name Molecule_aminoacid_olc_symbol_v.name sym_amo_l
;;

let print ppf seq_plp =
  List_v.print Molecule_aminoacid_symbol_v.print ppf seq_plp
;;
