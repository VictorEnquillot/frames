(** {3 The functionalities for a Value for an Category of a Camlfile.}  *)

let nam_cod = "Category_value_v.ml";;

(** {6 Aliases} *)


(** {6 Making.} *)

let make tag_cat =
  let for_cat = Category_formula_v.retrieve tag_cat in
  Category_formula_v.map Entity_proper_value_v.make for_cat
;;

(** {6 Writing.} *)

let longname val_cat =
  List_v.name_with_separator (fun s-> s) "; "  
    (Category_formula_v.map Contentfile_value_v.longname val_cat) 
;;

let write nam_dir_dos tag_cat =
  let sym_cat = Tag_v.symbol_off_tag tag_cat in
  let nam_cat = Category_symbol_v.name sym_cat in 
  let nam_dir_cat = nam_dir_dos ^ nam_cat ^ "s/" in
  let for_cat = Category_formula_v.retrieve tag_cat in
  List.iter (Entity_proper_value_v.write nam_dir_cat) for_cat 
;;

(** {6 Extracting.} *)

