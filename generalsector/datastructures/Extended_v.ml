(** {3 The functionalities for an extended_type.} *)


let make_basic typ =
   Extended_t.Basic typ
;;

let make_extended ext =
  Extended_t.Extended ext
;;

let extend = function
  | Extended_t.Basic _ 
  | Extended_t.Extended _ as ext ->
      make_extended ext
;;

let rec count = function
  | Extended_t.Basic _ -> 0 
  | Extended_t.Extended ext ->
      (count ext) + 1
;;

let rec basic_off_extended = function
  | Extended_t.Basic typ -> typ 
  | Extended_t.Extended ext -> basic_off_extended ext
;;

let rec map ft = function
  | Extended_t.Basic typ -> 
      make_basic (ft typ) 
  | Extended_t.Extended ext ->
      make_extended (map ft ext)
;;

let rec iter ft = function
  | Extended_t.Basic typ -> ft typ 
  | Extended_t.Extended ext ->
     iter ft ext
;;

let name nam_t = function
  | Extended_t.Basic typ ->
      Format.sprintf "%s" (nam_t typ)  
  | Extended_t.Extended e as ext ->
      let cnt = count ext in
      let typ = basic_off_extended e in 
      Format.sprintf "x%i%s" cnt (nam_t typ)
;; 

let rec print prt_t ppf = function
  | Extended_t.Basic typ ->
      Format.fprintf ppf "%a" prt_t typ  
  | Extended_t.Extended ext ->
      Format.fprintf ppf "Extended %a" (print prt_t) ext
;; 


