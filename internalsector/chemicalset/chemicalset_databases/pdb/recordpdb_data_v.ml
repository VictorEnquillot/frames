(** {3 The functionalities for a Data for a Record of the Pdb} *)


(** {6 Reading.} *)

let string_of_recordpdb_data dat_rcp =
  dat_rcp
;;

let recordpdb_symbol_off_recordpdb_data dat_rcp =
  let str = string_of_recordpdb_data dat_rcp in
  Recordpdb_symbol_v.make str
;;

