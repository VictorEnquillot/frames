
let make sym_str soi_str =
  Tag_v.make sym_str soi_str
;;

let name tag_str =
  Tag_v.name String_symbol_v.name tag_str
;;

let fullname tag_str =
  Tag_v.fullname String_symbol_v.name tag_str
;;
