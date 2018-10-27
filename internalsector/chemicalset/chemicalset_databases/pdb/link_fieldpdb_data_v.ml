(** {3 The functionalities for a Symbol Formula for a LINK Record of a Pdb file.} *)

let nam_cod = "Link_fieldpdb_data_v"


let column_pair_of_link_fieldpdb_symbol = function
  | Link_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 7, Ordinal_p.make 12)
  | Link_fieldpdb_symbol_t.Link_atom_name_1 -> (Ordinal_p.make 13, Ordinal_p.make 16)
  | Link_fieldpdb_symbol_t.Link_alternative_location_1 -> (Ordinal_p.make 17, Ordinal_p.make 17)
  | Link_fieldpdb_symbol_t.Link_residue_name_1 -> (Ordinal_p.make 18, Ordinal_p.make 20)
  | Link_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 21, Ordinal_p.make 21)
  | Link_fieldpdb_symbol_t.Link_chain_idpdb_1 -> (Ordinal_p.make 22, Ordinal_p.make 22)
  | Link_fieldpdb_symbol_t.Link_residue_sequence_number_1 -> (Ordinal_p.make 23, Ordinal_p.make 26)
  | Link_fieldpdb_symbol_t.Link_insertion_code_1 -> (Ordinal_p.make 27, Ordinal_p.make 27)
  | Link_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 28, Ordinal_p.make 42)
  | Link_fieldpdb_symbol_t.Link_atom_name_2 -> (Ordinal_p.make 43, Ordinal_p.make 46)
  | Link_fieldpdb_symbol_t.Link_alternative_location_2 -> (Ordinal_p.make 47, Ordinal_p.make 47)
  | Link_fieldpdb_symbol_t.Link_residue_name_2 -> (Ordinal_p.make 48, Ordinal_p.make 50)
  | Link_fieldpdb_symbol_t.Empty_5 -> (Ordinal_p.make 51, Ordinal_p.make 51)
  | Link_fieldpdb_symbol_t.Link_chain_idpdb_2 -> (Ordinal_p.make 52, Ordinal_p.make 52)
  | Link_fieldpdb_symbol_t.Link_residue_sequence_number_2 -> (Ordinal_p.make 53, Ordinal_p.make 56)
  | Link_fieldpdb_symbol_t.Link_insertion_code_2 -> (Ordinal_p.make 57, Ordinal_p.make 57)
  | Link_fieldpdb_symbol_t.Empty_8 -> (Ordinal_p.make 58, Ordinal_p.make 59)
  | Link_fieldpdb_symbol_t.Symmetry_operator_1 -> (Ordinal_p.make 60, Ordinal_p.make 65)
  | Link_fieldpdb_symbol_t.Empty_9 -> (Ordinal_p.make 66, Ordinal_p.make 66)
  | Link_fieldpdb_symbol_t.Symmetry_operator_2 -> (Ordinal_p.make 67, Ordinal_p.make 72)
  | Link_fieldpdb_symbol_t.Empty_10 -> (Ordinal_p.make 73, Ordinal_p.make 73)
  | Link_fieldpdb_symbol_t.Link_length -> (Ordinal_p.make 74, Ordinal_p.make 78)
  | Link_fieldpdb_symbol_t.Empty_11 -> (Ordinal_p.make 79, Ordinal_p.make 80)
;;

let column_and_width_of_link_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_link_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_link_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_link_fieldpdb_symbol smb in
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

let link_chain_idpdb_of_link_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_link_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_link_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Link Lfs 18 May 2010. *)
