(* Reading *)
type mendeleev_symbol =
 | H                                                                                   | He
 | Li | Be                                                    | B  | C  | N  | O  | F  | Ne
 | Na | Mg                                                    | Al | Si | P  | S  | Cl | Ar
 | K  | Ca | Sc | Ti | V  | Cr | Mn | Fe | Co | Ni | Cu | Zn  | Ga | Ge | As | Se | Br | Kr
 | Rb | Sr | Y  | Zr | Nb | Mo | Tc | Ru | Rh | Pd | Ag | Cd  | In | Sn | Sb | Te | I  | Xe
 | Cs | Ba      | Hf | Ta | W  | Re | Os | Ir | Pt | Au | Hg  | Tl | Pb | Bi | Po | At | Rn
 | Fr | Ra      | Rf | Db | Sg | Bh | Hs | Mt | Uun| Uuu| Uub

 | La | Ce | Pr | Nd | Pm | Sm | Eu | Gd | Tb | Dy | Ho | Er  | Tm | Yb | Lu
 | Ac | Th | Pa | U  | Np | Pu | Am | Cm | Bk | Cf | Es | Fm  | Md | Ndod | Lr
;;


let mendeleev_symbol_of_string = function
  | "H" -> H
  | "He" -> He

  | "Li" -> Li
  | "Be" -> Be
  | "B" -> B
  | "C" -> C
  | "N" -> N
  | "O" -> O
  | "F" -> F
  | "Ne" -> Ne

  | "Na" -> Na
  | "Mg" -> Mg
  | "Al" -> Al
  | "Si" -> Si
  | "P" -> P
  | "S" -> S
  | "Cl" -> Cl
  | "Ar" -> Ar

  | "K" -> K
  | "Ca" -> Ca
  | "Sc" -> Sc
  | "Ti" -> Ti
  | "V" -> V
  | "Cr" -> Cr
  | "Mn" -> Mn
  | "Fe" -> Fe
  | "Co" -> Co
  | "Ni" -> Ni
  | "Cu" -> Cu
  | "Zn" -> Zn
  | "Ga" -> Ga
  | "Ge" -> Ge
  | "As" -> As
  | "Se" -> Se
  | "Br" -> Br
  | "Kr" -> Kr

  | "Rb" -> Rb
  | "Sr" -> Sr
  | "Y" -> Y
  | "Zr" -> Zr
  | "Nb" -> Nb
  | "Mo" -> Mo
  | "Tc" -> Tc
  | "Ru" -> Ru
  | "Rh" -> Rh
  | "Pd" -> Pd
  | "Ag" -> Ag
  | "Cd" -> Cd
  | "In" -> In
  | "Sn" -> Sn
  | "Sb" -> Sb
  | "Te" -> Te
  | "I" -> I
  | "Xe" -> Xe

  | "Cs" -> Cs
  | "Ba" -> Ba

  | "La" -> La
  | "Ce" -> Ce
  | "Pr" -> Pr
  | "Nd" -> Nd
  | "Pm" -> Pm
  | "Sm" -> Sm
  | "Eu" -> Eu
  | "Gd" -> Gd
  | "Tb" -> Tb
  | "Dy" -> Dy
  | "Ho" -> Ho
  | "Er" -> Er
  | "Tm" -> Tm
  | "Yb" -> Yb
  | "Lu" -> Lu

  | "Hf" -> Hf
  | "Ta" -> Ta
  | "W" -> W
  | "Re" -> Re
  | "Os" -> Os
  | "Ir" -> Ir
  | "Pt" -> Pt
  | "Au" -> Au
  | "Hg" -> Hg
  | "Tl" -> Tl
  | "Pb" -> Pb
  | "Bi" -> Bi
  | "Po" -> Po
  | "At" -> At
  | "Rn" -> Rn

  | "Fr" -> Fr
  | "Ra" -> Ra

  | "Ac" -> Ac
  | "Th" -> Th
  | "Pa" -> Pa
  | "U" -> U
  | "Np" -> Np
  | "Pu" -> Pu
  | "Am" -> Am
  | "Cm" -> Cm
  | "Bk" -> Bk
  | "Cf" -> Cf
  | "Es" -> Es
  | "Fm" -> Fm
  | "Md" -> Md
  | "Ndod" -> Ndod
  | "Lr" -> Lr

  | "Rf" -> Rf
  | "Db" -> Db
  | "Sg" -> Sg
  | "Bh" -> Bh
  | "Hs" -> Hs
  | "Mt" -> Mt
  | "Uun" -> Uun
  | "Uuu" -> Uuu
  | "Uub" -> Uub
  | s -> failwith 
	(Printf.sprintf "Unknown_symbol:mendeleev_symbol_of_string %s" s)
;;

type lex_class =
  | One
  | One_or_two
  | One_or_three
  | Two
;;

let letter_lex_class = function
  | 'A' -> Two
  | 'B' | 'C' -> One_or_two
  | 'D' | 'E' -> Two
  | 'F' | 'H' | 'I' | 'K' -> One_or_two
  | 'L' | 'M' -> Two
  | 'N' | 'O' | 'P' -> One_or_two
  | 'R' -> Two
  | 'S' -> One_or_two
  | 'T' -> Two
  | 'U' -> One_or_three
  | 'V' | 'W' -> One
  | 'X' -> Two
  | 'Y' -> One_or_two
  | 'Z' -> Two
  | 'G' | 'J' | 'Q' | _ as c ->
    failwith
      (Printf.sprintf
         "Atomic_symbol.read: %c is not a valid beginning for atomic symbols."
         c)
;;

let read ib =
  Scanf.bscanf ib "%0c" (fun c ->
  match letter_lex_class c with
  | One -> Scanf.bscanf ib "%1s" mendeleev_symbol_of_string
  | One_or_two ->
    Scanf.bscanf ib "%1s" (fun s1 ->
      if Scanf.Scanning.end_of_input ib 
      then mendeleev_symbol_of_string s1 
      else
	Scanf.bscanf ib "%0c" (function c2 ->
          try
            let symb = mendeleev_symbol_of_string (s1 ^ String.make 1 c2) in
            Scanf.bscanf ib "%_1s" symb
          with
          | Failure _ -> mendeleev_symbol_of_string s1))
  | Two -> Scanf.bscanf ib "%2s" mendeleev_symbol_of_string
  | One_or_three ->
      Scanf.bscanf ib "%1s" (fun s1 ->
	if Scanf.Scanning.end_of_input ib 
	then mendeleev_symbol_of_string s1 
	else
	Scanf.bscanf ib "%0c" (function
	  | 'u' -> Scanf.bscanf ib "%2s" (fun s2 -> 
	      mendeleev_symbol_of_string (s1 ^ s2))
	  | _ -> mendeleev_symbol_of_string s1)))
;;

