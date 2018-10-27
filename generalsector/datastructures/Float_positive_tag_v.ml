
let make flp soi =
  Tag_v.make flp soi
;;

let make_of_float flo soi =
  Tag_v.make (Float_positive_p.float_positive flo) soi

;;
