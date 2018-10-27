(** {3 The functionalities for a Symbol Formula for a HET Record of a Pdb file.} *)

let nam_cod = "Het_fieldpdb_data_v"


let column_pair_of_het_fieldpdb_symbol = function
  | Het_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 7, Ordinal_p.make 7)
  | Het_fieldpdb_symbol_t.Het_id -> (Ordinal_p.make 8, Ordinal_p.make 10)
  | Het_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 11, Ordinal_p.make 12)
  | Het_fieldpdb_symbol_t.Het_chain_id -> (Ordinal_p.make 13, Ordinal_p.make 13)
  | Het_fieldpdb_symbol_t.Het_sequence_number -> (Ordinal_p.make 14, Ordinal_p.make 17)
  | Het_fieldpdb_symbol_t.Het_insertion_code -> (Ordinal_p.make 18, Ordinal_p.make 18)
  | Het_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 19, Ordinal_p.make 20)
  | Het_fieldpdb_symbol_t.Het_HETATM_record_number -> (Ordinal_p.make 21, Ordinal_p.make 25)
  | Het_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 26, Ordinal_p.make 30)
  | Het_fieldpdb_symbol_t.Het_description -> (Ordinal_p.make 31, Ordinal_p.make 70)
  | Het_fieldpdb_symbol_t.Empty_5 -> (Ordinal_p.make 71, Ordinal_p.make 80)
;;

let column_and_width_of_het_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_het_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_het_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_het_fieldpdb_symbol smb in
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

let het_chain_idpdb_of_het_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_het_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_het_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Het Hfs 18 May 2010. *)
