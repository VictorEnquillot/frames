(* $Id Exp $ *)

let nam_cod = "Model_fieldpdb_symbol_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;

let make mdl_lbl rcd_lbl fld_lbl = {
  Model_fieldpdb_symbol_t.field_label = fld_lbl;
  Model_fieldpdb_symbol_t.record_label = rcd_lbl;
  Model_fieldpdb_symbol_t.model_label = mdl_lbl;
}
;;

let print ppf mdl_fld_lbl =
  let fld_lbl = mdl_fld_lbl.Model_fieldpdb_symbol_t.field_label in
  let rcd_lbl = mdl_fld_lbl.Model_fieldpdb_symbol_t.record_label in
  let mdl_lbl = mdl_fld_lbl.Model_fieldpdb_symbol_t.model_label in

  Format.fprintf ppf
  "@[<hv>\
  {@[<hv>\
      @[<hv>model =@ %a;@]@ \
      @[<hv>record =@ %a;@]@ \
      @[<hv>field =@ %a;@]@ \
      @]@,\
    }@]"

  Model_recordpdb_symbol_v.print mdl_lbl
  Recordpdb_symbol_v.print rcd_lbl
  Fieldpdb_symbol_v.print fld_lbl
;;
