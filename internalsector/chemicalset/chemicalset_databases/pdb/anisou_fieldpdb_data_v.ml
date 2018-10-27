(** {3 The functionalities for a Symbol Formula for a ANISOU Record of a Pdb file.} *)

let nam_cod = "Anisou_fieldpdb_data_v"


let column_pair_of_anisou_fieldpdb_symbol = function
  | Anisou_fieldpdb_symbol_t.Anisou_atom_serial_number -> (Ordinal_p.make 7, Ordinal_p.make 11)
  | Anisou_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 12, Ordinal_p.make 12)
  | Anisou_fieldpdb_symbol_t.Anisou_atom_name -> (Ordinal_p.make 13, Ordinal_p.make 16)
  | Anisou_fieldpdb_symbol_t.Anisou_atom_alternate_location_id -> (Ordinal_p.make 17, Ordinal_p.make 17)
  | Anisou_fieldpdb_symbol_t.Anisou_residue_symbol -> (Ordinal_p.make 18, Ordinal_p.make 20)
  | Anisou_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 21, Ordinal_p.make 21)
  | Anisou_fieldpdb_symbol_t.Anisou_chain_id -> (Ordinal_p.make 22, Ordinal_p.make 22)
  | Anisou_fieldpdb_symbol_t.Anisou_residue_sequence_number -> (Ordinal_p.make 23, Ordinal_p.make 26)
  | Anisou_fieldpdb_symbol_t.Anisou_insertion_code -> (Ordinal_p.make 27, Ordinal_p.make 27)
  | Anisou_fieldpdb_symbol_t.Anisou_u_1_1 -> (Ordinal_p.make 29, Ordinal_p.make 35)
  | Anisou_fieldpdb_symbol_t.Anisou_u_2_2 -> (Ordinal_p.make 36, Ordinal_p.make 42)
  | Anisou_fieldpdb_symbol_t.Anisou_u_3_3 -> (Ordinal_p.make 43, Ordinal_p.make 39)
  | Anisou_fieldpdb_symbol_t.Anisou_u_1_2 -> (Ordinal_p.make 50, Ordinal_p.make 56)
  | Anisou_fieldpdb_symbol_t.Anisou_u_1_3 -> (Ordinal_p.make 57, Ordinal_p.make 63)
  | Anisou_fieldpdb_symbol_t.Anisou_u_2_3 -> (Ordinal_p.make 64, Ordinal_p.make 70)
  | Anisou_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 71, Ordinal_p.make 76)
  | Anisou_fieldpdb_symbol_t.Anisou_element_symbol -> (Ordinal_p.make 77, Ordinal_p.make 78)
  | Anisou_fieldpdb_symbol_t.Anisou_atom_charge -> (Ordinal_p.make 79, Ordinal_p.make 80)
;;

let column_and_width_of_anisou_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_anisou_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_anisou_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_anisou_fieldpdb_symbol smb in
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

let anisou_chain_idpdb_of_anisou_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_anisou_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_anisou_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Anisou Anfs 18 May 2010. *)
