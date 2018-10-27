(** {3 The functionalities for a Formula for a Statustype.}  *)

let nam_cod = "Statustype_formula_v.ml";;

(** {6 Aliases} *)

let contentfile_tag_of_soi_of_contentfile_symbol soi_cof sym_cof =
  let gss_cof = 
    Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol 
      sym_cof 
  in
  Generatorset_symbol_by_sole_index_register_v.store 
    soi_cof gss_cof;
  Tag_v.make sym_cof soi_cof
;;

(** {6 Retrieving.} *)

let retrieve tag_stt =
  let soi_stt = Tag_v.sole_index_off_tag tag_stt in
  let sym_stt = Tag_v.entity_off_tag tag_stt in

  match sym_stt with
  | Statustype_symbol_t.Constrained ->
      let sym_cof_1 = Contentfile_symbol_t.Type_n_value in
      let soi_cof_1 = Sole_index_v.make 1 soi_stt in
      let tag_cof_1 = 
	contentfile_tag_of_soi_of_contentfile_symbol 
	  soi_cof_1 sym_cof_1 
      in
      [tag_cof_1]

  | Statustype_symbol_t.Unconstrained ->
      let sym_cof_1 = Contentfile_symbol_t.Type_alone in
      let soi_cof_1 = Sole_index_v.make 1 soi_stt in
      let tag_cof_1 = 
	contentfile_tag_of_soi_of_contentfile_symbol 
	  soi_cof_1 sym_cof_1 
      in
      let sym_cof_2 = Contentfile_symbol_t.Value_alone in
      let soi_cof_2 = Sole_index_v.make 2 soi_stt in
      let tag_cof_2 = 
	contentfile_tag_of_soi_of_contentfile_symbol soi_cof_2 sym_cof_2 
      in
      [tag_cof_1; tag_cof_2]
;;

