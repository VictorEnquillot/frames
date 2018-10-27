(* arg_u_any.byt -domain figure *)

let key = "-domain";;
let str_ref = ref "";;

let spec = Arg.Set_string str_ref;;
let doc ="arg_u_any -domain string";;
 
Arg.parse [(key, spec, doc)] (fun s->()) "Usage :";;

Format.fprintf Format.std_formatter "Argument is %s@." (!str_ref);;
