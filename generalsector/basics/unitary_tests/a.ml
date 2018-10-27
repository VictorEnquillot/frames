

let char_list_off_string str =
  let rec apply i lst =
    try 
      let str_c = String.sub str i 1 in
      apply (i+1) (str_c :: lst) 
    with Invalid_argument "String.sub" ->
      lst
  in
  
  apply 0 []
;;
