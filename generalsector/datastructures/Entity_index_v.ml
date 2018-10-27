(** {3 An Index functionalities for an Entity.} *)


(** {6 Making.} *)

(** {6 Naming} *)

let name = function 
  | Entity_index_t.Sequential_index idx -> Sequential_index_v.name idx
  | Entity_index_t.Vsepr_index idx -> Vsepr_index_v.name idx
;;

(** {6 Abbreviating.} *)
(***
(* sequential_index *)

let s = Entity_index_t.Sequential_index Sequential_index_v.s;;
let c = Entity_index_t.Sequential_index Sequential_index_v.c;;

(* vsepr_index *)

(* vsepr_tetrahedral__index *)

let stc = Entity_index_t.Vsepr_index Vsepr_index_v.stc;;
let sti = Entity_index_t.Vsepr_index Vsepr_index_v.sti;;
let sto = Entity_index_t.Vsepr_index Vsepr_index_v.sto;;
let stl = Entity_index_t.Vsepr_index Vsepr_index_v.stl;;
let str = Entity_index_t.Vsepr_index Vsepr_index_v.str;;

(* vsepr_pyramidal__index *)

let spc = Entity_index_t.Vsepr_index Vsepr_index_v.spc;;
let spi = Entity_index_t.Vsepr_index Vsepr_index_v.spi;;
let spl = Entity_index_t.Vsepr_index Vsepr_index_v.spl;;
let spr = Entity_index_t.Vsepr_index Vsepr_index_v.spr;;

(* planar_trigonal_index *)

let ptc = Entity_index_t.Vsepr_index Vsepr_index_v.ptc;;
let pti = Entity_index_t.Vsepr_index Vsepr_index_v.pti;;
let ptb = Entity_index_t.Vsepr_index Vsepr_index_v.ptb;;
let pto = Entity_index_t.Vsepr_index Vsepr_index_v.pto;;

(* planar_bent_index *)

let pbc = Entity_index_t.Vsepr_index Vsepr_index_v.pbc;;
let pbi = Entity_index_t.Vsepr_index Vsepr_index_v.pbi;;
let pbo = Entity_index_t.Vsepr_index Vsepr_index_v.pbo;;

(* linear_index *)

let lnc = Entity_index_t.Vsepr_index Vsepr_index_v.lnc;;
let lni = Entity_index_t.Vsepr_index Vsepr_index_v.lni;;
let lno = Entity_index_t.Vsepr_index Vsepr_index_v.lno;;

**)


