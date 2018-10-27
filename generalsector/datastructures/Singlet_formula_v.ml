let nam_mod = "Singlet_formula_v.ml";;

let make soi_up sym_l =
  match List.length sym_l with
  | 0 -> failwith ("Empty_symbol_list:"^nam_mod^":formula")
  | 1 ->
      let sym = List.hd sym_l in
      let tag = Tag_v.tag_of_sole_index_of_int_of_entity soi_up 1 sym in
      Singlet_v.make tag
  | n ->
      failwith ("Not_one_symbol_list:"^nam_mod^":formula")
;;
