(** {3 The functionalities of trail.} *)

let nam_mod = "Trail_v.ml";;

(**
   "Invariant : A Trail is a list of allowed_doublet";
   "Invariant : A Trail is never an Empty_list";
*)

(** {6 Naming} *)

let name tra =
  Doublet_list_v.name_with_separator Utilities_v.identity Utilities_v.identity "; " tra 
;;

(** {6 Making} *)

let allowed_doublet () =  (* Improve should be typed *)
  [
   ("category", "formula");
   ("category", "symbol");
   ("category", "tag");
   ("category", "value");
   ("database", "db_1");
   ("database", "db_2");
   ("database", "db_3");
   ("domain", "chemical");
   ("domain", "figure");
   ("domain", "molecule");
   ("domain", "music");
   ("figure", "triangle");
   ("figure", "vector");
   ("kind", "content");
   ("kind", "description");
   ("kind", "type");
   ("kind", "type_private");
 ] 
;;

let allowed_key () =
  let dol = allowed_doublet () in
  let lis = Doublet_list_v.left_list_off_doublet_list dol in
  "entity" :: (List_v.left_once_list_off_list lis)
;;

let allowed_value () =
  let dol = allowed_doublet () in
  let lis = Doublet_list_v.right_list_off_doublet_list dol in
  List_v.left_once_list_off_list lis
;;
  
let is_allowed_key k =
  List.mem k (allowed_key ())
;;

let is_allowed_value v =
  List.mem v (allowed_value ())
;;

let check_is_allowed_key k =
  let nam_fun = "check_is_allowed_key" in
  
  if (not (is_allowed_key k))
  then 
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "key >%s< were an ALLOWED key" k)
      (Format.sprintf "that allowed key list is:@.    %s" 
	 (List_v.name_with_separator Utilities_v.identity ";\n    " (allowed_key ())))
      "Check"
  else
    ()
;;      

let check_is_allowed_value v =
  let nam_fun = "check_is_allowed_value" in
  
  if (not (is_allowed_value v))
  then 
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "value >%s< were an ALLOWED value" v)
      (Format.sprintf "that allowed value list is:@.    %s" 
	 (List_v.name_with_separator Utilities_v.identity ";\n    " (allowed_value ())))
      "Check"
  else
    ()
;;      

let is_allowed_doublet (k, v) =
  match k with 
  | "" ->
      Error_messages_v.print_fatal_error nam_mod "is_allowed_doublet"
	"key is domain[category|kind|entity" "Empty string" "Check"
  | "domain"
  | "entity" -> true
  | _ ->
      List.mem (k, v) (allowed_doublet ()) 
;;

let check_is_allowed_doublet (k, v) =
  let nam_fun = "check_is_allowed_doublet" in
  
  if (not (is_allowed_doublet (k, v)))
  then 
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "(key, value) >(%s, %s)< were an ALLOWED doublet" k v)
      (Format.sprintf "that allowed doublet list is:@.    %s" 
	 (Doublet_list_v.name_with_separator Utilities_v.identity Utilities_v.identity ";\n    " (allowed_doublet ())))
      "Check"
  else
    ()
;;      

let make k v tra =
  check_is_allowed_doublet (k, v);

  let new_tra = 
    match tra with 
    | [] -> [(k, v)]
    | _ ->
	if Doublet_list_v.has_left k tra
	then
	  Error_messages_v.print_fatal_error nam_mod "make"
	    (Format.sprintf "key >%s< does not already exist in upper trail" k)
	    (Format.sprintf "upper trail is:@.   %s" (name tra))
	    "Check"
	else (k, v) :: tra
  in
  let k_l = Doublet_list_v.left_list_off_doublet_list new_tra in
  let v_l = Doublet_list_v.right_list_off_doublet_list new_tra in
  
  if (not (List_v.is_once_list_of_list k_l))
  then 
    Error_messages_v.print_fatal_error nam_mod "make"
      "any key appears only once in trail"
      (Format.sprintf "key list of trail is:@.   %s" 
	 (List_v.name_with_separator Utilities_v.identity ";\n   " k_l) )
      "Check"
  else
    Doublet_list_v.make k_l v_l
;;

let make_of_value_of_trail v = function 
  | [] -> failwith ("Empty_trail:"^nam_mod^":make_of_value_of_trail")
  | tra ->
      let (k, _) = List.hd tra in
      make k v (List.tl tra)
;;

(** {6 Extracting} *)

let value_of_key_off_trail key tra =
  check_is_allowed_key key;
  
  match tra with 
  | [] ->
      Error_messages_v.print_fatal_error nam_mod "value_of_key_off_trail"
	"trail were NOT empty" "Empty trail" "Check"
	
  | tra -> 
      let dol =
	try 
	  Doublet_list_v.filter_if_left (fun l -> l = key) tra 
	with
	  Failure s ->
	    Error_messages_v.print_fatal_error nam_mod "value_of_key_off_trail"
	      (Format.sprintf "key >%s< does exist in trail" key)
	      (Format.sprintf "trail is:@.   %s" (name tra))
	      "Check"
      in
      match dol with 
      | [] ->
	  Error_messages_v.print_fatal_error nam_mod "value_of_key_off_trail"
	    (Format.sprintf "key >%s< exists in trail" key) 
	    (Format.sprintf "no such key in trail :@.   %s" (name tra)) 
	    "Check"
      | _ -> Doublet_v.right_off_doublet (List.hd dol)
;;

let doublet_of_key_off_trail key tra =
  check_is_allowed_key key;

  match tra with
  | [] ->
      Error_messages_v.print_fatal_error nam_mod 
	"doublet_of_key_off_trail"
	"trail were NOT empty" "Empty trail" "Check"
	
  | tra -> 
      let v = value_of_key_off_trail key tra in
      (key, v)
;;

let trail_of_key_off_trail key tra =
  check_is_allowed_key key;

  match tra with
  | [] ->
      Error_messages_v.print_fatal_error nam_mod "trail_of_key_off_trail"
	"trail were NOT empty" "Empty trail" "Check"
	
  | tra -> 
      List_v.right_list_included_of_predicate_of_list 
	(fun (k, v) -> k=key)
	tra
;;

let replace_of_value_of_key_off_trail new_val key tra =
  check_is_allowed_key key;

  match tra with
  | [] ->
      Error_messages_v.print_fatal_error nam_mod "replace_of_value_of_key_off_trail"
	"trail were NOT empty" "Empty trail" "Check"
	
  | tra -> 
      Doublet_list_v.replace_right_of_right_of_left_off_doublet_list 
	new_val 
	key
	tra
;;

let head_doublet_off_trail tra =

  let dou =
    match tra with 
    | [] ->
	Error_messages_v.print_fatal_error nam_mod "head_doublet_off_trail"
	  "trail were NOT empty" "Empty trail" "Check"
	  
    | tra -> Doublet_list_v.head_doublet_off_doublet_list tra
  in
  check_is_allowed_doublet dou;
  dou
;;

let head_key_off_trail tra =
  match tra with 
  | [] ->
      Error_messages_v.print_fatal_error nam_mod "head_key_off_trail"
	"trail were NOT empty" "Empty trail" "Check"
	
  | tra -> Doublet_list_v.head_left_off_doublet_list tra
;;

let head_value_off_trail tra =

  let v = 
    match tra with 
    | [] ->
	Error_messages_v.print_fatal_error nam_mod "head_key_off_trail"
	  "trail were NOT empty" "Empty trail" "Check"
	  
    | tra -> Doublet_list_v.head_right_off_doublet_list tra
  in
  check_is_allowed_value v;
  v
;;

(** {6 Querying} *)

let has_of_key_off_trail key tra =
  check_is_allowed_key key;

  match tra with
  | [] ->
      Error_messages_v.print_fatal_error nam_mod "has_of_key_off_trail"
	"trail were NOT empty" "Empty trail" "Check"
	
  | tra -> 
      Doublet_list_v.has_left key tra
;;

let has_of_head_key_off_trail key tra =
  check_is_allowed_key key;
  
  let key_hea = head_key_off_trail tra in
  key_hea = key
;;
