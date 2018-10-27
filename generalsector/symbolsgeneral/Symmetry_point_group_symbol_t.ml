(**
{[ http://en.wikipedia.org/wiki/List_of_character_tables_for_chemically_important_3D_point_groups.
    http://symmetry.jacobs-university.de
]}
*)

type symmetry_point_group_symbol = 
  | Nonaxial of nonaxial_group_symbol
  | Cn of cyclic_group_symbol
  | Cnh of reflection_group_symbol
  | Cnv of pyramidal_group_symbol
  | Sn of improperrotation_group_symbol
  | Dn of dihedral_group_symbol 
  | Dnh of prismatic_group_symbol 
  | Dnd of antiprismatic_group_symbol
  | Cubic of cubic_group_symbol
  | Linear of linear_group_symbol

and nonaxial_group_symbol =
  | C1 | Cs | Ci
and cyclic_group_symbol =
  | C2 | C3 | C4 | C5 | C6
and reflection_group_symbol =
  | C2h  | C3h  | C4h  | C5h  | C6h
and pyramidal_group_symbol =
  | C2v  | C3v  | C4v  | C5v  | C6v
and improperrotation_group_symbol =
  | S4  | S6  | S8 | S10
and dihedral_group_symbol =
  | D2  | D3  | D4  | D5  | D6
and prismatic_group_symbol =
  | D2h  | D3h  | D4h  | D5h  | D6h
and antiprismatic_group_symbol =
  | D2d  | D3d  | D4d  | D5d  | D6d
and cubic_group_symbol =
  | Td  | Oh | Ih
and linear_group_symbol =
  | Cinfv | Dinfh
;;
