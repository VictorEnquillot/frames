open Make_test_v;;
open String_v;;

testing "String_v with
   string_u_alain.ml";;

(* toplevel 
   #use "string_u_alain.ml";; 

*)

let str = "elu par cette crapule" ;;

test_number 1 (
  is_palindrome_of_string str
);;
 
(* [ fir_cha ; cur_l ; las_cha ] = list *) 

let triplet_off_list e_l =
  let fir_cha = List.hd e_l in
  let tai_l = List.tl e_l in
    let rev_l = List.rev tai_l in
     let las_cha = List.hd rev_l in
     let rev_cur_l = List.tl rev_l in
     let cur_l = List.rev rev_cur_l in
     ( fir_cha , cur_l , las_cha )
;;

let rec  is_palindrome_of_character_list = function 
   | [] -> failwith "Empty string"
   | e_l -> 
   let  ( f , cur_l , l ) = triplet_off_list e_l in 
 ( l = f ) && 
	 ( is_palindrome_of_character_list cur_l )
;;  

let is_palindrome_of_string str =
  let wor = word_off_string str in
  let c_l = character_list_off_string wor in
  is_palindrome_of_character_list c_l
;;
      
