(** {3 Localinput_set_fence_symbol_t} *)


(** {6 Typing_for_symbol} *)

type localinput_set_fence_symbol =
  | Localinput_set_fence_basic_numerical_symbol of Localinput_set_fence_basic_numerical_symbol_t.localinput_set_fence_basic_numerical_symbol
  | Localinput_set_fence_basic_word_symbol of Localinput_set_fence_basic_word_symbol_t.localinput_set_fence_basic_word_symbol
  | Localinput_set_fence_cell_symbol of Localinput_set_fence_cell_symbol_t.localinput_set_fence_cell_symbol
  | Localinput_set_fence_keyword_symbol of Localinput_set_fence_keyword_symbol_t.localinput_set_fence_keyword_symbol
  | Localinput_set_fence_variable_kind_symbol of Localinput_set_fence_variable_kind_symbol_t.localinput_set_fence_variable_kind_symbol
  | Localinput_set_fence_variable_name_symbol of Localinput_set_fence_variable_name_symbol_t.localinput_set_fence_variable_name_symbol
;;


(** Localinput_set_fence_symbol_t at 11:18:33 on 15 May 2017. created by version v2.4 of generator *)



