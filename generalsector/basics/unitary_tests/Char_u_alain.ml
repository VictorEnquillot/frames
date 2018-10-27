
testing "Character_v with
   char_u_alain.ml";

(* toplevel 
   #use "char_u_alain.ml";; 

*)

let cha_l = [ 'i' ; 'n' ; ' ' ; 'f' ; 'o' ; '\167' ; 's' ];;


let rec lowercase_to_uppercase cha_l = function
  | [] -> []
  | h :: tl -> cha_up h
;;
