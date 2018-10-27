(** {3 Units_tuple_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : UNI:Units_tuple_v";
   "Needs :UNI:Units_v";
   "Needed-by :";
   "What-is-it : it is a Tuple of some Units as angle (duo) or length (uno, duo, trio)";
   "How-is-it-done :";
   "Example: ";
   "Author : François Colonna 19 juin 2017 at 10:05:34+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name uni_t = 
  Tuple_v.name Units_v.name uni_t
;;

(** {6 Dimensioning} *)

let dimension uni_t =
  Tuple_v.name Units_v.dimension uni_t
;;

(** {6 Kinding} *)

let kind uni_t =
  Tuple_v.name Units_v.kind uni_t
;;

(** {6 Shortnaming} *)

let shortname uni_t =
  Tuple_v.name Units_v.shortname uni_t
;;

(** {6 Longnaming} *)

let longname uni_t =
  Format.sprintf "Units_tuple_t.%s" (String.capitalize (name uni_t))
;;

(** {6 Fullnaming} *)

let fullname uni_t =
  Format.sprintf "%s \"%s\"" (longname uni_t) (dimension uni_t)
;;

let are_homogeneous uni_a uni_b =
  let kin_uni_a = Units_v.kind uni_a in
  let kin_uni_b = Units_v.kind uni_b in
  let sna_uni_a = Units_v.shortname uni_a in
  let sna_uni_b = Units_v.shortname uni_b in
  (kin_uni_a = kin_uni_b) && (sna_uni_a = sna_uni_b)
;;

let check_are_homogeneous uni_a uni_b =
  let kin_uni_a = Units_v.kind uni_a in
  let kin_uni_b = Units_v.kind uni_b in
  if (kin_uni_a = kin_uni_b)
  then 
    begin
      let sna_uni_a = Units_v.shortname uni_a in
      let sna_uni_b = Units_v.shortname uni_b in
      
      if (sna_uni_a = sna_uni_b)
      then true 
      else
	Error_messages_v.print_fatal_error __LOC__ "are_homogeneous"
	  "units arguments had the same shortname"
	  (Format.sprintf "shortnames are %s %s" (Units_v.shortname uni_a) (Units_v.shortname uni_b))
          "Check"
    end
  else
    Error_messages_v.print_fatal_error __LOC__ "are_homogeneous"
      "units arguments had the same kind"
      (Format.sprintf "kinds are %s %s" (Units_v.kind uni_a) (Units_v.kind uni_b)) 
      "Check"
;;

let is_homogeneous_of_units_tuple uni_t =
  Tuple_v.is_true_of_predicate_of_tuple are_homogeneous uni_t 
;;

(** {6 Making} *)

let make uni_t =
  if is_homogeneous_of_units_tuple uni_t  
  then uni_t
  else failwith "Non_homogeneous_tuple:Units_tuple_v.make"
;;
