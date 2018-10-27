open Make_test_v;;

testing "Db1_lexeme_v with
   Db1_lexeme_u_any.ml";;

(* toplevel 
   #use "Db1_lexeme_u_any.ml";;

*)


Parameters_general_register_v.store_force "debug" "Db1_lexeme_v";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

let nof = "../triangle_isoacute.db1";;
let sbu = File_v.scanf_scanning_in_channel_of_fullnameoffile nof;;

let lex_l = Db1_lexeme_v.db1_lexeme_list_of_scanbuf sbu;;

test_number 1 (
lex_l 
(* : Db1_lexeme_t.db1_lexeme list *)
=
  [Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_units_length;
   Db1_lexeme_t.Db1_lexeme_name "nanometer"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_kind;
   Db1_lexeme_t.Db1_lexeme_name "cartesian"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_triangle;
   Db1_lexeme_t.Db1_lexeme_name "T"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "T_A"; Db1_lexeme_t.Db1_lexeme_float 0.1;
   Db1_lexeme_t.Db1_lexeme_float 0.2; Db1_lexeme_t.Db1_lexeme_float (-0.2);
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "T_B"; Db1_lexeme_t.Db1_lexeme_float 0.;
   Db1_lexeme_t.Db1_lexeme_float 0.; Db1_lexeme_t.Db1_lexeme_float (-0.2);
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "T_C"; Db1_lexeme_t.Db1_lexeme_float 0.2;
   Db1_lexeme_t.Db1_lexeme_float 0.; Db1_lexeme_t.Db1_lexeme_float (-0.2);
   Db1_lexeme_t.Db1_lexeme_eol]
);;

let nof = "../triangle_isoright.db1";;
let sbu = File_v.scanf_scanning_in_channel_of_fullnameoffile nof;;

let lex_l = Db1_lexeme_v.db1_lexeme_list_of_scanbuf sbu;;

test_number 2 (
lex_l 
(* : Db1_lexeme_t.db1_lexeme list *)
=
  [Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_units_length;
   Db1_lexeme_t.Db1_lexeme_name "angstrom";
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_kind;
   Db1_lexeme_t.Db1_lexeme_name "cartesian";
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_triangle;
   Db1_lexeme_t.Db1_lexeme_name "U";
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "U_A";
   Db1_lexeme_t.Db1_lexeme_float 0.;
   Db1_lexeme_t.Db1_lexeme_float 0.;
   Db1_lexeme_t.Db1_lexeme_float (-3.);
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "U_B";
   Db1_lexeme_t.Db1_lexeme_float 0.;
   Db1_lexeme_t.Db1_lexeme_float 1.;
   Db1_lexeme_t.Db1_lexeme_float (-3.);
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "U_C";
   Db1_lexeme_t.Db1_lexeme_float 1.;
   Db1_lexeme_t.Db1_lexeme_float 0.;
   Db1_lexeme_t.Db1_lexeme_float (-3.);
   Db1_lexeme_t.Db1_lexeme_eol]
);;
  
let nof = "../triangle_isoobtuse.db1";;
let sbu = File_v.scanf_scanning_in_channel_of_fullnameoffile nof;;

let lex_l = Db1_lexeme_v.db1_lexeme_list_of_scanbuf sbu;;

test_number 3 (
lex_l 
(* : Db1_lexeme_t.db1_lexeme list *)
= 
   [Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_units_length;
   Db1_lexeme_t.Db1_lexeme_name "nanometer";
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_kind;
   Db1_lexeme_t.Db1_lexeme_name "cartesian";
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_triangle;
   Db1_lexeme_t.Db1_lexeme_name "V";
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "V_A";
   Db1_lexeme_t.Db1_lexeme_float 1.;
   Db1_lexeme_t.Db1_lexeme_float 0.5;
   Db1_lexeme_t.Db1_lexeme_float (-2.);
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "V_B";
   Db1_lexeme_t.Db1_lexeme_float 0.;
   Db1_lexeme_t.Db1_lexeme_float 0.;
   Db1_lexeme_t.Db1_lexeme_float (-2.);
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "V_C";
   Db1_lexeme_t.Db1_lexeme_float 2.;
   Db1_lexeme_t.Db1_lexeme_float 0.;
   Db1_lexeme_t.Db1_lexeme_float (-2.);
   Db1_lexeme_t.Db1_lexeme_eol]
);;
  
let nof = "../segment_bc.db1";;
let sbu = File_v.scanf_scanning_in_channel_of_fullnameoffile nof;;

let lex_l = Db1_lexeme_v.db1_lexeme_list_of_scanbuf sbu;;

test_number 4 (
lex_l 
(* : Db1_lexeme_t.db1_lexeme list *)
= 
  [Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_units_length;
   Db1_lexeme_t.Db1_lexeme_name "angstrom"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_units_angle;
   Db1_lexeme_t.Db1_lexeme_name "degree"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_kind;
   Db1_lexeme_t.Db1_lexeme_name "cylindrical"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_segment;
   Db1_lexeme_t.Db1_lexeme_name "BC"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "BC_B"; Db1_lexeme_t.Db1_lexeme_float 1.;
   Db1_lexeme_t.Db1_lexeme_float 0.; Db1_lexeme_t.Db1_lexeme_float 0.;
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "BC_C"; Db1_lexeme_t.Db1_lexeme_float 1.;
   Db1_lexeme_t.Db1_lexeme_float 90.; Db1_lexeme_t.Db1_lexeme_float 1.;
   Db1_lexeme_t.Db1_lexeme_eol]
);;

let nof = "../vertex_a.db1";;
let sbu = File_v.scanf_scanning_in_channel_of_fullnameoffile nof;;

let lex_l = Db1_lexeme_v.db1_lexeme_list_of_scanbuf sbu;;

test_number 5 (
lex_l 
(* : Db1_lexeme_t.db1_lexeme list *)
= 
  [Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_units_length;
   Db1_lexeme_t.Db1_lexeme_name "meter"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_units_angle;
   Db1_lexeme_t.Db1_lexeme_name "radian"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_kind;
   Db1_lexeme_t.Db1_lexeme_name "spherical"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "A"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "A_A"; Db1_lexeme_t.Db1_lexeme_float 1.;
   Db1_lexeme_t.Db1_lexeme_float 0.785398163397448279;
   Db1_lexeme_t.Db1_lexeme_float 0.785398163397448279;
   Db1_lexeme_t.Db1_lexeme_eol]
);;
