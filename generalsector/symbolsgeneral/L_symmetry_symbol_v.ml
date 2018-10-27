(** {3 A Symbol for L symmetry.} *)

let mod_nam = "L_symmetry_symbol_v";;

(** {6 Modules.} *)

(** {6 Error Printing.} *)

let print_error l mdn her =
  Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
   quantum number l >%i< not set in menu]@."
   mdn her l
;;

(** {6 Making.} *)

let make_of_int = function
  | 0 -> L_symmetry_symbol_t.S 
  | 1 -> L_symmetry_symbol_t.P 
  | 2 -> L_symmetry_symbol_t.D 
  | 3 -> L_symmetry_symbol_t.F 
  | 4 -> L_symmetry_symbol_t.G 
  | 6 -> L_symmetry_symbol_t.H 
  | 7 -> L_symmetry_symbol_t.I 
  | l -> 
      begin
	print_error l mod_nam "Lsy_of_quantum_number_l";
	assert false;
      end
;;

let make = make_of_int;;

let l_symmetry_symbol_of_int = make_of_int;;

let l_symmetry_symbol_of_index idx = 
  let i = Index_p.int_of_index idx in
  l_symmetry_symbol_of_int i
;;

let l_symmetry_symbol_of_ordinal ord = 
  let i = Ordinal_p.int_of_ordinal ord in
  l_symmetry_symbol_of_int i
;;

(** {6 Extracting.} *)

let int_of_l_symmetry_symbol = function
  | L_symmetry_symbol_t.S -> 0 
  | L_symmetry_symbol_t.P -> 1
  | L_symmetry_symbol_t.D -> 2
  | L_symmetry_symbol_t.F -> 3
  | L_symmetry_symbol_t.G -> 4
  | L_symmetry_symbol_t.H -> 5
  | L_symmetry_symbol_t.I -> 6
;;

let index_of_l_symmetry_symbol smb_lsy = 
  let i = int_of_l_symmetry_symbol smb_lsy in
    Index_p.make i
;;

(** {6 Inferring.} *)

(** {6 Converting.} *)

let name = function
  | L_symmetry_symbol_t.S -> Format.sprintf "S" 
  | L_symmetry_symbol_t.P -> Format.sprintf "P" 
  | L_symmetry_symbol_t.D -> Format.sprintf "D" 
  | L_symmetry_symbol_t.F -> Format.sprintf "F" 
  | L_symmetry_symbol_t.G -> Format.sprintf "G" 
  | L_symmetry_symbol_t.H -> Format.sprintf "H" 
  | L_symmetry_symbol_t.I -> Format.sprintf "I" 
;;

let print ppf smb_sym =
Format.fprintf ppf "%s" (name smb_sym) 
;;

