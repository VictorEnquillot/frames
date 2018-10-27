(* $Id: Exp $ *)

let nam_cod = "Model_recordpdb_symbol_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;

let string_of_model_recordpdb_symbol = function
  | Model_recordpdb_symbol_t.Usual -> "Usual"
;;

let print ppf lbl =
  Format.fprintf ppf "%s" (string_of_model_recordpdb_symbol lbl)
;;
