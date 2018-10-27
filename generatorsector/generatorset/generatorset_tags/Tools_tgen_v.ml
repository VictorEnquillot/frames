let nam_cod = "Tools_tgen_v.ml";;

let upper_tag_off_any_tag sym_upp_off_sym_gss tag_any =
  let (sym_any, soi_any) = tag_any in 
  let soi_upp = List.tl soi_any in
  let gss_upp = Generatorset_symbol_by_sole_index_provider_v.provide soi_upp in
  let sym_upp = sym_upp_off_sym_gss gss_upp in
  Tag_v.make sym_upp soi_upp
;;
