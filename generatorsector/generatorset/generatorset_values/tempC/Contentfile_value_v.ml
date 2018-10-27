(** {3 The functionalities for a Value for an Contentfile of a Camlfile.}  *)

let nam_cod = "Contentfile_value_v.ml";;

(** {6 Aliases} *)


(** {6 Making.} *)

let make tag_cat =
  let for_cat = Contentfile_formula_v.retrieve tag_cat in
  Contentfile_formula_v.map Usagefile_value_v.make for_cat
;;

(** {6 Writing.} *)

let longname val_cof =
  List_v.name_with_separator (fun s-> s) "; "  
    (Contentfile_formula_v.map Usagefile_value_v.longname val_cof) 
;;

let write nam_dir tag_cat =
  let for_cat = Contentfile_formula_v.retrieve tag_cat in
  List.iter (Usagefile_value_v.write nam_dir) for_cat 
;;

(** {6 Extracting.} *)

