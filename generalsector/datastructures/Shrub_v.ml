(** {3 The Shrub data structure functionalities.} *)

let nam_mod = "Shrub_v";;


(** {6 Making.} *)

let make_zero nod = 
  Shrub_t.Zero nod
;;

let make_uno nod s_1 = 
  Shrub_t.Uno (nod, Uno_v.make s_1)
;;

let make_duo nod s_1 s_2 = 
  Shrub_t.Duo (nod, Duo_v.make s_1 s_2 )
;;

let make_trio nod s_1 s_2 s_3 = 
  Shrub_t.Trio (nod, Trio_v.make s_1 s_2 s_3)
;;

(** {6 Extracting.} *)

(** {6 Modifying.} *)

let rec map f = function
  | Shrub_t.Empty -> Shrub_t.Empty
  | Shrub_t.Zero nod -> 
      make_zero (f nod)
  | Shrub_t.Uno (nod, son) -> 
      make_uno 
	(f nod) 
	(map f (Uno_v.element_off_uno son)) 
  | Shrub_t.Duo (nod, son) -> 
      make_duo 
	(f nod) 
	(map f (Duo_v.left_off_duo son)) 
	(map f (Duo_v.right_off_duo son)) 
  | Shrub_t.Trio (nod, son) -> 
      make_trio 
	(f nod) 
	(map f (Trio_v.left_off_trio son))
	(map f (Trio_v.middle_off_trio son))  
	(map f (Trio_v.right_off_trio son)) 
;; 

let rec iter f = function
  | Shrub_t.Empty -> ()
  | Shrub_t.Zero nod -> f nod
  | Shrub_t.Uno (nod, son) -> (f nod); (iter f (Uno_v.element_off_uno son)); 
  | Shrub_t.Duo (nod, son) -> 
     (f nod); (iter f (Duo_v.left_off_duo son)); (iter f (Duo_v.right_off_duo son));
  | Shrub_t.Trio (nod, son) -> 
      (f nod) ;
      (iter f (Trio_v.left_off_trio son));
      (iter f (Trio_v.middle_off_trio son));  
      (iter f (Trio_v.right_off_trio son)); 
;; 

let rec map2 f shr_1 shr_2 =
  match (shr_1, shr_2) with
  | (Shrub_t.Empty, Shrub_t.Empty) -> Shrub_t.Empty
  | (Shrub_t.Zero nod1, Shrub_t.Zero nod2) -> 
      make_zero (f nod1 nod2)
  | (Shrub_t.Uno (nod1, son1), Shrub_t.Uno (nod2, son2)) -> 
      make_uno 
	(f nod1 nod2) 
	(map2 f (Uno_v.element_off_uno son1) (Uno_v.element_off_uno son2))
  | (Shrub_t.Duo (nod1, son1), Shrub_t.Duo (nod2, son2)) -> 
      make_duo 
	(f nod1 nod2) 
	(map2 f (Duo_v.left_off_duo son1) (Duo_v.left_off_duo son2) )
	(map2 f (Duo_v.right_off_duo son1) (Duo_v.right_off_duo son2) )
  | (Shrub_t.Trio (nod1, son1), Shrub_t.Trio (nod2, son2)) -> 
      make_trio 
	(f nod1 nod2) 
	(map2 f (Trio_v.left_off_trio son1) (Trio_v.left_off_trio son2) )
	(map2 f (Trio_v.middle_off_trio son1) (Trio_v.middle_off_trio son2))
	(map2 f (Trio_v.right_off_trio son1) (Trio_v.right_off_trio son2))
  | (_, _) -> invalid_arg "Shrub_v.map2"
;; 

let index_shrub_off_shrub idx map_list tre =
  let rec apply i = function
    | Shrub_t.Empty -> Shrub_t.Empty
    | Shrub_t.Zero lf -> Shrub_t.Zero i
    | Shrub_t.Inner (nod, son) -> 
	let idx_l = map_list son in
	Shrub_t.Inner (i, List.map2 apply idx_l son) 
  in
  apply idx tre
;;

let vertex_filter p = 
  let rec apply acc = function 
    | Shrub_t.Empty -> failwith "Empty_shrub:vertex_filter"
    | Shrub_t.Zero v -> 
	if p v then v :: acc else acc 
    | Shrub_t.Inner (nod, son) -> 
	if p nod 
	then nod :: List.flatten (List.map (apply acc) son ) 
	else List.flatten (List.map (apply acc) son ) 
  in
  apply [] 
;;

let subshrub_filter p = 
  let rec apply acc = function  
    | Shrub_t.Empty -> []
    | Shrub_t.Zero v as t -> 
	if p v then t :: acc else acc 
    | Shrub_t.Inner (nod, son) as t -> 
	if p nod
	then t :: acc 
	else List.flatten (List.map (apply acc) son)
  in
  apply []  
;;

let subshrub_find p tre =
  List.hd (subshrub_filter p tre)
;;

let subshrub_of_vertex_off_shrub vtx tre =
  subshrub_find (fun r -> r = vtx) tre
 ;;

let is_son_of_vertex_of_shrub vtx = function
  | Shrub_t.Empty 
  | Shrub_t.Zero _ -> false
  | Shrub_t.Inner (nod, son) as t -> 
      List.mem vtx (son_list_off_shrub t) 
;;

let is_father_of_vertex_of_sonvertex_of_shrub fth son tre =
  let sub_tre = subshrub_of_vertex_off_shrub fth tre in
  is_son_of_vertex_of_shrub son sub_tre 
;;

let rec subshrub_remove p = function  
  | Shrub_t.Empty -> Shrub_t.Empty
  | Shrub_t.Zero v as t -> 
      if p v then Shrub_t.Empty else t
  | Shrub_t.Inner (nod, son) -> 
      if p nod
      then Shrub_t.Empty
      else 
	begin
	  let s_l = List.map (subshrub_remove p) son in
	  let cleaned = List.filter (fun s -> s <> Shrub_t.Empty) s_l in
	  match cleaned with 
	  | [] -> Shrub_t.Zero nod
          | _ -> Shrub_t.Inner (nod, cleaned)
	end
;;

let rec subshrub_add pre son = function  
  | Shrub_t.Empty -> Shrub_t.Empty
  | Shrub_t.Zero v as t -> 
      if pre v then Shrub_t.Inner (v, [son]) else t
  | Shrub_t.Inner (nod, son) -> 
      if pre nod 
      then Shrub_t.Inner (nod, List.append son [son])
      else Shrub_t.Inner (nod, List.map (subshrub_add pre son) son)
;;

(** {6 Naming} *)

let print prt_e ppf tre = 
  Format.fprintf ppf "{"; 
  let rec apply prt_e ppf = function
    | Shrub_t.Empty -> ()
    | Shrub_t.Zero nod -> 
	Format.fprintf ppf "%a" prt_e nod 
    | Shrub_t.Inner (nod, son) -> 
	Format.fprintf ppf "@[%a]@.@]" prt_e nod; 
	List.iter (Format.fprintf ppf "%a " (apply prt_e)) son
  in
  apply prt_e ppf tre;
  Format.fprintf ppf "}"
;;

let rec name nam_e = function
  | Shrub_t.Empty -> ""
  | Shrub_t.Zero lf -> 
      Format.sprintf "%s" (nam_e lf) 
  | Shrub_t.Inner (nod, son) -> 
	Format.sprintf "{%s[%s]}" (nam_e nod) 
	(String_v.string_of_string_list (List.map (name nam_e) son) ) 
;;

