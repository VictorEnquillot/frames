(** {3 Shell_symmetry or L_symmetry} *)

let mod_nam = "Shell_symmetry_v";;

(** {6 Naming} *)

let name = function
  | Shell_symmetry_t.S -> Format.sprintf "s" 
  | Shell_symmetry_t.P -> Format.sprintf "p" 
  | Shell_symmetry_t.D -> Format.sprintf "d" 
  | Shell_symmetry_t.F -> Format.sprintf "f" 
  | Shell_symmetry_t.G -> Format.sprintf "g" 
  | Shell_symmetry_t.H -> Format.sprintf "h" 
  | Shell_symmetry_t.I -> Format.sprintf "i" 
;;

let string_off sym_shl = "";;

let longname sym_shl =
  (Format.sprintf "%s %s" (name sym_shl) (string_off sym_shl))
;;

let fullname sym_shl = 
  (Format.sprintf "Shell_symmetry_t.%s" (longname sym_shl))
;;

(** {6 Making} *)

let make_of_int = function
  | 0 -> Shell_symmetry_t.S 
  | 1 -> Shell_symmetry_t.P 
  | 2 -> Shell_symmetry_t.D 
  | 3 -> Shell_symmetry_t.F 
  | 4 -> Shell_symmetry_t.G 
  | 6 -> Shell_symmetry_t.H 
  | 7 -> Shell_symmetry_t.I 
  | l -> 
      let nam_mod = Management_v.local_module_name __LOC__ in
      Error_messages_v.print_fatal_error nam_mod "make_of_int"
	(Format.sprintf "L number >%i< Shell were in interval 0 .. 7" l)
	"it is NOT"
	"Add it"
;;

let make = make_of_int;;

let shell_symmetry_of_int = make_of_int;;

let shell_symmetry_of_index idx = 
  let i = Index_p.int_of_index idx in
  shell_symmetry_of_int i
;;

let shell_symmetry_of_ordinal ord = 
  let i = Ordinal_p.int_of_ordinal ord in
  shell_symmetry_of_int i
;;

(** {6 Extracting} *)

let int_of_shell_symmetry = function
  | Shell_symmetry_t.S -> 0 
  | Shell_symmetry_t.P -> 1
  | Shell_symmetry_t.D -> 2
  | Shell_symmetry_t.F -> 3
  | Shell_symmetry_t.G -> 4
  | Shell_symmetry_t.H -> 5
  | Shell_symmetry_t.I -> 6
;;

let first_int_ordinal_of_shell_symmetry_name nam =
  let nam_upp = String.uppercase nam in
  match nam_upp with
  | "S" -> 1
  | "P" -> 2
  | "D" -> 3
  | "F" -> 4
  | "G" -> 5
  | "H" -> 6
  | "I" -> 7
  | _ ->    
      Error_messages_v.print_fatal_error __LOC__ "first_int_ordinal_of_shell_symmetry" 
	(Format.sprintf "Shell symmetry >%s< were known" nam)
	"it is NOT. valid symmetry are S P D F G H I or s p d f g h i"
	"Add it"
;;

let index_of_shell_symmetry ssy = 
  let i = int_of_shell_symmetry ssy in
    Index_p.make i
;;

