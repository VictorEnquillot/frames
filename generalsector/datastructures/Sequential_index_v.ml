(** {3 A Sequential Index functionalities for an Entity.} *)


(** {6 Making.} *)

let make ord =
  Sequential_index_t.Ordinal ord 
;;

let make_of_ordinal ord =
  make ord
;;

(** {6 Naming} *)

let name = function 
  | Sequential_index_t.Solus -> Format.sprintf "S" 
  | Sequential_index_t.Cauda -> Format.sprintf "C" 
  | Sequential_index_t.Ordinal ord -> Format.sprintf "%s" (Ordinal_p.name ord) 
;;
	
let print ppf = function 
  | Sequential_index_t.Solus -> Format.fprintf ppf "Solus" 
  | Sequential_index_t.Cauda -> Format.fprintf ppf "Cauda" 
  | Sequential_index_t.Ordinal ord -> Format.fprintf ppf "%a" Ordinal_p.print ord 
;;
	
(** {6 Extracting.} *)

let ordinal_off_sequential_index = function 
  | Sequential_index_t.Solus -> Ordinal_p.one 
  | Sequential_index_t.Ordinal ord -> ord
  | Sequential_index_t.Cauda -> failwith "Not_ordinal:Sequential_index_v.ordinal_off_sequential_index"
;;

(** {6 Abbreviating.} *)

let solus = Sequential_index_t.Solus;;
let cauda = Sequential_index_t.Cauda;;

let s = solus;;
let c = cauda;;

let one = Sequential_index_t.Ordinal Ordinal_p.one;;
let two = Sequential_index_t.Ordinal Ordinal_p.two;;
let three = Sequential_index_t.Ordinal Ordinal_p.three;;
let four = Sequential_index_t.Ordinal Ordinal_p.four;;
let five = Sequential_index_t.Ordinal Ordinal_p.five;;
