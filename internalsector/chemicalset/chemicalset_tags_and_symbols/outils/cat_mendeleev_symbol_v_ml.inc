(** {3 Mendeleev Symbol functionalities.} *)

let nam_mod = "Mendeleev_symbol_v";;

module Mns_t = Mendeleev_symbol_t
module Utl_v = Utils_v
module Idx_p = Index_p
module Ord_p = Ordinal_p

let name = function
  | Mns_t.H -> "H"
  | Mns_t.He -> "He"

  | Mns_t.Li -> "Li"
  | Mns_t.Be -> "Be"
  | Mns_t.B -> "B"
  | Mns_t.C -> "C"
  | Mns_t.N -> "N"
  | Mns_t.O -> "O"
  | Mns_t.F -> "F"
  | Mns_t.Ne -> "Ne"

  | Mns_t.Na -> "Na"
  | Mns_t.Mg -> "Mg"
  | Mns_t.Al -> "Al"
  | Mns_t.Si -> "Si"
  | Mns_t.P -> "P"
  | Mns_t.S -> "S"
  | Mns_t.Cl -> "Cl"
  | Mns_t.Ar -> "Ar"

  | Mns_t.K -> "K"
  | Mns_t.Ca -> "Ca"
  | Mns_t.Sc -> "Sc"
  | Mns_t.Ti -> "Ti"
  | Mns_t.V -> "V"
  | Mns_t.Cr -> "Cr"
  | Mns_t.Mn -> "Mn"
  | Mns_t.Fe -> "Fe"
  | Mns_t.Co -> "Co"
  | Mns_t.Ni -> "Ni"
  | Mns_t.Cu -> "Cu"
  | Mns_t.Zn -> "Zn"
  | Mns_t.Ga -> "Ga"
  | Mns_t.Ge -> "Ge"
  | Mns_t.As -> "As"
  | Mns_t.Se -> "Se"
  | Mns_t.Br -> "Br"
  | Mns_t.Kr -> "Kr"

  | Mns_t.Rb -> "Rb"
  | Mns_t.Sr -> "Sr"
  | Mns_t.Y -> "Y"
  | Mns_t.Zr -> "Zr"
  | Mns_t.Nb -> "Nb"
  | Mns_t.Mo -> "Mo"
  | Mns_t.Tc -> "Tc"
  | Mns_t.Ru -> "Ru"
  | Mns_t.Rh -> "Rh"
  | Mns_t.Pd -> "Pd"
  | Mns_t.Ag -> "Ag"
  | Mns_t.Cd -> "Cd"
  | Mns_t.In -> "In"
  | Mns_t.Sn -> "Sn"
  | Mns_t.Sb -> "Sb"
  | Mns_t.Te -> "Te"
  | Mns_t.I -> "I"
  | Mns_t.Xe -> "Xe"

  | Mns_t.Cs -> "Cs"
  | Mns_t.Ba -> "Ba"

  | Mns_t.La -> "La"
  | Mns_t.Ce -> "Ce"
  | Mns_t.Pr -> "Pr"
  | Mns_t.Nd -> "Nd"
  | Mns_t.Pm -> "Pm"
  | Mns_t.Sm -> "Sm"
  | Mns_t.Eu -> "Eu"
  | Mns_t.Gd -> "Gd"
  | Mns_t.Tb -> "Tb"
  | Mns_t.Dy -> "Dy"
  | Mns_t.Ho -> "Ho"
  | Mns_t.Er -> "Er"
  | Mns_t.Tm -> "Tm"
  | Mns_t.Yb -> "Yb"
  | Mns_t.Lu -> "Lu"

  | Mns_t.Hf -> "Hf"
  | Mns_t.Ta -> "Ta"
  | Mns_t.W -> "W"
  | Mns_t.Re -> "Re"
  | Mns_t.Os -> "Os"
  | Mns_t.Ir -> "Ir"
  | Mns_t.Pt -> "Pt"
  | Mns_t.Au -> "Au"
  | Mns_t.Hg -> "Hg"
  | Mns_t.Tl -> "Tl"
  | Mns_t.Pb -> "Pb"
  | Mns_t.Bi -> "Bi"
  | Mns_t.Po -> "Po"
  | Mns_t.At -> "At"
  | Mns_t.Rn -> "Rn"

  | Mns_t.Fr -> "Fr"
  | Mns_t.Ra -> "Ra"

  | Mns_t.Ac -> "Ac"
  | Mns_t.Th -> "Th"
  | Mns_t.Pa -> "Pa"
  | Mns_t.U -> "U"
  | Mns_t.Np -> "Np"
  | Mns_t.Pu -> "Pu"
  | Mns_t.Am -> "Am"
  | Mns_t.Cm -> "Cm"
  | Mns_t.Bk -> "Bk"
  | Mns_t.Cf -> "Cf"
  | Mns_t.Es -> "Es"
  | Mns_t.Fm -> "Fm"
  | Mns_t.Md -> "Md"
  | Mns_t.Ndod -> "Ndod"
  | Mns_t.Lr -> "Lr"

  | Mns_t.Rf -> "Rf"
  | Mns_t.Db -> "Db"
  | Mns_t.Sg -> "Sg"
  | Mns_t.Bh -> "Bh"
  | Mns_t.Hs -> "Hs"
  | Mns_t.Mt -> "Mt"
  | Mns_t.Uun -> "Uun"
  | Mns_t.Uuu -> "Uuu"
  | Mns_t.Uub -> "Uub"
;;

let chemical_name = function
  | Mns_t.H -> "Hydrogen"
  | Mns_t.He -> "Helium"

  | Mns_t.Li -> "Lithium"
  | Mns_t.Be -> "Beryllium"
  | Mns_t.B -> "Boron"
  | Mns_t.C -> "Carbon"
  | Mns_t.N -> "Nitrogen"
  | Mns_t.O -> "Oxygen"
  | Mns_t.F -> "Fluorine"
  | Mns_t.Ne -> "Neon"

  | Mns_t.Na -> "Sodium"
  | Mns_t.Mg -> "Magnesium"
  | Mns_t.Al -> "Aluminium"
  | Mns_t.Si -> "Silicium"
  | Mns_t.P -> "Phosphorus"
  | Mns_t.S -> "Sulfur"
  | Mns_t.Cl -> "C_h_lorine"
  | Mns_t.Ar -> "Argon"
  | Mns_t.K -> "Potassium"
  | Mns_t.Ca -> "Calcium"
  | Mns_t.Sc -> "Scandium"
  | Mns_t.Ti -> "Titanium"
  | Mns_t.V -> "Vanadium"
  | Mns_t.Cr -> "Chromium"
  | Mns_t.Mn -> "Manganese"
  | Mns_t.Fe -> "Iron"
  | Mns_t.Co -> "Cobalt"
  | Mns_t.Ni -> "Nickel"
  | Mns_t.Cu -> "Copper"
  | Mns_t.Zn -> "Zinc"
  | Mns_t.Ga -> "Gallium"
  | Mns_t.Ge -> "Germanium"
  | Mns_t.As -> "Arsenic"
  | Mns_t.Se -> "Selenium"
  | Mns_t.Br -> "Bromine"
  | Mns_t.Kr -> "Krypton"

  | Mns_t.Rb -> "Rubidium"
  | Mns_t.Sr -> "Strontium"
  | Mns_t.Y -> "Yttrium"
  | Mns_t.Zr -> "Zirconium"
  | Mns_t.Nb -> "Niobium"
  | Mns_t.Mo -> "Molybdenum"
  | Mns_t.Tc -> "Technetium"
  | Mns_t.Ru -> "Ruthenium"
  | Mns_t.Rh -> "Rhodium"
  | Mns_t.Pd -> "Palladium"
  | Mns_t.Ag -> "Silver"
  | Mns_t.Cd -> "Cadmium"
  | Mns_t.In -> "Indium"
  | Mns_t.Sn -> "Tin"
  | Mns_t.Sb -> "Antimony"
  | Mns_t.Te -> "Tellurium"
  | Mns_t.I -> "Iodine"
  | Mns_t.Xe -> "Xenon"

  | Mns_t.Cs -> "Cesium"
  | Mns_t.Ba -> "Barium"

  | Mns_t.La -> "Lanthanum"
  | Mns_t.Ce -> "Cerium"
  | Mns_t.Pr -> "Praseodymium"
  | Mns_t.Nd -> "Neodymium"
  | Mns_t.Pm -> "Promethium"
  | Mns_t.Sm -> "Samarium"
  | Mns_t.Eu -> "Europium"
  | Mns_t.Gd -> "Gadolinium"
  | Mns_t.Tb -> "Terbium"
  | Mns_t.Dy -> "Dysprosium"
  | Mns_t.Ho -> "Holmium"
  | Mns_t.Er -> "Erbium"
  | Mns_t.Tm -> "Thulium"
  | Mns_t.Yb -> "Ytterbium"
  | Mns_t.Lu -> "Lutetium"

  | Mns_t.Hf -> "Hafnium "
  | Mns_t.Ta -> "Tantalum"
  | Mns_t.W -> "Tungsten"
  | Mns_t.Re -> "Rhenium"
  | Mns_t.Os -> "Osmium"
  | Mns_t.Ir -> "Iridium"
  | Mns_t.Pt -> "Platinum"
  | Mns_t.Au -> "Gold"
  | Mns_t.Hg -> "Mercury"
  | Mns_t.Tl -> "Thallium"
  | Mns_t.Pb -> "Lead"
  | Mns_t.Bi -> "Bismuth"
  | Mns_t.Po -> "Polonium"
  | Mns_t.At -> "Astatine"
  | Mns_t.Rn -> "Radon"

  | Mns_t.Fr -> "Francium"
  | Mns_t.Ra -> "Radium"

  | Mns_t.Ac -> "Actinium"
  | Mns_t.Th -> "Thorium"
  | Mns_t.Pa -> "Protactinium"
  | Mns_t.U -> "Uranium"
  | Mns_t.Np -> "Neptunium"
  | Mns_t.Pu -> "Plutonium"
  | Mns_t.Am -> "Americium"
  | Mns_t.Cm -> "Curium"
  | Mns_t.Bk -> "Berkelium"
  | Mns_t.Cf -> "Californium"
  | Mns_t.Es -> "Einsteinium"
  | Mns_t.Fm -> "Fermium"
  | Mns_t.Md -> "Mendelevium"
  | Mns_t.Ndod -> "Ndodbelium"
  | Mns_t.Lr -> "Lawrencium"

  | Mns_t.Rf -> "Rutherfordium"
  | Mns_t.Db -> "Dubnium"
  | Mns_t.Sg -> "Seaborgium"
  | Mns_t.Bh -> "Bohrium"
  | Mns_t.Hs -> "Hassium"
  | Mns_t.Mt -> "Meitnerium"
  | Mns_t.Uun -> "Ununnilium"
  | Mns_t.Uuu -> "Unununium"
  | Mns_t.Uub -> "Ununbium"
;;

let print_name ppf str =
  Format.fprintf ppf "%s" str
;;

let no_valence smb_atm =
  Utl_v.not_yet_implemented nam_mod
    (Printf.sprintf "no_valence %s" 
       (name smb_atm))
;;

let no_such_valence smb_atm v =
  Utl_v.not_yet_implemented nam_mod
    (Printf.sprintf "no_such_valence %i for symbol %s" v 
       (name smb_atm))
;;

let default_valence_of_mendeleev_symbol = function
  | Mns_t.H -> Idx_p.one
  | Mns_t.He -> Idx_p.zero
  | Mns_t.Li -> Idx_p.one
  | Mns_t.Be -> Idx_p.two
  | Mns_t.B -> Idx_p.three
  | Mns_t.C -> Idx_p.four
  | Mns_t.N -> Idx_p.three
  | Mns_t.O -> Idx_p.two
  | Mns_t.F -> Idx_p.one
  | Mns_t.Ne -> Idx_p.zero
  | Mns_t.Na -> Idx_p.one
  | Mns_t.Mg -> Idx_p.two
  | Mns_t.Al -> Idx_p.three
  | Mns_t.Si -> Idx_p.four
  | Mns_t.P -> Idx_p.three
  | Mns_t.S -> Idx_p.two
  | Mns_t.Cl -> Idx_p.one
  | Mns_t.Ar -> Idx_p.zero
  | Mns_t.K -> Idx_p.one
  | Mns_t.Ca -> Idx_p.two
  | Mns_t.Sc -> Idx_p.two
  | Mns_t.Ti -> Idx_p.two
  | Mns_t.V -> Idx_p.two
  | Mns_t.Cr -> Idx_p.two
  | Mns_t.Mn -> Idx_p.two
  | Mns_t.Fe -> Idx_p.three
  | Mns_t.Co -> Idx_p.two
  | Mns_t.Ni -> Idx_p.two
  | Mns_t.Cu -> Idx_p.two
  | Mns_t.Zn -> Idx_p.two
  | Mns_t.Ga -> Idx_p.two
  | Mns_t.Ge -> Idx_p.four
  | Mns_t.As -> Idx_p.three
  | Mns_t.Se -> Idx_p.two
  | Mns_t.Br -> Idx_p.one
  | Mns_t.Kr -> Idx_p.zero

  | Mns_t.Rb
  | Mns_t.Sr
  | Mns_t.Y
  | Mns_t.Zr
  | Mns_t.Nb
  | Mns_t.Mo
  | Mns_t.Tc
  | Mns_t.Ru
  | Mns_t.Rh
  | Mns_t.Pd as s -> no_valence s
  | Mns_t.Ag -> Idx_p.one
  | Mns_t.Cd
  | Mns_t.In as s -> no_valence s
  | Mns_t.Sn -> Idx_p.two
  | Mns_t.Sb
  | Mns_t.Te
  | Mns_t.I as s -> no_valence s
  | Mns_t.Xe -> Idx_p.zero

  | Mns_t.Cs
  | Mns_t.Ba

  | Mns_t.La
  | Mns_t.Ce
  | Mns_t.Pr
  | Mns_t.Nd
  | Mns_t.Pm
  | Mns_t.Sm
  | Mns_t.Eu
  | Mns_t.Gd
  | Mns_t.Tb
  | Mns_t.Dy
  | Mns_t.Ho
  | Mns_t.Er
  | Mns_t.Tm
  | Mns_t.Yb
  | Mns_t.Lu

  | Mns_t.Hf
  | Mns_t.Ta
  | Mns_t.W
  | Mns_t.Re
  | Mns_t.Os
  | Mns_t.Ir as s -> no_valence s
  | Mns_t.Pt -> Idx_p.two
  | Mns_t.Au -> Idx_p.one
  | Mns_t.Hg -> Idx_p.two
  | Mns_t.Tl as s -> no_valence s
  | Mns_t.Pb -> Idx_p.two
  | Mns_t.Bi
  | Mns_t.Po
  | Mns_t.At
  | Mns_t.Rn

  | Mns_t.Fr
  | Mns_t.Ra

  | Mns_t.Ac
  | Mns_t.Th
  | Mns_t.Pa as s -> no_valence s
  | Mns_t.U -> Idx_p.two
  | Mns_t.Np
  | Mns_t.Pu
  | Mns_t.Am
  | Mns_t.Cm
  | Mns_t.Bk
  | Mns_t.Cf
  | Mns_t.Es
  | Mns_t.Fm
  | Mns_t.Md
  | Mns_t.Ndod
  | Mns_t.Lr

  | Mns_t.Rf
  | Mns_t.Db
  | Mns_t.Sg
  | Mns_t.Bh
  | Mns_t.Hs
  | Mns_t.Mt
  | Mns_t.Uun
  | Mns_t.Uuu
  | Mns_t.Uub as s -> no_valence s
;;

let int_valence_of_mendeleev_symbol = function
  | Mns_t.H -> 1
  | Mns_t.He -> 0
  | Mns_t.Li -> 1
  | Mns_t.Be -> 2
  | Mns_t.B -> 3
  | Mns_t.C -> 4
  | Mns_t.N -> 3
  | Mns_t.O -> 2
  | Mns_t.F -> 1
  | Mns_t.Ne -> 0
  | Mns_t.Na -> 1
  | Mns_t.Mg -> 2
  | Mns_t.Al -> 3
  | Mns_t.Si -> 4
  | Mns_t.P -> 3
  | Mns_t.S -> 2
  | Mns_t.Cl -> 1
  | Mns_t.Ar -> 0
  | Mns_t.K -> 1
  | Mns_t.Ca -> 2
  | Mns_t.Sc -> 2
  | Mns_t.Ti -> 2
  | Mns_t.V -> 2
  | Mns_t.Cr -> 2
  | Mns_t.Mn -> 2
  | Mns_t.Fe -> 3
  | Mns_t.Co -> 2
  | Mns_t.Ni -> 2
  | Mns_t.Cu -> 2
  | Mns_t.Zn -> 2
  | Mns_t.Ga -> 2
  | Mns_t.Ge -> 4
  | Mns_t.As -> 3
  | Mns_t.Se -> 2
  | Mns_t.Br -> 1
  | Mns_t.Kr -> 0

  | Mns_t.Rb
  | Mns_t.Sr
  | Mns_t.Y
  | Mns_t.Zr
  | Mns_t.Nb
  | Mns_t.Mo
  | Mns_t.Tc
  | Mns_t.Ru
  | Mns_t.Rh
  | Mns_t.Pd as s -> no_valence s
  | Mns_t.Ag -> 1
  | Mns_t.Cd
  | Mns_t.In as s -> no_valence s
  | Mns_t.Sn -> 2
  | Mns_t.Sb
  | Mns_t.Te
  | Mns_t.I as s -> no_valence s
  | Mns_t.Xe -> 0

  | Mns_t.Cs
  | Mns_t.Ba

  | Mns_t.La
  | Mns_t.Ce
  | Mns_t.Pr
  | Mns_t.Nd
  | Mns_t.Pm
  | Mns_t.Sm
  | Mns_t.Eu
  | Mns_t.Gd
  | Mns_t.Tb
  | Mns_t.Dy
  | Mns_t.Ho
  | Mns_t.Er
  | Mns_t.Tm
  | Mns_t.Yb
  | Mns_t.Lu

  | Mns_t.Hf
  | Mns_t.Ta
  | Mns_t.W
  | Mns_t.Re
  | Mns_t.Os
  | Mns_t.Ir as s -> no_valence s
  | Mns_t.Pt -> 2
  | Mns_t.Au -> 1
  | Mns_t.Hg -> 2
  | Mns_t.Tl as s -> no_valence s
  | Mns_t.Pb -> 2
  | Mns_t.Bi
  | Mns_t.Po
  | Mns_t.At
  | Mns_t.Rn

  | Mns_t.Fr
  | Mns_t.Ra

  | Mns_t.Ac
  | Mns_t.Th
  | Mns_t.Pa as s -> no_valence s
  | Mns_t.U -> 2
  | Mns_t.Np
  | Mns_t.Pu
  | Mns_t.Am
  | Mns_t.Cm
  | Mns_t.Bk
  | Mns_t.Cf
  | Mns_t.Es
  | Mns_t.Fm
  | Mns_t.Md
  | Mns_t.Ndod
  | Mns_t.Lr

  | Mns_t.Rf
  | Mns_t.Db
  | Mns_t.Sg
  | Mns_t.Bh
  | Mns_t.Hs
  | Mns_t.Mt
  | Mns_t.Uun
  | Mns_t.Uuu
  | Mns_t.Uub as s -> no_valence s
;;

let default_valence_of_mendeleev_symbol smb =
  Idx_p.make (int_valence_of_mendeleev_symbol smb)
;;

let allowed_int_valence_of_mendeleev_symbol s v =
  match s, v with
  | Mns_t.H, 1 -> v
  | Mns_t.He, 0 -> v
  | Mns_t.Li, 1 -> v
  | Mns_t.Be, 2 -> v
  | Mns_t.B, 3 -> v
  | Mns_t.C, 4 -> 4
  | Mns_t.N, (3 | 4 | 5) -> v
  | Mns_t.O, 2 -> v
  | Mns_t.F, 1 -> v
  | Mns_t.Ne, 0 -> v
  | Mns_t.Na, 1 -> v
  | Mns_t.Mg, 2 -> v
  | Mns_t.Al, 3 -> v
  | Mns_t.Si, (3 | 4) -> v
  | Mns_t.P, (3 | 5) -> v
  | Mns_t.S, (2 | 4 | 6) -> v
  | Mns_t.Cl, (1 | 3 | 5 | 7) -> v
  | Mns_t.Ar, 0 -> v
  | Mns_t.K, 1 -> v
  | Mns_t.Ca, 2 -> v
  | Mns_t.Sc, (2 | 3) -> v
  | Mns_t.Ti, (2 | 3 | 4) -> v
  | Mns_t.V, (2 | 3 | 4 | 5) -> v
  | Mns_t.Cr, (2 | 3 | 4 | 5 | 6) -> v
  | Mns_t.Mn, (2 | 3 | 4 | 7) -> v
  | Mns_t.Fe, (2 | 3) -> v
  | Mns_t.Co, (2 | 3 | 4) -> v
  | Mns_t.Ni, (1 | 2 | 3 | 4) -> v
  | Mns_t.Cu, 2 -> v
  | Mns_t.Zn, 2 -> v
  | Mns_t.Ga, (1 | 2 | 3) -> v
  | Mns_t.Ge, (1 | 4) -> v
  | Mns_t.As, (3 | 4 | 5) -> v
  | Mns_t.Se, (2 | 3) -> v
  | Mns_t.Br, (1 | 2) -> v
  | Mns_t.Kr, 0 -> v

  | Mns_t.Rb
  | Mns_t.Sr
  | Mns_t.Y
  | Mns_t.Zr
  | Mns_t.Nb
  | Mns_t.Mo
  | Mns_t.Tc
  | Mns_t.Ru
  | Mns_t.Rh
  | Mns_t.Pd as s, _ -> no_valence s
  | Mns_t.Ag, 1 -> v
  | Mns_t.Cd
  | Mns_t.In as s, _ -> no_valence s
  | Mns_t.Sn, (2 | 4) -> v
  | Mns_t.Sb
  | Mns_t.Te
  | Mns_t.I  as s, _ -> no_valence s
  | Mns_t.Xe, 0 -> v

  | Mns_t.Cs
  | Mns_t.Ba

  | Mns_t.La
  | Mns_t.Ce
  | Mns_t.Pr
  | Mns_t.Nd
  | Mns_t.Pm
  | Mns_t.Sm
  | Mns_t.Eu
  | Mns_t.Gd
  | Mns_t.Tb
  | Mns_t.Dy
  | Mns_t.Ho
  | Mns_t.Er
  | Mns_t.Tm
  | Mns_t.Yb
  | Mns_t.Lu

  | Mns_t.Hf
  | Mns_t.Ta
  | Mns_t.W
  | Mns_t.Re
  | Mns_t.Os
  | Mns_t.Ir as s, _ -> no_valence s
  | Mns_t.Pt, (2 | 4 | 6) -> v
  | Mns_t.Au, (1 | 3) -> v
  | Mns_t.Hg, (1 | 2) -> v
  | Mns_t.Tl as s, _ -> no_valence s
  | Mns_t.Pb, (1 | 2 | 4) -> v
  | Mns_t.Bi
  | Mns_t.Po
  | Mns_t.At
  | Mns_t.Rn

  | Mns_t.Fr
  | Mns_t.Ra

  | Mns_t.Ac
  | Mns_t.Th
  | Mns_t.Pa as s, _ -> no_valence s
  | Mns_t.U, ( 2 | 3 | 5 | 6) -> v
  | Mns_t.Np
  | Mns_t.Pu
  | Mns_t.Am
  | Mns_t.Cm
  | Mns_t.Bk
  | Mns_t.Cf
  | Mns_t.Es
  | Mns_t.Fm
  | Mns_t.Md
  | Mns_t.Ndod
  | Mns_t.Lr

  | Mns_t.Rf
  | Mns_t.Db
  | Mns_t.Sg
  | Mns_t.Bh
  | Mns_t.Hs
  | Mns_t.Mt
  | Mns_t.Uun
  | Mns_t.Uuu
  | Mns_t.Uub as s, _ -> no_valence s
  | s, v -> no_such_valence s v
;;

let allowed_valence_of_mendeleev_symbol smb vl =
 let i = 
   allowed_int_valence_of_mendeleev_symbol smb (Idx_p.int_of_index vl)
 in 
 Idx_p.make i
;;

let one_amu = 1.66053886e-27;; (* in Kg *)

let one_au = 9.1093826e-31;; (* in Kg *)

let convert_amu_to_au a =
  let k = one_amu /. one_au in  (* k = 1822.88847984055474 *)
  a *. k
;;

let amu_of_symbol = function
  | Mns_t.H -> 1.00794
  | Mns_t.He -> 4.002602

  | Mns_t.Li -> 6.941
  | Mns_t.Be -> 9.012182
  | Mns_t.B -> 10.811
  | Mns_t.C -> 12.0107
  | Mns_t.N -> 14.00674
  | Mns_t.O -> 15.9994
  | Mns_t.F -> 18.998404
  | Mns_t.Ne -> 20.1797
  | Mns_t.Na -> 22.98977
  | Mns_t.Mg -> 24.305
  | Mns_t.Al -> 26.981539
  | Mns_t.Si -> 28.0855
  | Mns_t.P -> 30.97376
  | Mns_t.S -> 32.066
  | Mns_t.Cl -> 35.4527
  | Mns_t.Ar -> 39.948

  | Mns_t.K -> 39.0983
  | Mns_t.Ca -> 40.078
  | Mns_t.Sc -> 44.95591
  | Mns_t.Ti -> 47.867
  | Mns_t.V -> 50.9415
  | Mns_t.Cr -> 51.9961
  | Mns_t.Mn -> 54.93805
  | Mns_t.Fe -> 55.845
  | Mns_t.Co -> 58.9332
  | Mns_t.Ni -> 58.6934
  | Mns_t.Cu -> 63.546
  | Mns_t.Zn -> 65.39
  | Mns_t.Ga -> 69.723
  | Mns_t.Ge -> 72.61
  | Mns_t.As -> 74.9216
  | Mns_t.Se -> 78.96
  | Mns_t.Br -> 79.904
  | Mns_t.Kr -> 83.8

  | Mns_t.Rb -> 85.4678
  | Mns_t.Sr -> 87.62
  | Mns_t.Y -> 88.90585
  | Mns_t.Zr -> 91.224
  | Mns_t.Nb -> 92.90638
  | Mns_t.Mo -> 95.94
  | Mns_t.Tc -> 98.0
  | Mns_t.Ru -> 101.07
  | Mns_t.Rh -> 102.9055
  | Mns_t.Pd -> 106.42
  | Mns_t.Ag -> 107.8682
  | Mns_t.Cd -> 112.411
  | Mns_t.In -> 114.818
  | Mns_t.Sn -> 118.71
  | Mns_t.Sb -> 121.76
  | Mns_t.Te -> 127.6
  | Mns_t.I -> 126.90447
  | Mns_t.Xe -> 131.29

  | Mns_t.Cs -> 132.90546
  | Mns_t.Ba -> 137.327

  | Mns_t.La -> 138.9055
  | Mns_t.Ce -> 140.116
  | Mns_t.Pr -> 140.90765
  | Mns_t.Nd -> 144.24
  | Mns_t.Pm -> 145.0
  | Mns_t.Sm -> 150.36
  | Mns_t.Eu -> 151.964
  | Mns_t.Gd -> 157.25
  | Mns_t.Tb -> 158.92534
  | Mns_t.Dy -> 162.5
  | Mns_t.Ho -> 164.93031
  | Mns_t.Er -> 167.26
  | Mns_t.Tm -> 168.9342
  | Mns_t.Yb -> 173.04
  | Mns_t.Lu -> 174.967

  | Mns_t.Hf -> 178.49
  | Mns_t.Ta -> 180.9479
  | Mns_t.W -> 183.84
  | Mns_t.Re -> 186.207
  | Mns_t.Os -> 190.23
  | Mns_t.Ir -> 192.217
  | Mns_t.Pt -> 195.078
  | Mns_t.Au -> 196.96655
  | Mns_t.Hg -> 200.59
  | Mns_t.Tl -> 204.3833
  | Mns_t.Pb -> 207.2
  | Mns_t.Bi -> 208.98038
  | Mns_t.Po -> 209.0
  | Mns_t.At -> 210.0
  | Mns_t.Rn -> 222.0

  | Mns_t.Fr -> 223.0
  | Mns_t.Ra -> 226.0

  | Mns_t.Ac -> 227.0
  | Mns_t.Th -> 232.0381
  | Mns_t.Pa -> 231.03587
  | Mns_t.U -> 238.0289
  | Mns_t.Np -> 237.0
  | Mns_t.Pu -> 244.0
  | Mns_t.Am -> 243.0
  | Mns_t.Cm -> 247.0
  | Mns_t.Bk -> 247.0
  | Mns_t.Cf -> 251.0
  | Mns_t.Es -> 252.0
  | Mns_t.Fm -> 257.0
  | Mns_t.Md -> 258.0
  | Mns_t.Ndod -> 259.0
  | Mns_t.Lr -> 262.0

  | Mns_t.Rf -> 261.0
  | Mns_t.Db -> 262.0
  | Mns_t.Sg -> 263.0
  | Mns_t.Bh -> 262.0
  | Mns_t.Hs -> 265.0
  | Mns_t.Mt -> 266.0
  | Mns_t.Uun -> 269.0
  | Mns_t.Uuu -> 272.0
  | Mns_t.Uub -> 277.0
;;

let au_mass s = convert_amu_to_au (amu_of_symbol s);;

let atomic_mass cs s = au_mass s *. cs.System_units_t.me;;

let make_nucleon_cast p n = {
  Mns_t.proton_count = Ord_p.make p;
  Mns_t.neutron_count = Idx_p.make n;
}

let nucleon_cast_of_mendeleev_symbol = function
  | Mns_t.H -> make_nucleon_cast 1 0
  | Mns_t.He -> make_nucleon_cast 2 2
  | Mns_t.Li -> make_nucleon_cast 3 3
  | Mns_t.Be -> make_nucleon_cast 4 4
  | Mns_t.B -> make_nucleon_cast 5 5
  | Mns_t.C -> make_nucleon_cast 6 6
  | Mns_t.N -> make_nucleon_cast 7 7
  | Mns_t.O -> make_nucleon_cast 8 8
  | Mns_t.F -> make_nucleon_cast 9 9
  | Mns_t.Ne -> make_nucleon_cast 10 10
  | Mns_t.Na -> make_nucleon_cast 11 12
  | Mns_t.Mg -> make_nucleon_cast 12 12
  | Mns_t.Al -> make_nucleon_cast 13 14
  | Mns_t.Si -> 
      make_nucleon_cast 14 14
  | Mns_t.P -> 
      make_nucleon_cast 15 16
  | Mns_t.S -> make_nucleon_cast 16 16
  | Mns_t.Cl -> make_nucleon_cast 17 18
  | Mns_t.Ar -> make_nucleon_cast 18 18
  | Mns_t.K -> make_nucleon_cast 19 20
  | Mns_t.Ca -> make_nucleon_cast 20 20
  | Mns_t.Sc -> make_nucleon_cast 21 24
  | Mns_t.Ti -> make_nucleon_cast 22 26
  | Mns_t.V -> make_nucleon_cast 23 28
  | Mns_t.Cr -> make_nucleon_cast 24 28
  | Mns_t.Mn -> make_nucleon_cast 25 30
  | Mns_t.Fe -> make_nucleon_cast 26 30
  | Mns_t.Co -> make_nucleon_cast 27 32
  | Mns_t.Ni -> make_nucleon_cast 28 31
  | Mns_t.Cu -> make_nucleon_cast 29 35
  | Mns_t.Zn -> make_nucleon_cast 30 35
  | Mns_t.Ga -> make_nucleon_cast 31 39
  | Mns_t.Ge -> make_nucleon_cast 32 41
  | Mns_t.As -> make_nucleon_cast 33 42
  | Mns_t.Se -> make_nucleon_cast 34 45
  | Mns_t.Br -> make_nucleon_cast 35 45
  | Mns_t.Kr -> make_nucleon_cast 36 48

  | Mns_t.Rb -> make_nucleon_cast 37 48
  | Mns_t.Sr -> make_nucleon_cast 38 50
  | Mns_t.Y -> make_nucleon_cast 39 50
  | Mns_t.Zr -> make_nucleon_cast 40 51
  | Mns_t.Nb -> make_nucleon_cast 41 52
  | Mns_t.Mo -> make_nucleon_cast 42 54
  | Mns_t.Tc -> make_nucleon_cast 43 55
  | Mns_t.Ru -> make_nucleon_cast 44 57
  | Mns_t.Rh -> make_nucleon_cast 45 58
  | Mns_t.Pd -> make_nucleon_cast 46 60
  | Mns_t.Ag -> make_nucleon_cast 47 61
  | Mns_t.Cd -> make_nucleon_cast 48 64
  | Mns_t.In -> make_nucleon_cast 49 66
  | Mns_t.Sn -> make_nucleon_cast 50 69
  | Mns_t.Sb -> make_nucleon_cast 51 71
  | Mns_t.Te -> make_nucleon_cast 52 76
  | Mns_t.I -> make_nucleon_cast 53 74
  | Mns_t.Xe -> make_nucleon_cast 54 77

  | Mns_t.Cs -> make_nucleon_cast 55 78
  | Mns_t.Ba -> make_nucleon_cast 56 81

  | Mns_t.La -> make_nucleon_cast 57 82
  | Mns_t.Ce -> make_nucleon_cast 58 82
  | Mns_t.Pr -> make_nucleon_cast 59 82
  | Mns_t.Nd -> make_nucleon_cast 60 84
  | Mns_t.Pm -> make_nucleon_cast 61 84
  | Mns_t.Sm -> make_nucleon_cast 62 88
  | Mns_t.Eu -> make_nucleon_cast 63 89
  | Mns_t.Gd -> make_nucleon_cast 64 93
  | Mns_t.Tb -> make_nucleon_cast 65 94
  | Mns_t.Dy -> make_nucleon_cast 66 97
  | Mns_t.Ho -> make_nucleon_cast 67 98
  | Mns_t.Er -> make_nucleon_cast 68 99
  | Mns_t.Tm -> make_nucleon_cast 69 100
  | Mns_t.Yb -> make_nucleon_cast 70 103
  | Mns_t.Lu -> make_nucleon_cast 71 104

  | Mns_t.Hf -> make_nucleon_cast 72 106
  | Mns_t.Ta -> make_nucleon_cast 73 108
  | Mns_t.W -> make_nucleon_cast 74 110
  | Mns_t.Re -> make_nucleon_cast 75 111
  | Mns_t.Os -> make_nucleon_cast 76 114
  | Mns_t.Ir -> make_nucleon_cast 77 115
  | Mns_t.Pt -> make_nucleon_cast 78 117
  | Mns_t.Au -> make_nucleon_cast 79 118
  | Mns_t.Hg -> make_nucleon_cast 80 121
  | Mns_t.Tl -> make_nucleon_cast 81 123
  | Mns_t.Pb -> make_nucleon_cast 82 125
  | Mns_t.Bi -> make_nucleon_cast 83 126
  | Mns_t.Po -> make_nucleon_cast 84 125
  | Mns_t.At -> make_nucleon_cast 85 125
  | Mns_t.Rn -> make_nucleon_cast 86 136

  | Mns_t.Fr -> make_nucleon_cast 87 136
  | Mns_t.Ra -> make_nucleon_cast 88 138

  | Mns_t.Ac -> make_nucleon_cast 89 138
  | Mns_t.Th -> make_nucleon_cast 90 142
  | Mns_t.Pa -> make_nucleon_cast 91 140
  | Mns_t.U -> make_nucleon_cast 92 146
  | Mns_t.Np -> make_nucleon_cast 93 144
  | Mns_t.Pu -> make_nucleon_cast 94 150
  | Mns_t.Am -> make_nucleon_cast 95 148
  | Mns_t.Cm -> make_nucleon_cast 96 151
  | Mns_t.Bk -> make_nucleon_cast 97 150
  | Mns_t.Cf -> make_nucleon_cast 98 153
  | Mns_t.Es -> make_nucleon_cast 99 153
  | Mns_t.Fm -> make_nucleon_cast 100 157
  | Mns_t.Md -> make_nucleon_cast 101 157
  | Mns_t.Ndod -> make_nucleon_cast 102 157
  | Mns_t.Lr -> make_nucleon_cast 103 159

  | Mns_t.Rf -> make_nucleon_cast 104 157
  | Mns_t.Db -> make_nucleon_cast 105 157
  | Mns_t.Sg -> make_nucleon_cast 106 157
  | Mns_t.Bh -> make_nucleon_cast 107 155
  | Mns_t.Hs -> make_nucleon_cast 108 155
  | Mns_t.Mt -> make_nucleon_cast 109 155
  | Mns_t.Uun -> make_nucleon_cast 110 159
  | Mns_t.Uuu -> make_nucleon_cast 111 161
  | Mns_t.Uub -> make_nucleon_cast 112 165
;;

let mendeleev_symbol_of_string = function
  | "H" -> Mns_t.H
  | "He" -> Mns_t.He

  | "Li" -> Mns_t.Li
  | "Be" -> Mns_t.Be
  | "B" -> Mns_t.B
  | "C" -> Mns_t.C
  | "N" -> Mns_t.N
  | "O" -> Mns_t.O
  | "F" -> Mns_t.F
  | "Ne" -> Mns_t.Ne

  | "Na" -> Mns_t.Na
  | "Mg" -> Mns_t.Mg
  | "Al" -> Mns_t.Al
  | "Si" -> Mns_t.Si
  | "P" -> Mns_t.P
  | "S" -> Mns_t.S
  | "Cl" -> Mns_t.Cl
  | "Ar" -> Mns_t.Ar

  | "K" -> Mns_t.K
  | "Ca" -> Mns_t.Ca
  | "Sc" -> Mns_t.Sc
  | "Ti" -> Mns_t.Ti
  | "V" -> Mns_t.V
  | "Cr" -> Mns_t.Cr
  | "Mn" -> Mns_t.Mn
  | "Fe" -> Mns_t.Fe
  | "Co" -> Mns_t.Co
  | "Ni" -> Mns_t.Ni
  | "Cu" -> Mns_t.Cu
  | "Zn" -> Mns_t.Zn
  | "Ga" -> Mns_t.Ga
  | "Ge" -> Mns_t.Ge
  | "As" -> Mns_t.As
  | "Se" -> Mns_t.Se
  | "Br" -> Mns_t.Br
  | "Kr" -> Mns_t.Kr

  | "Rb" -> Mns_t.Rb
  | "Sr" -> Mns_t.Sr
  | "Y" -> Mns_t.Y
  | "Zr" -> Mns_t.Zr
  | "Nb" -> Mns_t.Nb
  | "Mo" -> Mns_t.Mo
  | "Tc" -> Mns_t.Tc
  | "Ru" -> Mns_t.Ru
  | "Rh" -> Mns_t.Rh
  | "Pd" -> Mns_t.Pd
  | "Ag" -> Mns_t.Ag
  | "Cd" -> Mns_t.Cd
  | "In" -> Mns_t.In
  | "Sn" -> Mns_t.Sn
  | "Sb" -> Mns_t.Sb
  | "Te" -> Mns_t.Te
  | "I" -> Mns_t.I
  | "Xe" -> Mns_t.Xe

  | "Cs" -> Mns_t.Cs
  | "Ba" -> Mns_t.Ba

  | "La" -> Mns_t.La
  | "Ce" -> Mns_t.Ce
  | "Pr" -> Mns_t.Pr
  | "Nd" -> Mns_t.Nd
  | "Pm" -> Mns_t.Pm
  | "Sm" -> Mns_t.Sm
  | "Eu" -> Mns_t.Eu
  | "Gd" -> Mns_t.Gd
  | "Tb" -> Mns_t.Tb
  | "Dy" -> Mns_t.Dy
  | "Ho" -> Mns_t.Ho
  | "Er" -> Mns_t.Er
  | "Tm" -> Mns_t.Tm
  | "Yb" -> Mns_t.Yb
  | "Lu" -> Mns_t.Lu

  | "Hf" -> Mns_t.Hf
  | "Ta" -> Mns_t.Ta
  | "W" -> Mns_t.W
  | "Re" -> Mns_t.Re
  | "Os" -> Mns_t.Os
  | "Ir" -> Mns_t.Ir
  | "Pt" -> Mns_t.Pt
  | "Au" -> Mns_t.Au
  | "Hg" -> Mns_t.Hg
  | "Tl" -> Mns_t.Tl
  | "Pb" -> Mns_t.Pb
  | "Bi" -> Mns_t.Bi
  | "Po" -> Mns_t.Po
  | "At" -> Mns_t.At
  | "Rn" -> Mns_t.Rn

  | "Fr" -> Mns_t.Fr
  | "Ra" -> Mns_t.Ra

  | "Ac" -> Mns_t.Ac
  | "Th" -> Mns_t.Th
  | "Pa" -> Mns_t.Pa
  | "U" -> Mns_t.U
  | "Np" -> Mns_t.Np
  | "Pu" -> Mns_t.Pu
  | "Am" -> Mns_t.Am
  | "Cm" -> Mns_t.Cm
  | "Bk" -> Mns_t.Bk
  | "Cf" -> Mns_t.Cf
  | "Es" -> Mns_t.Es
  | "Fm" -> Mns_t.Fm
  | "Md" -> Mns_t.Md
  | "Ndod" -> Mns_t.Ndod
  | "Lr" -> Mns_t.Lr

  | "Rf" -> Mns_t.Rf
  | "Db" -> Mns_t.Db
  | "Sg" -> Mns_t.Sg
  | "Bh" -> Mns_t.Bh
  | "Hs" -> Mns_t.Hs
  | "Mt" -> Mns_t.Mt
  | "Uun" -> Mns_t.Uun
  | "Uuu" -> Mns_t.Uuu
  | "Uub" -> Mns_t.Uub
  | s -> failwith (Printf.sprintf "Unknown_symbol:mendeleev_symbol_of_string %s" s)
;;

let proton_count_of_mendeleev_symbol smb_mnd =
  let nst = nucleon_cast_of_mendeleev_symbol smb_mnd in
  nst.Mns_t.proton_count 
;;

let neutron_count_of_mendeleev_symbol smb_mnd =
  let nst = nucleon_cast_of_mendeleev_symbol smb_mnd in
  nst.Mns_t.neutron_count
;;

let nucleon_count_of_nucleon_cast nst =
  let cnt_prt = nst.Mns_t.proton_count in
  let cnt_ntr = nst.Mns_t.neutron_count in
  let i =   
    (Ord_p.int_of_ordinal cnt_prt) + (Idx_p.int_of_index cnt_ntr)
  in
  Ord_p.make i
;;
  
let nucleon_count_of_mendeleev_symbol smb_mnd =
  let nst = nucleon_cast_of_mendeleev_symbol smb_mnd in
  nucleon_count_of_nucleon_cast nst
;;

let print_valence ppf v =
  Format.fprintf ppf "%a" Idx_p.print_as_int v
;;

let print_tie ppf t =
  Format.fprintf ppf "%a" Idx_p.print_as_int t
;;

let print_neutron_count ppf cnt_ntr =
  Format.fprintf ppf "%a" Idx_p.print_as_int cnt_ntr
;;

let print_nucleon_count ppf cnt_ncn =
  Format.fprintf ppf "%a" Ord_p.print_as_int cnt_ncn
;;

let print_proton_count ppf prt =
  Format.fprintf ppf "%a" Ord_p.print_as_int prt
;;

let print ppf smb_mnd =
  Format.fprintf ppf "%s" (name smb_mnd)
;;

let list1_only = [ Mns_t.V; Mns_t.W; ]
;;

let list1_or_2 = [
  Mns_t.B; Mns_t.C; Mns_t.F; Mns_t.H; Mns_t.I; Mns_t.K; 
  Mns_t.N; Mns_t.O; Mns_t.P; Mns_t.S; Mns_t.Y;
]
;;

let list1_or_3 = [ Mns_t.U ]
;;

let list = [
  Mns_t.Ac; Mns_t.Ag; Mns_t.Al; Mns_t.Am; Mns_t.Ar; Mns_t.As; Mns_t.At; Mns_t.Au;
 Mns_t.B ; Mns_t.Ba; Mns_t.Be; Mns_t.Bh; Mns_t.Bi; Mns_t.Bk; Mns_t.Br;
 Mns_t.C ; Mns_t.Ca; Mns_t.Cd; Mns_t.Ce; Mns_t.Cf; Mns_t.Cl; Mns_t.Cm; Mns_t.Co; Mns_t.Cr; Mns_t.Cs; Mns_t.Cu;
 Mns_t.Db; Mns_t.Dy;
 Mns_t.Er; Mns_t.Es; Mns_t.Eu;
 Mns_t.F ; Mns_t.Fe; Mns_t.Fm; Mns_t.Fr; Mns_t.Ga; Mns_t.Gd; Mns_t.Ge;
 Mns_t.H ; Mns_t.He; Mns_t.Hf; Mns_t.Hg; Mns_t.Ho; Mns_t.Hs;
 Mns_t.I ; Mns_t.In; Mns_t.Ir;
 Mns_t.K ; Mns_t.Kr;
 Mns_t.La; Mns_t.Li; Mns_t.Lr; Mns_t.Lu;
 Mns_t.Md; Mns_t.Mg; Mns_t.Mn; Mns_t.Mo; Mns_t.Mt;
 Mns_t.N ; Mns_t.Na; Mns_t.Nb; Mns_t.Nd; Mns_t.Ne; Mns_t.Ni; Mns_t.Ndod; Mns_t.Np;
 Mns_t.O ; Mns_t.Os;
 Mns_t.P ; Mns_t.Pa; Mns_t.Pb; Mns_t.Pd; Mns_t.Pm; Mns_t.Po; Mns_t.Pr; Mns_t.Pt; Mns_t.Pu;
 Mns_t.Ra; Mns_t.Rb; Mns_t.Re; Mns_t.Rf; Mns_t.Rh; Mns_t.Rn; Mns_t.Ru;
 Mns_t.S ; Mns_t.Sb; Mns_t.Sc; Mns_t.Se; Mns_t.Sg; Mns_t.Si; Mns_t.Sm; Mns_t.Sn; Mns_t.Sr;
 Mns_t.Ta; Mns_t.Tb; Mns_t.Tc; Mns_t.Te; Mns_t.Th; Mns_t.Ti; Mns_t.Tl; Mns_t.Tm;
 Mns_t.U ; Mns_t.Uub; Mns_t.Uun; Mns_t.Uuu;
 Mns_t.V ;
 Mns_t.W ;
 Mns_t.Xe;
 Mns_t.Y ; Mns_t.Yb;
 Mns_t.Zn; Mns_t.Zr;
]
;;

(* Reading *)

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
  let str = Scanf.bscanf ib "%s" (fun s -> s) in
  let len = String.length str in

  Scanf.sscanf str "%0c" (fun c ->
    match letter_lex_class c with
    | One -> 
	if len = 1 
	then 
	  Scanf.sscanf str "%1s" mendeleev_symbol_of_string 
	else failwith "One_character:read"
    | One_or_two ->
	if len = 1 
	then 
	  Scanf.sscanf str "%1s" mendeleev_symbol_of_string 
        else if len = 2
	then Scanf.sscanf str "%2s" mendeleev_symbol_of_string 
	else failwith "One_or_two_characters:read"
    | Two -> 
	if len = 2
	then Scanf.sscanf str "%2s" mendeleev_symbol_of_string 
	else failwith "Two_characters:read"
    | One_or_three ->
	if len = 1 
	then 
	  Scanf.sscanf str "%1s" mendeleev_symbol_of_string 
        else if len = 3
	then Scanf.sscanf str "%3s" mendeleev_symbol_of_string 
	else failwith "One_or_three_characters:read"
			 )
;;

let compare smb_mnd_a smb_mnd_b =
  String.compare (name smb_mnd_a) (name smb_mnd_b) 
;;
