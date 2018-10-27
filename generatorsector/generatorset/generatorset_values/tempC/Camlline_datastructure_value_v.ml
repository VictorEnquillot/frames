(** {3 The functionalities for a Value for a Camlline_datastructure.}  *)

let nam_cod = "Camlline_datastructure_value_v.ml";;

(** {6 Aliases} *)

(** {6 Making.} *)

let make sym_cld soi_cal =
  match sym_cld with
  | Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol sym_cdf ->
      Camlline_datastructure_function_value_v.make sym_cdf soi_cal  

  | Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol sym_cdc ->
      Camlline_datastructure_camltype_value_v.make sym_cdc soi_cal  
;;


(** {6 Naming.} *)

let name val_cld = val_cld;;

(** {6 Writing.} *)

let write_of_oc_of_camlline_datastructure_value oc val_cld =
  output_string oc (Format.sprintf "%s@." (name val_cld))
;;

