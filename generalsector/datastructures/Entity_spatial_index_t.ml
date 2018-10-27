(* {3 An index for Any Entity} *)


type entity_index =
  | Linear_index of linear_index 
  | Spherical_index of spherical_index

and linear_index =
  | Uno 
  | Duo 
  | Trio 
  | Quatro
  | Ordinal of Ordinal_p.ordinal
  | Ultimo (* last : this ordinal is the cardinal of brothers set *)
	
and spherical_index =
  | Center 
  | Zenith
  | Nadir
  | North
  | West
  | East
  | South
  | North_West (* Left in equatorial plane *)
  | West_South (* Right in equatorial plane *)
  | North_Nadir (* Left in vertical plane *)
  | South_Nadir (* Right in vertical plane *)
;;
(** Example : Ch4 is 
[(H, Zenith); (H, North); (H, West-South); (H, South-East)] *)

(**
and tetrahedral =
  | Zenith
  | North
  | North_West (* Left in equatorial plane *)
  | West_South (* Right in equatorial plane *)
   and pyramidal  =
   | Nadir       (* A *)
   | North_Nadir (* Left in vertical plane  I *)
   | South_Nadir (* Right in vertical plane J *)
   and planar  =
   | South       (* B *)
   | South_North (* Left in vertical plane  U *)
   | Nadir_South (* Right in vertical plane V *)
   and linear  = 
   | West (* W *)
   | East (* E *)
   
*)
(* http://en.wikipedia.org/wiki/Horizontal_coordinate_system *)
