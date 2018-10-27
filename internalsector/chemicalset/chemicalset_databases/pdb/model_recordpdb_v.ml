(* $id: Exp $ *)

let nam_cod = "Model_fieldpdb_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;

(** {9 Field limits Usual Model for ATOM Record.} *)

let print_error_label lbl str her =
  Format.fprintf Format.err_formatter 
  "@.@[<hov>%s.%s: --- Fatal Error ---@.\
   Field label >%a< does not belong to an >%s< record.@]@."
   nam_cod her Fieldpdb_symbol_v.print lbl str;
;;

let record_field_limits_pdb_of_usual_record_field_atom_pdb = function
  | Fieldpdb_symbol_t.Record_label -> (1, 6)
  | Fieldpdb_symbol_t.Atom_serial_number -> (7, 11)
  | Fieldpdb_symbol_t.Empty_1 -> (12, 12)
  | Fieldpdb_symbol_t.H_index_pdb -> (13, 13)
  | Fieldpdb_symbol_t.Atom_name -> (14, 14)
  | Fieldpdb_symbol_t.Remote_index -> (15, 15)
  | Fieldpdb_symbol_t.Branch_index -> (16, 16)
  | Fieldpdb_symbol_t.Atom_alternate_location_id -> (17, 17)
  | Fieldpdb_symbol_t.Aminoacid_symbol_pdb -> (18, 20)
  | Fieldpdb_symbol_t.Empty_2 -> (21, 21)
  | Fieldpdb_symbol_t.Chain_index -> (22, 22)
  | Fieldpdb_symbol_t.Canonical_residue_number -> (23, 26)
  | Fieldpdb_symbol_t.Insertion_index_pdb -> (27, 27)
  | Fieldpdb_symbol_t.Empty_3 -> (28, 30)
  | Fieldpdb_symbol_t.X -> (31, 38)
  | Fieldpdb_symbol_t.Y -> (39, 46)
  | Fieldpdb_symbol_t.Z -> (47, 54)
  | Fieldpdb_symbol_t.Empty_4 -> (55, 56)
  | Fieldpdb_symbol_t.Alternate_location_weight -> (57, 60)
  | Fieldpdb_symbol_t.Empty_5 -> (61, 61)
  | Fieldpdb_symbol_t.B_factor -> (62, 66)
  | Fieldpdb_symbol_t.Empty_6 -> (67, 72)
  | Fieldpdb_symbol_t.Segment_index -> (73, 76)
  | Fieldpdb_symbol_t.Element_symbol -> (77, 78)
  | Fieldpdb_symbol_t.Atom_charge_pdb -> (79, 80)
  | lbl -> begin print_error_label lbl "ATOM" 
	"record_field_limits_pdb_of_usual_record_field_atom_pdb"; 
      assert false end

;;

(** {9 Field limits Usual Model for HEADER Record.} *)

let record_field_limits_pdb_of_usual_record_field_header_pdb = function
  | Fieldpdb_symbol_t.Record_label -> (1, 6)
  | Fieldpdb_symbol_t.Empty_1 -> (7, 10)
  | Fieldpdb_symbol_t.Chemical_species -> (11, 50)
  | Fieldpdb_symbol_t.Date -> (51, 59)
  | Fieldpdb_symbol_t.Empty_2 -> (60, 62)
  | Fieldpdb_symbol_t.Id_pdb -> (63, 66)
  | Fieldpdb_symbol_t.Empty_4 -> (67, 71)
  | Fieldpdb_symbol_t.Any -> (72, 80)
  | lbl -> begin print_error_label lbl "HEADER" 
	"record_field_limits_pdb_of_usual_record_field_atom_pdb"; 
      assert false end
;;

(** {9 Field limits Usual Model for SEQRES Record.} *)

let record_field_limits_pdb_of_usual_record_field_seqres_pdb = function
  | Fieldpdb_symbol_t.Record_label -> (1, 6)
  | Fieldpdb_symbol_t.Empty_1 -> (7, 8)
  | Fieldpdb_symbol_t.Record_number -> (9, 10)
  | Fieldpdb_symbol_t.Chain_index -> (12, 12)
  | Fieldpdb_symbol_t.Empty_2 -> (13, 13)
  | Fieldpdb_symbol_t.Seqres_sequence_length -> (14, 17)
  | Fieldpdb_symbol_t.Empty_3 -> (18, 19)
  | Fieldpdb_symbol_t.Seqres_thirteen_names -> (20, 70)
  | Fieldpdb_symbol_t.Any -> (71, 80)
  | lbl -> begin print_error_label lbl "SEQRES" 
	"record_field_limits_pdb_of_usual_record_field_atom_pdb"; 
      assert false end
;;

let field_label_of_model_fieldpdb_symbol mdl_fld_lbl =
  mdl_fld_lbl.Model_fieldpdb_symbol_t.field_label
;;

let record_label_of_model_fieldpdb_symbol mdl_fld_lbl =
  mdl_fld_lbl.Model_fieldpdb_symbol_t.record_label
;;

let model_label_of_model_fieldpdb_symbol mdl_fld_lbl =
  mdl_fld_lbl.Model_fieldpdb_symbol_t.model_label
;;

let record_field_limits_pdb_of_model_fieldpdb_symbol mdl_fld_lbl =
  let fld_lbl = field_label_of_model_fieldpdb_symbol mdl_fld_lbl in
  let rcd_lbl = record_label_of_model_fieldpdb_symbol mdl_fld_lbl in
  let mdl_lbl = model_label_of_model_fieldpdb_symbol mdl_fld_lbl in

match (mdl_lbl, rcd_lbl) with
  | (Model_recordpdb_symbol_t.Usual, Recordpdb_symbol_t.ATOM) -> 
      record_field_limits_pdb_of_usual_record_field_atom_pdb fld_lbl

  | (Model_recordpdb_symbol_t.Usual, Recordpdb_symbol_t.HEADER) -> 
      record_field_limits_pdb_of_usual_record_field_header_pdb fld_lbl

  | (Model_recordpdb_symbol_t.Usual, Recordpdb_symbol_t.SEQRES) -> 
      record_field_limits_pdb_of_usual_record_field_seqres_pdb fld_lbl

  | _ -> begin
    Format.fprintf (Format.err_formatter) 
	"@.@[<hov>%s.record_field_limits_pdb_of_usual_record_field_atom_pdb: --- Fatal Error ---@.\
   invalid (model, record) label coupl >%a, %a<@]@."
   nam_cod 
   Model_recordpdb_symbol_v.print mdl_lbl 
   Recordpdb_symbol_v.print rcd_lbl;
   assert false;
  end

;;
