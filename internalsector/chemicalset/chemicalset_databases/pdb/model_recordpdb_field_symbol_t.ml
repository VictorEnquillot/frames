(* $Id: Exp $ *)

(** {3 A Model for the Fields of a Record.} *)

(** It provides the labels and the column limits for each field
    of a record for a given model of the PDB.*)

type model_fieldpdb_symbol = {
    field_label : field_label_pdb;         (* e.g. : Atom_alternate_location_id.*) 
    record_label : recordpdb_symbol;       (* e.g. : ATOM *)
    model_label : model_recordpdb_symbol;  (* e.g. : Usual *)
  }

and field_label_pdb = Fieldpdb_symbol_t.fieldpdb_symbol
(** The label of the field of record types used 
    to define each x_record information. 
    Example : Alternate Location.*) 

and recordpdb_symbol = Recordpdb_symbol_t.recordpdb_symbol

and model_recordpdb_symbol = Model_recordpdb_symbol_t.model_recordpdb_symbol

;;
(** A record model is a way to divide a record string of 80 characters into
    words corresponding to fields of the X_record type, where X is any of the
    Recordpdb_symbol_t.recordpdb_symbol constructor.

    Example : recordpdb_atom.

    There are several model for each record type.
    The [model_label] [string] is used to differentiate each of them.

    Example : Usual

    These models are stored in a register
  
    Register_pdb_v.model_recordpdb_by_model_recordpdb_symbol
   
    
*)

