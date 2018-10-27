(** {3 A Chunk data structure functionalities .} *)

let nam_mod = "Chunk_v";;

(** {6 Making.} *)

let make_orrunk elt_l elt_t =
  let cpl = Doublet_v.make elt_l elt_t in
  Chunk_t.Brunk cpl
;;

(** {6 Extracting.} *)

let rec clod_off_chunk = function
  | Chunk_t.Clod elt -> elt
  | Chunk_t.Brunk (elt_l, _) -> List.hd elt_l
  | Chunk_t.Log chk_l -> clod_off_chunk (List.hd chk_l)
;;

let rec branch_off_chunk = function
  | Chunk_t.Brunk (_, elt_t) -> elt_t
  | Chunk_t.Log chk_l -> branch_off_chunk (List.hd chk_l)
  | Chunk_t.Clod _ -> failwith "Clod:branch_off_brunk"
 ;;

let rec brunk_off_chunk = function
  | Chunk_t.Brunk brk -> brk
  | Chunk_t.Log chk_l -> brunk_off_chunk (List.hd chk_l)
  | Chunk_t.Clod _ -> failwith "Clod:brunk_off_chunk"
 ;;

let log_off_chunk = function
  | Chunk_t.Log chk_l -> chk_l
  | _ -> failwith "Not_list:brunk_off_chunk"
 ;;

let rec map f = function
  | Chunk_t.Clod v -> 
      Chunk_t.Clod (f v)
  | Chunk_t.Brunk brk -> 
      Chunk_t.Brunk (Brunk_v.map f brk)
  | Chunk_t.Log chk_l -> 
      Chunk_t.Log (List.map (map f) chk_l)
;; 

let rec iter f = function
  | Chunk_t.Clod v -> f v
  | Chunk_t.Brunk brk -> 
     Brunk_v.iter f brk
  | Chunk_t.Log chk_l -> 
      List.iter (iter f) chk_l
;; 

let rec map2 f chk_1 chk_2 = 
  match (chk_1, chk_2) with   (* doublets with same structure only *)
  | (Chunk_t.Clod v1, Chunk_t.Clod v2) -> 
      Chunk_t.Clod (f v1 v2)
  | (Chunk_t.Brunk brk_1, Chunk_t.Brunk brk_2) -> 
      Chunk_t.Brunk (Brunk_v.map2 f brk_1 brk_2)
  | (Chunk_t.Log chk_l1, Chunk_t.Log chk_l2) ->
      Chunk_t.Log (List.map2 (map2 f) chk_l1 chk_l2)
  | (_, _) -> invalid_arg "Brunk_v.map2"
;; 

let rec name nam_e = function
  | Chunk_t.Clod bas -> 
      Format.sprintf "%s" (nam_e bas) 
  | Chunk_t.Brunk brk -> 
      Brunk_v.name nam_e brk
  | Chunk_t.Log chk_l -> 
      List_v.name (name nam_e) chk_l
;;

