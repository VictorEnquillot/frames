
let make sym_flo soi_flo =
  Tag_v.make sym_flo soi_flo
;;

let name tag_flo =
  Tag_v.name Float_symbol_v.name tag_flo
;;

let name_as_symbol tag_flo =
  let sym_flo = Tag_v.entity_off_tag tag_flo in
  Float_symbol_v.name sym_flo
;;

let string_off tag_flo =
  let sym_flo = Tag_v.entity_off_tag tag_flo in
  Float_symbol_v.string_off sym_flo
;;
