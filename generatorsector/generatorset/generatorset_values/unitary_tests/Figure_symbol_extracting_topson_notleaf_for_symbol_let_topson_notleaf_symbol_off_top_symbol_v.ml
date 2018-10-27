let point_symbol_off_figure_symbol = function
  | Figure_symbol_t.Point_symbol sym_poi -> sym_poi
  | sym_fig -> Error_messages_v.print_fatal_error
      nam_cod "point_symbol_off_figure_symbol"
      "Point_symbol"
      (name sym_fig) "check"
;;

