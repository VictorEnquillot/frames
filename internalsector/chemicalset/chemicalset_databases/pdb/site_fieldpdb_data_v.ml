(** {3 The functionalities for a Symbol Formula for a SITE Record of a Pdb file.} *)

let nam_cod = "Site_fieldpdb_data_v"


let column_pair_of_site_fieldpdb_symbol = function
  | Site_fieldpdb_symbol_t.Site_sequence_number -> (Ordinal_p.make 8, Ordinal_p.make 10)
  | Site_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 11, Ordinal_p.make 11)
  | Site_fieldpdb_symbol_t.Site_name -> (Ordinal_p.make 12, Ordinal_p.make 14)
  | Site_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 15, Ordinal_p.make 15)
  | Site_fieldpdb_symbol_t.Site_residue_count -> (Ordinal_p.make 16, Ordinal_p.make 17)
  | Site_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 18, Ordinal_p.make 18)
  | Site_fieldpdb_symbol_t.Site_first_residue_name -> (Ordinal_p.make 19, Ordinal_p.make 21)
  | Site_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 22, Ordinal_p.make 22)
  | Site_fieldpdb_symbol_t.Site_first_residue_chain_id -> (Ordinal_p.make 23, Ordinal_p.make 23)
  | Site_fieldpdb_symbol_t.Site_first_residue_sequence_number -> (Ordinal_p.make 24, Ordinal_p.make 27)
  | Site_fieldpdb_symbol_t.Site_first_residue_insertion_code -> (Ordinal_p.make 28, Ordinal_p.make 28)
  | Site_fieldpdb_symbol_t.Empty_5 -> (Ordinal_p.make 29, Ordinal_p.make 29)
  | Site_fieldpdb_symbol_t.Site_second_residue_name -> (Ordinal_p.make 30, Ordinal_p.make 32)
  | Site_fieldpdb_symbol_t.Empty_6 -> (Ordinal_p.make 33, Ordinal_p.make 33)
  | Site_fieldpdb_symbol_t.Site_second_residue_chain_id -> (Ordinal_p.make 34, Ordinal_p.make 34)
  | Site_fieldpdb_symbol_t.Site_second_residue_sequence_number -> (Ordinal_p.make 35, Ordinal_p.make 38)
  | Site_fieldpdb_symbol_t.Site_second_residue_insertion_code -> (Ordinal_p.make 39, Ordinal_p.make 39)
  | Site_fieldpdb_symbol_t.Empty_7 -> (Ordinal_p.make 40, Ordinal_p.make 40)
  | Site_fieldpdb_symbol_t.Site_third_residue_name -> (Ordinal_p.make 41, Ordinal_p.make 43)
  | Site_fieldpdb_symbol_t.Empty_8 -> (Ordinal_p.make 44, Ordinal_p.make 44)
  | Site_fieldpdb_symbol_t.Site_third_residue_chain_id -> (Ordinal_p.make 45, Ordinal_p.make 45)
  | Site_fieldpdb_symbol_t.Site_third_residue_sequence_number -> (Ordinal_p.make 46, Ordinal_p.make 49)
  | Site_fieldpdb_symbol_t.Site_third_residue_insertion_code -> (Ordinal_p.make 50, Ordinal_p.make 50)
  | Site_fieldpdb_symbol_t.Empty_9 -> (Ordinal_p.make 51, Ordinal_p.make 51)
  | Site_fieldpdb_symbol_t.Site_fourth_residue_name -> (Ordinal_p.make 52, Ordinal_p.make 54)
  | Site_fieldpdb_symbol_t.Empty_10 -> (Ordinal_p.make 55, Ordinal_p.make 55)
  | Site_fieldpdb_symbol_t.Site_fourth_residue_chain_id -> (Ordinal_p.make 56, Ordinal_p.make 56)
  | Site_fieldpdb_symbol_t.Site_fourth_residue_sequence_number -> (Ordinal_p.make 57, Ordinal_p.make 60)
  | Site_fieldpdb_symbol_t.Site_fourth_residue_insertion_code -> (Ordinal_p.make 61, Ordinal_p.make 61)
  | Site_fieldpdb_symbol_t.Empty_11 -> (Ordinal_p.make 62, Ordinal_p.make 80)
;;

let column_and_width_of_site_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_site_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_site_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_site_fieldpdb_symbol smb in
  (c1, w, smb)
;;

let print_fatal_error nam_cod nam fld c w =
      Format.fprintf
	Format.err_formatter
	"@.@[<hov>%s.%s: --- Fatal Error ---@.\
        expecting data from field >%s< at column %i of %i-digits wide.@.\
        found End_of_file.@.\
        cure : check fields width@]@."
	nam_cod nam fld (Ordinal_p.int_of_ordinal c) w;
        assert false;
;;

let site_chain_idpdb_of_site_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_site_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_site_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Site Sifs 18 May 2010. *)
