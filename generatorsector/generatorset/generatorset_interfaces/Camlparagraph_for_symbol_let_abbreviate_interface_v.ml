(** {3 Camlparagraph_for_symbol_let_abbreviate_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Camlparagraph_for_symbol_let_abbreviate_interface_v";
   "Needed-by : FGNR:Camlparagraph_for_symbol_let_abbreviate_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : It should be read from any External Database";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_cla = 
  match sym_cla with
  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_inancestorself
  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_basicnullary ->
      Error_messages_v.print_fatal_error nam_cod "make"
	(Format.sprintf "Camlparagraph Symbol %s were implemented" (Camlparagraph_for_symbol_let_abbreviate_symbol_v.name sym_cla))
	"It was not"
	"Check"

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_bare ->
   (* let triangle_isoceles_equilateral = Triangle_isoceles_symbol_t.Triangle_isoceles_equilateral;; *)

      let sym_se1 = Section_for_symbol_header_son_top_symbol_v.let_abbreviate_topson_bare in
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_top_symbol sym_se1
     ]

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_ofstring ->
   (* let point s = Geometryset_symbol_t.Point s;; *)

      let sym_se1 = Section_for_symbol_header_son_top_symbol_v.let_abbreviate_topson_ofstring in
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_son_top_symbol sym_se1
     ]

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_basicnullary ->

      Error_messages_v.print_fatal_error nam_cod "make"
	(Format.sprintf "Camlparagraph Symbol %s were implemented" (Camlparagraph_for_symbol_let_abbreviate_symbol_v.name sym_cla))
	"It was not"
	"Check"

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_bare ->
   (* let triangle_isoceles_equilateral = triangle_symbol_of_triangle_isoceles_symbol Triangle_isoceles_symbol_v.triangle_isoceles_equilateral;; *)

      let sym_se1 = Section_for_symbol_header_current_son_top_symbol_v.let_abbreviate_grandson_bare in
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_current_son_top_symbol sym_se1
     ]

  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_ofstring ->
   (* let triangle_isoceles_equilateral s = triangle_symbol_of_triangle_isoceles_symbol (Triangle_isoceles_symbol_v.triangle_isoceles_equilateral s);; *)

      let sym_se1 = Section_for_symbol_header_current_son_top_symbol_v.let_abbreviate_grandson_ofstring in
      [
       Section_symbol_v.section_symbol_of_section_for_symbol_header_current_son_top_symbol sym_se1
     ]


  | Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_inself ->

      Error_messages_v.print_fatal_error nam_cod "make"
	(Format.sprintf "Camlparagraph Symbol %s were implemented" (Camlparagraph_for_symbol_let_abbreviate_symbol_v.name sym_cla))
	"It was not"
	"Check"
;;

