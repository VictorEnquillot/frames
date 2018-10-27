(** {3 The functionalities for Multiplicity of some entity.} *)


let multiplicity_of_int = function
  | 0 -> failwith ("Zero:multiplicity_of_int")
  | 1 -> Multiplicity_t.Single
  | 2 -> Multiplicity_t.Double 
  | 3 -> Multiplicity_t.Triple 
  | 4 -> Multiplicity_t.Quadruple
  | _ -> failwith ("Gt_4:multiplicity_of_int")
;;

let int_of_multiplicity = function
  | Multiplicity_t.Single -> 1
  | Multiplicity_t.Double -> 2
  | Multiplicity_t.Triple -> 3
  | Multiplicity_t.Quadruple -> 4
  | _ -> failwith ("Not_integer:int_of_multiplicity")
;;

let index_of_multiplicity mty =
  let i = int_of_multiplicity mty in
  Index_p.make i
;;

let ordinal_of_multiplicity mty =
  let i = int_of_multiplicity mty in
  Ordinal_p.make i
;;

let multiplicity_of_float = function
  | 0. -> failwith ("Zero:multiplicity_of_int")
  | 0.5 -> Multiplicity_t.Half
  | 1. -> Multiplicity_t.Single
  | 1.5 -> Multiplicity_t.Triple_half
  | 2. -> Multiplicity_t.Double 
  | 2.5 -> Multiplicity_t.Quintuple_half
  | 3. -> Multiplicity_t.Triple 
  | 3.5 -> Multiplicity_t.Septuple_half
  | 4. -> Multiplicity_t.Quadruple
  | _ -> failwith ("Gt_4.:multiplicity_of_float")
;;

let float_of_multiplicity = function
  | Multiplicity_t.Half -> 0.5
  | Multiplicity_t.Single -> 1.
  | Multiplicity_t.Triple_half -> 1.5
  | Multiplicity_t.Double -> 2.
  | Multiplicity_t.Quintuple_half -> 3.5
  | Multiplicity_t.Triple -> 3.
  | Multiplicity_t.Septuple_half -> 7.5
  | Multiplicity_t.Quadruple -> 4.
;;

let multiplicity_of_index idx =
  let i = Index_p.int_of_index idx in
  multiplicity_of_int i
;;

let multiplicity_of_ordinal ord =
  let i = Ordinal_p.int_of_ordinal ord in
  multiplicity_of_int i
;;

let compare mty_1 mty_2 =
  let f_1 = float_of_multiplicity mty_1 in
  let f_2 = float_of_multiplicity mty_2 in
  compare f_1 f_2
;;

let print ppf = function
  | Multiplicity_t.Half -> Format.fprintf ppf "H"
  | Multiplicity_t.Single -> Format.fprintf ppf "S"
  | Multiplicity_t.Triple_half -> Format.fprintf ppf "Th"
  | Multiplicity_t.Double -> Format.fprintf ppf "D"
  | Multiplicity_t.Quintuple_half -> Format.fprintf ppf "Qh"
  | Multiplicity_t.Triple -> Format.fprintf ppf "T"
  | Multiplicity_t.Septuple_half -> Format.fprintf ppf "Sh"
  | Multiplicity_t.Quadruple -> Format.fprintf ppf "Q"
;;

let print_as_int ppf mty =
  let i = int_of_multiplicity mty in
  Format.fprintf ppf "%i" i
;;

let print_as_float ppf mty =
  let f = float_of_multiplicity mty in
  Format.fprintf ppf "%f3.1" f
;;

let name = function
  | Multiplicity_t.Half -> Format.sprintf "h"
  | Multiplicity_t.Single -> Format.sprintf "S"
  | Multiplicity_t.Triple_half -> Format.sprintf "t"
  | Multiplicity_t.Double -> Format.sprintf "D"
  | Multiplicity_t.Quintuple_half -> Format.sprintf "q"
  | Multiplicity_t.Triple -> Format.sprintf "T"
  | Multiplicity_t.Septuple_half -> Format.sprintf "s"
  | Multiplicity_t.Quadruple -> Format.sprintf "Q"
;;

