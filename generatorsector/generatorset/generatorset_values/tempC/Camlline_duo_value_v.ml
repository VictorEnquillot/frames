(** {3 The functionalities for a Value for a Camlline_duo.}  *)

let nam_cod = "Camlline_duo_value_v.ml";;

(** {6 Aliases} *)

(** {6 Making.} *)

let make sym_cld soi_cal =
  match sym_cld with
  | Camlline_duo_symbol_t.Camlline_duo_function_symbol sym_cdf ->
      Camlline_duo_function_value_v.make sym_cdf soi_cal  

  | Camlline_duo_symbol_t.Camlline_duo_value_symbol sym_cdv ->
      Camlline_duo_value_value_v.make sym_cdv soi_cal  
;;


(** {6 Naming.} *)

let name val_cld = val_cld;;

(** {6 Writing.} *)

let write_of_oc_of_camlline_duo_value oc val_cld =
  output_string oc (Format.sprintf "%s@." (name val_cld))
;;

