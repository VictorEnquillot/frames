(** {3 The functionalities for a Symbol Formula for a HETATM Record of a Pdb file.} *)

let nam_cod = "Hetatm_fieldpdb_data_v"


let column_pair_of_hetatm_fieldpdb_symbol = function
  | Hetatm_fieldpdb_symbol_t.Hetatm_serial_number -> (Ordinal_p.make 7, Ordinal_p.make 11)
  | Hetatm_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 12, Ordinal_p.make 12)
  | Hetatm_fieldpdb_symbol_t.Hetatm_name -> (Ordinal_p.make 13, Ordinal_p.make 16)
  | Hetatm_fieldpdb_symbol_t.Hetatm_alternate_location_id -> (Ordinal_p.make 17, Ordinal_p.make 17)
  | Hetatm_fieldpdb_symbol_t.Hetatm_molecule_name -> (Ordinal_p.make 18, Ordinal_p.make 20)
  | Hetatm_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 21, Ordinal_p.make 21)
  | Hetatm_fieldpdb_symbol_t.Hetatm_chain_id -> (Ordinal_p.make 22, Ordinal_p.make 22)
  | Hetatm_fieldpdb_symbol_t.Hetatm_molecule_number -> (Ordinal_p.make 23, Ordinal_p.make 26)
  | Hetatm_fieldpdb_symbol_t.Hetatm_insertion_code -> (Ordinal_p.make 27, Ordinal_p.make 27)
  | Hetatm_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 28, Ordinal_p.make 30)
  | Hetatm_fieldpdb_symbol_t.Hetatm_x -> (Ordinal_p.make 31, Ordinal_p.make 38)
  | Hetatm_fieldpdb_symbol_t.Hetatm_y -> (Ordinal_p.make 39, Ordinal_p.make 46)
  | Hetatm_fieldpdb_symbol_t.Hetatm_z -> (Ordinal_p.make 47, Ordinal_p.make 54)
  | Hetatm_fieldpdb_symbol_t.Hetatm_occupancy -> (Ordinal_p.make 55, Ordinal_p.make 60)
  | Hetatm_fieldpdb_symbol_t.Hetatm_b_factor -> (Ordinal_p.make 61, Ordinal_p.make 66)
  | Hetatm_fieldpdb_symbol_t.Empty_4 -> (Ordinal_p.make 67, Ordinal_p.make 76)
  | Hetatm_fieldpdb_symbol_t.Hetatam_element_symbol -> (Ordinal_p.make 77, Ordinal_p.make 78)
  | Hetatm_fieldpdb_symbol_t.Hetatm_charge -> (Ordinal_p.make 79, Ordinal_p.make 80)
;;

let column_and_width_of_hetatm_fieldpdb_symbol smb =
  let (c1, c2) = column_pair_of_hetatm_fieldpdb_symbol smb in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_hetatm_fieldpdb_symbol smb =
  let (c1, w) = column_and_width_of_hetatm_fieldpdb_symbol smb in
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

let hetatm_chain_id_of_hetatm_fieldpdb_symbol_of_recordpdb_string smb str_rcp =
 let (col, wid) =
    column_and_width_of_hetatm_fieldpdb_symbol smb in
 let str_cid =
   String.sub str_rcp (Ordinal_p.int_decrement_of_ordinal col) wid in

  try Scanf.sscanf str_cid "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "chain_id_off_hetatm_recordpdb_string" str_cid col wid;
;;

let char_of_hetatm_fieldpdb_symbol_of_recordpdb_string sym_atf str_rcp =
  let (col, wid) =
    column_and_width_of_hetatm_fieldpdb_symbol sym_atf in
  Fieldpdb_tools_v.convert_char_field (col, wid) str_rcp 
;;

let float_of_hetatm_fieldpdb_symbol_of_recordpdb_string sym_atf str_rcp =
  let (col, wid) =
    column_and_width_of_hetatm_fieldpdb_symbol sym_atf in
  Fieldpdb_tools_v.convert_float_field (col, wid) str_rcp 
;;

let int_of_hetatm_fieldpdb_symbol_of_recordpdb_string sym_atf str_rcp =
  let (col, wid) =
    column_and_width_of_hetatm_fieldpdb_symbol sym_atf in
  Fieldpdb_tools_v.convert_int_field (col, wid) str_rcp 
;;

let string_of_hetatm_fieldpdb_symbol_of_recordpdb_string sym_atf str_rcp =
  let (col, wid) =
    column_and_width_of_hetatm_fieldpdb_symbol sym_atf in
  Fieldpdb_tools_v.convert_string_field (col, wid) str_rcp 
;;

(** {9 Fields.} *)

let hetatm_name_off_recordpdb_string str_rcp =
  string_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_name str_rcp
;;

let hetatm_molecule_name_off_recordpdb_string str_rcp =
  string_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_molecule_name str_rcp
;;

let hetatm_molecule_number_off_recordpdb_string str_rcp =
  int_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_molecule_number str_rcp
;;

let hetatm_serial_number_off_recordpdb_string str_rcp =
  int_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_serial_number str_rcp
;;

let hetatm_insertion_code_off_recordpdb_string str_rcp =
  char_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_insertion_code str_rcp
;;

let hetatm_alternate_location_id_off_recordpdb_string str_rcp =
  char_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_alternate_location_id str_rcp
;;

let hetatm_x_off_recordpdb_string str_rcp =
  float_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_x str_rcp
;;

let hetatm_y_off_recordpdb_string str_rcp =
  float_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_y str_rcp
;;

let hetatm_z_off_recordpdb_string str_rcp =
  float_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_z str_rcp
;;

let hetatm_occupancy_off_recordpdb_string str_rcp =
  float_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_occupancy str_rcp
;;

let hetatm_b_factor_off_recordpdb_string str_rcp =
  float_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_b_factor str_rcp
;;

let hetatm_charge_off_recordpdb_string str_rcp =
  string_of_hetatm_fieldpdb_symbol_of_recordpdb_string  
    Hetatm_fieldpdb_symbol_t.Hetatm_charge str_rcp
;;

(** created by ./do_some_fieldpdp_data_v Hetatm Hfs 18 May 2010. *)
