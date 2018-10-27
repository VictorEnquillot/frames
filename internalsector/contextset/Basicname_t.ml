type basicname =
  | Coordinate of string
  | Cofactor_entity of string    (* Seg_bc,  Poi_a  *)
  | Database of string
  | Databox of string
  | Domain of string
  | External_context of string
  | External_name of string
  | Figure of string
  | Inputbase of string
  | Inputbox of string
  | Ondomain of string
  | Operation of string
  | Parameter of string
  | Sector of string
  | Skeleton of string
  | Target_operand of string    (* Seg_bc,  Poi_a  *)
  | Target_operator of string   (* Ope_len, Tra_bc *) 
  | Variable of string
  | Variable_context of string  (* Con_bc,  Con_a  *)
  | Variable_external of string (* Seg_bc,  Poi_a  *)
  | Variable_operator of string (* Ope_len, Tra_bc *)
  | Variable_target of string   (* Len_bc,  Poi_t *)
  | Vertex of string
;;
