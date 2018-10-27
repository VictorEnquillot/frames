(** {3 The Twig data structure functionalities.} *)

let nam_mod = "Booted_list_v.ml";;

module Twg_t = Twig_t

(** {6 Making.} *)

let make_root rot = 
  Twg_t.Root rot
;;

let make bon sid twg = 
  Twg_t.Node (bon, sid, twg)
;;

(** {6 Extracting.} *)

let root_off_twig = function
  | Twg_t.Root rot -> rot 
  | Twg_t.Node _ -> failwith "Not_a_Root:Twig_v.root_off_twig"
;;

let subtwig_off_twig = function
  | Twg_t.Root _ -> failwith "Not_a_Bone:Twig_v.subtwig_off_twig"
  | Twg_t.Node (_, sid, twg) -> twg
;;

let topbone_off_twig = function
  | Twg_t.Root _ -> failwith "Not_a_Bone:Twig_v.topbone_off_twig"
  | Twg_t.Node (bon, _, _) -> bon
;;

let topside_off_twig = function
  | Twg_t.Root _ -> failwith "Not_a_Side:Twig_v.topside_off_twig"
  | Twg_t.Node (_, sid, _) -> sid
;;

let topelement_off_twig = function
  | Twg_t.Root _ -> failwith "Not_an_Element:Twig_v.topelement_off_twig"
  | Twg_t.Node (bon, sid, _) -> (bon, sid)
;;

let replace_of_topbone_of_twig tbn = function
  | Twg_t.Root _ -> failwith "Not_a_Topbone:Twig_v.replace_of_topbone_of_twig"
  | Twg_t.Node (_, sid, twg) -> 
      make tbn sid twg
;;

let replace_of_topside_of_twig tsd = function
  | Twg_t.Root _ -> failwith "Not_a_Topbone:Twig_v.replace_of_topside_of_twig"
  | Twg_t.Node (bon, _, twg) -> 
      make bon tsd twg
;;

let replace_of_topelement_of_twig tel = function
  | Twg_t.Root _ -> failwith "Not_a_Topbone:Twig_v.replace_of_topelement_of_twig"
  | Twg_t.Node (_, _, twg) ->
      let (bon, sid) = tel in 
      make bon sid twg
;;

(** Converting to other data_structures. *)

let twig_of_root_of_doublet_list rot cpl_l =
  let rec apply = function
    | [] -> make_root rot
    | h :: t ->
	let bon = Cpl_v.left_off_doublet h in
	let sid = Cpl_v.left_off_doublet h in
	make bon sid :: (apply t)
  in 
  apply cpl_l
;;

(** {6 Converting.} *)

let rec name nam_b nam_s nam_r = function
  | Twg_t.Root rot -> 
      Format.sprintf "%s" (nam_r rot) 
  | Twg_t.Node (bon, sid, twg) ->
      let nam_t = name nam_b nam_s nam_r in
      Format.sprintf "{%s:%s:%s}" (nam_b bon) (nam_s sid) (nam_t twg)
;;

let rec print prt_b prt_s prt_r ppf = function
  | Twg_t.Root rot -> 
      Format.fprintf ppf "%a" prt_r rot 
  | Twg_t.Node (bon, sid, twg) -> 
      let prt_t = print prt_b prt_s prt_r in
      Format.fprintf ppf "{%a:%a:%a}" prt_b bon prt_s sid prt_t twg 

;;


