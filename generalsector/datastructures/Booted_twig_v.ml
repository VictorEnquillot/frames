(** {3 The Booted_twig data structure functionalities.} *)

let nam_mod = "Booted_twig_v";;


(** {6 Making.} *)

let make_oroot bot = 
  Booted_twig_t.Boot bot
;;

let make nod sid btw = 
  Booted_twig_t.Inner (nod, sid, btw)
;;

let rec make_of_boot_of_twig bot = function
  | Twig_t.Empty -> make_oroot bot
  | Twig_t.Inner (nod, sid, twg) -> 
      let btw = make_of_boot_of_twig bot twg in
      Booted_twig_t.Inner (nod, sid, btw)
;;

let make_of_doublet_booted_list cbl =
  let bot = Booted_list_v.boot_part_off_booted_list cbl in
  let cpl_l = Booted_list_v.list_part_off_booted_list cbl in
  let twg = Twig_v.make_of_doublet_list cpl_l in
      make_of_boot_of_twig bot twg
;;

(** {6 Converting to other data-structures.} *)

let rec twig_off_booted_twig = function
  | Booted_twig_t.Boot _ -> Twig_t.Empty
  | Booted_twig_t.Inner (nod, sid, btw) -> 
      let twg = twig_off_booted_twig btw in
      Twig_t.Inner (nod, sid, twg)
;;

(** {6 Iterating.} *)

let rec map fn fs fb = function
  | Booted_twig_t.Boot bot -> make_oroot (fb bot)
  | Booted_twig_t.Inner (nod, sid, btw) -> 
      make (fn nod) (fs sid) (map fn fs fb btw) 
;;
 
(** {6 Extracting.} *)

let boot_off_booted_twig = function
  | Booted_twig_t.Boot bot -> bot 
  | Booted_twig_t.Inner _ -> failwith "Not_a_Boot:Booted_twig_v.boot_off_booted_twig"
;;

let subbooted_twig_off_booted_twig = function
  | Booted_twig_t.Boot _ -> failwith "Not_a_Node:Booted_twig_v.subbooted_twig_off_booted_twig"
  | Booted_twig_t.Inner (_, sid, btw) -> btw
;;

let topnode_off_booted_twig = function
  | Booted_twig_t.Boot _ -> failwith "Not_a_Node:Booted_twig_v.topnode_off_booted_twig"
  | Booted_twig_t.Inner (bon, _, _) -> bon
;;

let topside_off_booted_twig = function
  | Booted_twig_t.Boot _ -> failwith "Not_a_Side:Booted_twig_v.topside_off_booted_twig"
  | Booted_twig_t.Inner (_, sid, _) -> sid
;;

let topelement_off_booted_twig = function
  | Booted_twig_t.Boot _ -> failwith "Not_an_Element:Booted_twig_v.topelement_off_booted_twig"
  | Booted_twig_t.Inner (bon, sid, _) -> (bon, sid)
;;

let replace_of_topnode_of_booted_twig tbn = function
  | Booted_twig_t.Boot _ -> failwith "Not_a_Topnode:Booted_twig_v.replace_of_topnode_of_booted_twig"
  | Booted_twig_t.Inner (_, sid, btw) -> 
      make tbn sid btw
;;

let replace_of_topside_of_booted_twig tsd = function
  | Booted_twig_t.Boot _ -> failwith "Not_a_Topnode:Booted_twig_v.replace_of_topside_of_booted_twig"
  | Booted_twig_t.Inner (bon, _, btw) -> 
      make bon tsd btw
;;

let replace_of_topelement_of_booted_twig tel = function
  | Booted_twig_t.Boot _ -> failwith "Not_a_Topnode:Booted_twig_v.replace_of_topelement_of_booted_twig"
  | Booted_twig_t.Inner (_, _, btw) ->
      let (bon, sid) = tel in 
      make bon sid btw
;;

(** {6 Naming} *)

let rec name nam_b nam_s nam_r = function
  | Booted_twig_t.Boot bot -> 
      Format.sprintf "%s" (nam_r bot) 
  | Booted_twig_t.Inner (bon, sid, btw) ->
      let nam_t = name nam_b nam_s nam_r in
      Format.sprintf "{%s:%s:%s}" (nam_b bon) (nam_s sid) (nam_t btw)
;;

let rec print prt_b prt_s prt_r ppf = function
  | Booted_twig_t.Boot bot -> 
      Format.fprintf ppf "%a" prt_r bot 
  | Booted_twig_t.Inner (bon, sid, btw) -> 
      let prt_t = print prt_b prt_s prt_r in
      Format.fprintf ppf "{%a:%a:%a}" prt_b bon prt_s sid prt_t btw 

;;


