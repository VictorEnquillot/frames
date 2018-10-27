(** {3 The functionalities for a Symbol for a Block_single_double.} *)

let nam_cod = "block_single_double_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_single_double_symbol_t.Block_single_double_ax3_symbol sym_sda ->
      Block_single_double_ax3_symbol_v.name sym_sda
;;


(** {6 Upgrading} *)


let block_single_double_symbol_of_block_single_double_ax3_symbol sym_sda = 
  Block_single_double_symbol_t.Block_single_double_ax3_symbol sym_sda
;;

let block_single_double_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat = 
  let sym_sda = Block_single_double_ax3_symbol_v.block_single_double_ax3_symbol_of_block_single_double_ax3e0_trigonalplanar_symbol sym_dat in
    block_single_double_symbol_of_block_single_double_ax3_symbol sym_sda
;;


(** {6 Abbreviating} *)


let s_ch_d = block_single_double_symbol_of_block_single_double_ax3_symbol Block_single_double_ax3_symbol_v.s_ch_d;;

let s_n_d = block_single_double_symbol_of_block_single_double_ax3_symbol Block_single_double_ax3_symbol_v.s_n_d;;

let s_nhp1_d = block_single_double_symbol_of_block_single_double_ax3_symbol Block_single_double_ax3_symbol_v.s_nhp1_d;;


(** {6 Making} *)


let make s = function
  | "s_ch_d" -> s_ch_d
  | "s_n_d" -> s_n_d
  | "s_nhp1_d" -> s_nhp1_d
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_double_ax3_symbol_off_block_single_double_symbol = function
  | Block_single_double_symbol_t.Block_single_double_ax3_symbol sym_sda -> sym_sda
;;

let block_single_double_ax3e0_trigonalplanar_symbol_off_block_single_double_symbol sym_bsd = 
  let sym_sda = block_single_double_ax3_symbol_off_block_single_double_symbol sym_bsd in 
    Block_single_double_ax3_symbol_v.block_single_double_ax3e0_trigonalplanar_symbol_off_block_single_double_ax3_symbol sym_sda
;;


(** {6 Querying} *)


let is_block_single_double_ax3_symbol_off_block_single_double_symbol = function
  | Block_single_double_symbol_t.Block_single_double_ax3_symbol _ -> true
;;

let is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_single_double_symbol sym_bsd =
  if not (is_block_single_double_ax3_symbol_off_block_single_double_symbol sym_bsd)
  then false
  else
    begin
     let sym_sda = block_single_double_ax3_symbol_off_block_single_double_symbol sym_bsd in 
     Block_single_double_ax3_symbol_v.is_block_single_double_ax3e0_trigonalplanar_symbol_off_block_single_double_ax3_symbol sym_sda
    end
;;


(** created by ./generator block_single_double implementation symbol at 15:5 13 Mar 2012. *)



