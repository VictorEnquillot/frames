(** {Some other functionalities for Stack} *)

let nam_mod = "Stack_v";;

let stack_of_list e_l =
  let e_s = Stack.create () in
  List.iter (fun e -> Stack.push e e_s) e_l;
  e_s
;;


let add_list_to_stack_of_list_of_stack e_l e_s =
  List.iter (fun e -> Stack.push e e_s) e_l;
;;

let list_destructive_of_stack e_s =
  let rec apply e_s e_l =
    if Stack.is_empty e_s
    then e_l
    else
      begin
	let e = Stack.pop e_s in
	apply e_s (e :: e_l)
      end
  in
  apply e_s []
;;

let list_non_destructive_of_stack e_sta =
  let c_s = Stack.copy e_sta in
  let rec apply e_s e_l =
    if Stack.is_empty e_s
    then e_l
    else
      begin
	let e = Stack.pop e_s in
	apply e_s (e :: e_l)
      end
  in
  apply c_s []

;;

(** {6 Finding} *)

let find_destructive_of_predicate_of_stack e_pre e_sta =

  let rec apply e_s =
    if Stack.is_empty e_s
    then failwith "Not_found:Stack_v.find_of_predicate_of_stack"
    else
      begin
	let e = Stack.pop e_s in
	if e_pre e
	then e 
	else apply e_s
      end
   in

  apply e_sta

;;

let find_non_destructive_of_predicate_of_stack e_pre e_sta =

  let rec apply e_l e_s =
    if Stack.is_empty e_s
    then failwith "Not_found:Stack_v.find_of_predicate_of_stack"
    else
      begin
	let e = Stack.pop e_s in
	if e_pre e
	then 
	  begin
	    add_list_to_stack_of_list_of_stack (e::e_l) e_s;
	    e
	  end
	else apply (e::e_l) e_s
      end
   in

  apply [] e_sta 

;;

let find_next_non_destructive_of_current_predicate_of_stack cur_pre e_sta =

  let rec apply e_l e_s =
    if Stack.is_empty e_s
    then failwith "Not_found:Stack_v.find_next_non_destructive_of_current_predicate_of_stack"
    else
      begin
	let e = Stack.pop e_s in
	if cur_pre e
	then 
	  begin
	    let e_n = Stack.pop e_s in
	    add_list_to_stack_of_list_of_stack (e_n::(e::e_l)) e_s;
	    e_n
	  end
	else apply (e::e_l) e_s
      end
   in

  apply [] e_sta 

;;

let find_previous_non_destructive_of_current_predicate_of_stack cur_pre e_sta =

  let rec apply e_p e_l e_s =
    if Stack.is_empty e_s
    then failwith "Not_found:Stack_v.find_of_predicate_of_stack"
    else
      begin
	let e = Stack.pop e_s in
	if cur_pre e
	then 
	  begin
	    add_list_to_stack_of_list_of_stack (e::e_l) e_s;
	    e_p
	  end
	else apply e (e::e_l) e_s
      end
   in

  let e_top = Stack.pop e_sta in
  apply e_top [] e_sta 

;;

let previous_non_destructive_of_stack e_sta =
  let e_top = Stack.pop e_sta in
  let e_pre = Stack.top e_sta in
  Stack.push e_top e_sta;
  e_pre
;;

let previous_top_destructive_of_stack e_sta =
  let _ = Stack.pop e_sta in
  Stack.top e_sta 
;;

let previous_pop_destructive_of_stack e_sta =
  let _ = Stack.pop e_sta in
  Stack.pop e_sta 
;;

(** {6 Deleting} *)

let delete_excluded_of_predicate_of_stack pre e_s =
  let rec apply e_s =
    if Stack.is_empty e_s
    then failwith "Empty_stack:Stack_v.delete_excluded_of_predicate_of_stack"
    else
      begin
	let e = Stack.pop e_s in
	if pre e 
	then e_s
	else apply e_s
      end
  in
  apply e_s
;;

let delete_included_of_predicate_of_stack pre e_s =
  let rec apply e_s =
    if Stack.is_empty e_s
    then failwith "Empty_stack:Stack_v.delete_excluded_of_predicate_of_stack"
    else
      begin
	let e = Stack.pop e_s in
	if pre e 
	then (Stack.push e e_s; e_s)
	else apply e_s
      end
  in
  apply e_s
;;

let name f e_s =
  let e_l = list_non_destructive_of_stack e_s in
  List_v.name f e_l
;;

let name_in_column f e_s =
  let e_l = list_non_destructive_of_stack e_s in
  List_v.name_in_column f e_l
;;
