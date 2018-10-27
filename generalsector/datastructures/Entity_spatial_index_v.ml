(** {3 An Index functionalities for an Entity.} *)


(** {6 Making.} *)

(** {6 Naming} *)

let name_linear_index = function 
  | Entity_index_t.Uno -> Format.sprintf "U" 
  | Entity_index_t.Duo -> Format.sprintf "D" 
  | Entity_index_t.Trio -> Format.sprintf "T" 
  | Entity_index_t.Quatro -> Format.sprintf "F" 
  | Entity_index_t.Ordinal ord -> Format.sprintf "%s" (Ordinal_p.name ord) 
;;
	
let name_spherical_index = function
  | Entity_index_t.Center -> Format.sprintf "C" (* Center *)  
  | Entity_index_t.Zenith -> Format.sprintf "Z" 
  | Entity_index_t.Nadir -> Format.sprintf "A" 
  | Entity_index_t.North -> Format.sprintf "N" 
  | Entity_index_t.West -> Format.sprintf "W" 
  | Entity_index_t.East -> Format.sprintf "E" 
  | Entity_index_t.South -> Format.sprintf "S" 
  | Entity_index_t.North_West -> Format.sprintf "L" 
  | Entity_index_t.West_South -> Format.sprintf "R" 
  | Entity_index_t.North_Nadir -> Format.sprintf "P" 
  | Entity_index_t.South_Nadir -> Format.sprintf "Q" 
;;
 
let name_entity_index = function 
  | Entity_index_t.Linear_index idx -> name_linear_index idx
  | Entity_index_t.Spherical_index idx -> name_spherical_index idx
;;

let name = name_entity_index;;

let print_linear_index ppf = function 
  | Entity_index_t.Uno -> Format.fprintf ppf "U" 
  | Entity_index_t.Duo -> Format.fprintf ppf "D" 
  | Entity_index_t.Trio -> Format.fprintf ppf "T" 
  | Entity_index_t.Quatro -> Format.fprintf ppf "F" 
  | Entity_index_t.Ordinal ord -> Format.fprintf ppf "%a" Ordinal_p.print ord 
;;
	
let print_spherical_index ppf = function
  | Entity_index_t.Center -> Format.fprintf ppf "Center" 
  | Entity_index_t.Zenith -> Format.fprintf ppf "Zenith" 
  | Entity_index_t.Nadir -> Format.fprintf ppf "Nadir" 
  | Entity_index_t.North -> Format.fprintf ppf "North" 
  | Entity_index_t.West -> Format.fprintf ppf "West" 
  | Entity_index_t.East -> Format.fprintf ppf "East" 
  | Entity_index_t.South -> Format.fprintf ppf "South" 
  | Entity_index_t.North_West -> Format.fprintf ppf "North_West" 
  | Entity_index_t.West_South -> Format.fprintf ppf "West_South" 
  | Entity_index_t.North_Nadir -> Format.fprintf ppf "North_Nadir" 
  | Entity_index_t.South_Nadir -> Format.fprintf ppf "South_Nadir" 
;;
 
let print_entity_index ppf = function   
  | Entity_index_t.Linear_index idx -> print_linear_index ppf idx
  | Entity_index_t.Spherical_index idx -> print_spherical_index ppf idx
;;

let print = print_entity_index;;

(** {6 Abbreviating.} *)

let lnu = Entity_index_t.Uno;;
let lnd = Entity_index_t.Duo;;
let lnt = Entity_index_t.Trio;;
let lnq = Entity_index_t.Quatro;;

let spc = Entity_index_t.Center;;
let spz = Entity_index_t.Zenith;;
let spa = Entity_index_t.Nadir;;
let spn = Entity_index_t.North;;
let spw = Entity_index_t.West;;
let spe = Entity_index_t.East;;
let sps = Entity_index_t.South;;
let spl = Entity_index_t.North_West;;  (* left *)
let spr = Entity_index_t.West_South;;  (* right *)
let spi = Entity_index_t.North_Nadir;; (* left *)
let spj = Entity_index_t.South_Nadir;; (* right *)

let u = Entity_index_t.Linear_index lnu;;
let d = Entity_index_t.Linear_index lnd;;
let t = Entity_index_t.Linear_index lnt;;
let q = Entity_index_t.Linear_index lnq;;

let c = Entity_index_t.Spherical_index spc;;
let z = Entity_index_t.Spherical_index spz;;
let a = Entity_index_t.Spherical_index spa;;
let n = Entity_index_t.Spherical_index spn;;
let w = Entity_index_t.Spherical_index spw;;
let e = Entity_index_t.Spherical_index spe;;
let s = Entity_index_t.Spherical_index sps;;
let l = Entity_index_t.Spherical_index spl;;
let r = Entity_index_t.Spherical_index spr;;
let i = Entity_index_t.Spherical_index spi;;
let j = Entity_index_t.Spherical_index spj;;

