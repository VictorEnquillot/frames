(** {3 The functionalities for a Symbol Formula for a LINL Record of a Pdb file.} *)

let nam_cod = "Linl_fieldpdb_data_v"


let column_pair_of_linl_fieldpdb_symbol = function
;;

let column_and_width_of_linl_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_linl_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_linl_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_linl_fieldpdb_symbol smb in
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

let linl_chain_idpdb_of_linl_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_linl_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_idpdb_off_linl_recordpdb_string" str_cid col wid;
;;

(** created by ./do_some_fieldpdp_data_v Linl Lfs 18 May 2010. *)
