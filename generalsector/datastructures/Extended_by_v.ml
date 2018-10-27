(** {3 The functionalities for a (left-) extended_by type.} *)

(** {6 ALiasing} *)


(** {6 Making} *)

let make_of_doublet dbl =
  Extended_by_t.Extended_by dbl 
;;

let make x_l b =
  let dbl = Doublet_v.make x_l b in
  make_of_doublet dbl
;;

let make_basic b =
   Extended_by_t.Basic b
;;

(** {6 Extracting} *)

let basic_off_extended_by = function
  | Extended_by_t.Basic b -> b 
  | Extended_by_t.Extended_by dbl -> 
      Doublet_v.right_off_doublet dbl
;;

let list_off_extended_by = function
  | Extended_by_t.Basic _ -> []
  | Extended_by_t.Extended_by dbl ->
      Doublet_v.left_off_doublet dbl
;;

let extension_off_extended_by exb =
  let x_l = list_off_extended_by exb in
  List.hd x_l
;;

(** {6 Making} *)

let extend_by_one x = function
  | Extended_by_t.Basic b ->
      make [x] b
 | Extended_by_t.Extended_by dbl ->
      let dbl_m = 
	Doublet_v.map (fun l -> x::l) (fun b -> b) dbl in 
      make_of_doublet dbl_m 
;;

let count exb =
  let x_l = list_off_extended_by exb in
  List.length x_l
;;

(** {6 Iterating} *)

let map fx fb = function
  | Extended_by_t.Basic b -> 
      make_basic (fb b) 
  | Extended_by_t.Extended_by dbl ->
      let dbl_m = 
	Doublet_v.map (List.map fx) (fb) dbl in 
      make_of_doublet dbl_m
;;

let rec iter fx fb = function
  | Extended_by_t.Basic b -> fb b 
  | Extended_by_t.Extended_by dbl  ->
      Doublet_v.iter (List.iter fx) (fb) dbl
;;

(** {6 Naming} *)

let name nam_x nam_b = function
  | Extended_by_t.Basic b ->
      Format.sprintf "%s" (nam_b b)  
  | Extended_by_t.Extended_by dbl as ext ->
      let b = basic_off_extended_by ext in 
      let cnt = count ext in
      if cnt = 0
      then
	Format.sprintf "%s" (nam_b b)  
      else
	let x = extension_off_extended_by ext in
	Format.sprintf "%s%i%s" (nam_x x) cnt (nam_b b)
;; 

let print prt_x prt_b ppf = function
  | Extended_by_t.Basic b ->
      Format.fprintf ppf "Basic %a" prt_b b  
  | Extended_by_t.Extended_by dbl as ext ->
      let b = basic_off_extended_by ext in 
      let cnt = count ext in
      if cnt = 0
      then
	Format.fprintf ppf "Basic %a" prt_b b  
      else
	let x = extension_off_extended_by ext in
	let b = basic_off_extended_by ext in 
	Format.fprintf ppf "%a Extended %i times by %a" 
	  prt_b b cnt prt_x x
;; 


