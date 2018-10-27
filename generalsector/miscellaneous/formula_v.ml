(** {3 A Logical Formula} *)

let nam_mod = "Formula_v" 

(** {6 Aliasing} *)

module For_t = Formula_t
module Lst_v = List_v
module Str_v = String_v

(** {6 Coding} *)

let signed_formula_of_string str =
  let str_t = Str_v.truncate_tail_of_string_of_char str ')' in

(* read the turnstile *)
  let ib = Scanf.Scanning.from_string str_t in
  let str_t = Scanf.bscanf ib " %s @(" (fun s -> s) in  
  let turnstile_string = Str_v.trim_of_string str_t in

  let rec formula ibf = 
    Scanf.bscanf ibf "%0c" (fun c ->
      match c with
      | 'I' -> 
	  Scanf.bscanf ibf "%s " (fun s ->
	    match s with
              | "For_t.Imply" -> For_t.Imply (formula ibf, formula ibf)
	      | _ -> failwith "Not_For_t.Imply"
				 )   
      | 'A' -> 

	  Scanf.bscanf ibf "%s " (fun s ->
	    match s with
              | "And" -> For_t.Imply (formula ibf, formula ibf)
	      | _ -> failwith "Not_And"
				 )   
      | _ -> 
	  Utils_v.not_yet_implemented nam_mod "blank"
(*Scanf.bscanf ibf "%_c" (fun c -> c)*)
			   )
  in 

  let frm = formula ib in
  match turnstile_string with 
  | "False" -> For_t.False frm
  | "True" -> For_t.False frm
  | _ -> failwith ("String unkown"^turnstile_string)
;;
