(** {3 The functionalities for the Values for the fields of an ATOM Pdb record.} *)


let make str_rcp = {
  Atom_fieldpdb_values_t.atom_serial_number = 
  Atom_fieldpdb_data_v.atom_serial_number_off_recordpdb_string str_rcp;
  Atom_fieldpdb_values_t.atom_name = 
  Atom_fieldpdb_data_v.atom_name_off_recordpdb_string str_rcp;
  Atom_fieldpdb_values_t.atom_x = 
  Atom_fieldpdb_data_v.atom_x_off_recordpdb_string str_rcp;
  Atom_fieldpdb_values_t.atom_y = 
  Atom_fieldpdb_data_v.atom_y_off_recordpdb_string str_rcp;
  Atom_fieldpdb_values_t.atom_z = 
  Atom_fieldpdb_data_v.atom_z_off_recordpdb_string str_rcp;
  Atom_fieldpdb_values_t.atom_occupancy = 
  Atom_fieldpdb_data_v.atom_occupancy_off_recordpdb_string str_rcp;
  Atom_fieldpdb_values_t.atom_b_factor = 
  Atom_fieldpdb_data_v.atom_b_factor_off_recordpdb_string str_rcp;
  Atom_fieldpdb_values_t.atom_charge = 
  Atom_fieldpdb_data_v.atom_charge_off_recordpdb_string str_rcp;
}
;;
