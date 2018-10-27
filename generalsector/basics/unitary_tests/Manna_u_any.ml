let is_even i =
2*(i/2) = i 
;;

let f1 a b =
  let apply x y = 
    if ( x = y )
    then y+1
    else x+1
  in
  let result = apply a b in	
  (Format.fprintf Format.std_formatter "a = %i b= %i f1 =%i@." a b result);
  result
;;

let f2 a b =
  let apply x y = 
    if ( x >= y )
    then x+1
    else y-1
  in
  let result = apply a b in	
  (Format.fprintf Format.std_formatter "a = %i b= %i f2 =%i@." a b result);
  result
;;

let f3 a b =
  let apply x y = 
    if ( x >= y && is_even (x -y))
    then x+1
    else failwith "f3 undefined"
  in
  let result = apply a b in	
  (Format.fprintf Format.std_formatter "a = %i b= %i f3 =%i@." a b result);
  result
;;
(*
let manna a b =
  let rec apply x y =
    (Format.fprintf Format.std_formatter "x = %i y= %i@." x y);
    if x = y 
    then y+1
    else
      apply x (apply (x-1) (y+1))
  in
  apply a b
;;
*)
