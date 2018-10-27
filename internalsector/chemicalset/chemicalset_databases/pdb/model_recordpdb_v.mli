(* $id: Exp $ *)

val record_field_limits_pdb_of_model_fieldpdb_symbol : 
    Model_fieldpdb_symbol_t.model_fieldpdb_symbol ->
      Model_fieldpdb_t.record_field_limits_pdb   
;;
(** [let (i, j) = record_field_limits_pdb_of_record_field_pdb f m s;;]
    
    [s] is the [recordpdb_symbol] (Ex: ATOM).
    [m] is the [record_model_symbol_pdb] (Ex: Usual)
    [f] is the [record_field_symbol_pdb] (Ex: Atom_name)

    [i] and [j] are the column number limiting field [f] in model [m] for
    record of type [s].
    From 1 to 80. 
*)
