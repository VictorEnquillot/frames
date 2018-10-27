(** {3 The twig data structure functionalities.} *)

let nam_mod = "Twig_v";;


(** {6 Making.} *)

let make nod sid twg = 
  Twig_t.Inner (nod, sid, twg)
;;

let make_of_doublet_list cpl_l =
  let rec apply = function
    | [] -> Twig_t.Empty
    | h :: t ->
	let nod = Doublet_v.left_off_doublet h in
	let sid = Doublet_v.right_off_doublet h in
	let twg = apply t in
	make nod sid twg
  in 
  apply cpl_l
;;

(** {6 Iterating.} *)

let rec map fn fs = function
  | Twig_t.Empty -> Twig_t.Empty
  | Twig_t.Inner (nod, sid, twg) -> 
      make (fn nod) (fs sid) (map fn fs twg) 
;;

(** {6 Extracting.} *)

let subtwig_off_twig = function
  | Twig_t.Inner (_, sid, twg) -> twg
  | Twig_t.Empty  -> failwith "Empty:Twig_v.subtwig_off_twig"
;;

let topnode_off_twig = function
  | Twig_t.Inner (nod, _, _) -> nod
  | Twig_t.Empty -> failwith "Empty:Twig_v.topnode_off_twig"
;;

let topside_off_twig = function
  | Twig_t.Inner (_, sid, _) -> sid
  | Twig_t.Empty -> failwith "Not_a_Side:Twig_v.topside_off_twig"
;;

let topdoublet_off_twig = function
  | Twig_t.Inner (nod, sid, _) -> (nod, sid)
  | Twig_t.Empty -> failwith "Not_an_Doublet:Twig_v.topdoublet_off_twig"
;;

let replace_of_topnode_of_twig tbn = function
  | Twig_t.Empty  -> failwith "Not_a_Topnode:Twig_v.replace_of_topnode_of_twig"
  | Twig_t.Inner (_, sid, twg) -> 
      make tbn sid twg
;;

let replace_of_topside_of_twig tsd = function
  | Twig_t.Empty -> failwith "Not_a_Topnode:Twig_v.replace_of_topside_of_twig"
  | Twig_t.Inner (nod, _, twg) -> 
      make nod tsd twg
;;

let replace_of_topdoublet_of_twig tel = function
  | Twig_t.Empty -> failwith "Not_a_Topnode:Twig_v.replace_of_topdoublet_of_twig"
  | Twig_t.Inner (_, _, twg) ->
      let (nod, sid) = tel in 
      make nod sid twg
;;

(** {6 Naming} *)

let rec name nam_b nam_s = function
  | Twig_t.Empty -> Format.sprintf "" 
  | Twig_t.Inner (nod, sid, twg) ->
      let nam_t = name nam_b nam_s in
      Format.sprintf "{%s:%s:%s}" (nam_b nod) (nam_s sid) (nam_t twg)
;;

let rec print prt_b prt_s ppf = function
  | Twig_t.Empty -> Format.fprintf ppf "" 
  | Twig_t.Inner (nod, sid, twg) -> 
      let prt_t = print prt_b prt_s in
      Format.fprintf ppf "{%a:%a:%a}" prt_b nod prt_s sid prt_t twg 

;;


