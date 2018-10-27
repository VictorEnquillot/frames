(** {3 This_belt_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:This_belt_v";
   "Needs : VELE:Sib_1_belt_v";
   "Needs : VELE:Sib_2_belt_v";
   "Needs : VELE:Sib_3_belt_v";
   "Needs : VELE:Sib_4_belt_v";
   "Needs : VELE:Sib_5_belt_v";
   "Needs : VELE:Sib_6_belt_v";
   "Needs : VELE:Sib_7_belt_v";
   "Needs : VELE:Sib_8_belt_v";
   "Needs : VELE:Sib_9_belt_v";
   "Needs : DELE:Elementary_fence_by_elementary_tag_provider_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Belt type as Symbol type up_coercion";
 ]
;;

(** {6 Naming} *)

let name = function
  | This_belt_t.Sib_1_belt bel_fua ->
      (Sib_1_belt_v.name bel_fua)
	
  | This_belt_t.Sib_2_belt bel_fua ->
      (Sib_2_belt_v.name bel_fua)

  | This_belt_t.Sib_3_belt bel_fuc ->
      (Sib_3_belt_v.name bel_fuc)
	
  | This_belt_t.Sib_4_belt bel_fue ->
      (Sib_4_belt_v.name bel_fue)

  | This_belt_t.Sib_5_belt bel_ful ->
      (Sib_5_belt_v.name bel_ful)
	
  | This_belt_t.Sib_6_belt bel_fum ->
      (Sib_6_belt_v.name bel_fum)

  | This_belt_t.Sib_7_belt bel_fut ->
      (Sib_7_belt_v.name bel_fut)
	
  | This_belt_t.Sib_8_belt bel_fut ->
      (Sib_8_belt_v.name bel_fut)

  | This_belt_t.Sib_9_belt bel_fun ->
      (Sib_9_belt_v.name bel_fun)
;;

let string_off = function
  | This_belt_t.Sib_1_belt bel_fua ->
      (Sib_1_belt_v.string_off bel_fua)
	
  | This_belt_t.Sib_2_belt bel_fua ->
      (Sib_2_belt_v.string_off bel_fua)

  | This_belt_t.Sib_3_belt bel_fuc ->
      (Sib_3_belt_v.string_off bel_fuc)
	
  | This_belt_t.Sib_4_belt bel_fue ->
      (Sib_4_belt_v.string_off bel_fue)

  | This_belt_t.Sib_5_belt bel_ful ->
      (Sib_5_belt_v.string_off bel_ful)
	
  | This_belt_t.Sib_6_belt bel_fum ->
      (Sib_6_belt_v.string_off bel_fum)

  | This_belt_t.Sib_7_belt bel_fut ->
      (Sib_7_belt_v.string_off bel_fut)
	
  | This_belt_t.Sib_8_belt bel_fut ->
      (Sib_8_belt_v.string_off bel_fut)
	
  | This_belt_t.Sib_9_belt bel_fun ->
      (Sib_9_belt_v.string_off bel_fun)
;;

let longname = function
  | This_belt_t.Sib_1_belt bel_fua ->
      (Sib_1_belt_v.longname bel_fua)
	
  | This_belt_t.Sib_2_belt bel_fua ->
      (Sib_2_belt_v.longname bel_fua)

  | This_belt_t.Sib_3_belt bel_fuc ->
      (Sib_3_belt_v.longname bel_fuc)
	
  | This_belt_t.Sib_4_belt bel_fue ->
      (Sib_4_belt_v.longname bel_fue)

  | This_belt_t.Sib_5_belt bel_ful ->
      (Sib_5_belt_v.longname bel_ful)
	
  | This_belt_t.Sib_6_belt bel_fum ->
      (Sib_6_belt_v.longname bel_fum)

  | This_belt_t.Sib_7_belt bel_fut ->
      (Sib_7_belt_v.longname bel_fut)
	
  | This_belt_t.Sib_8_belt bel_fut ->
      (Sib_8_belt_v.longname bel_fut)
	
  | This_belt_t.Sib_9_belt bel_fun ->
      (Sib_9_belt_v.longname bel_fun)
;;

let fullname = function
  | This_belt_t.Sib_1_belt bel_fua ->
      (Sib_1_belt_v.fullname bel_fua)
	
  | This_belt_t.Sib_2_belt bel_fua ->
      (Sib_2_belt_v.fullname bel_fua)

  | This_belt_t.Sib_3_belt bel_fuc ->
      (Sib_3_belt_v.fullname bel_fuc)
	
  | This_belt_t.Sib_4_belt bel_fue ->
      (Sib_4_belt_v.fullname bel_fue)

  | This_belt_t.Sib_5_belt bel_ful ->
      (Sib_5_belt_v.fullname bel_ful)
	
  | This_belt_t.Sib_6_belt bel_fum ->
      (Sib_6_belt_v.fullname bel_fum)

  | This_belt_t.Sib_7_belt bel_fut ->
      (Sib_7_belt_v.fullname bel_fut)
	
  | This_belt_t.Sib_8_belt bel_fut ->
      (Sib_8_belt_v.fullname bel_fut)
	
  | This_belt_t.Sib_9_belt bel_fun ->
      (Sib_9_belt_v.fullname bel_fun)
;;

(** {6 Coercing up} *)

let this_belt_of_sib_1_belt bel_fua =
  This_belt_t.Sib_1_belt bel_fua 
;;

let this_belt_of_sib_2_belt bel_fua =
  This_belt_t.Sib_2_belt bel_fua 
;;

let this_belt_of_sib_3_belt bel_fuc =
  This_belt_t.Sib_3_belt bel_fuc 
;;

let this_belt_of_sib_4_belt bel_fue =
  This_belt_t.Sib_4_belt bel_fue 
;;

let this_belt_of_sib_5_belt bel_ful =
  This_belt_t.Sib_5_belt bel_ful 
;;

let this_belt_of_sib_6_belt bel_fum =
  This_belt_t.Sib_6_belt bel_fum 
;;

let this_belt_of_sib_7_belt bel_fut =
  This_belt_t.Sib_7_belt bel_fut 
;;

let this_belt_of_sib_8_belt bel_fut =
  This_belt_t.Sib_8_belt bel_fut 
;;

let this_belt_of_sib_9_belt bel_fun =
  This_belt_t.Sib_9_belt bel_fun 
;;

(** {6 Coercing down} *)

let sib_1_belt_off_this_belt = function
  | This_belt_t.Sib_1_belt bel_fua -> bel_fua
  | _ -> failwith "Not_a_sib_1:This_belt.sib_1_belt_off_this_belt"
;;

let sib_2_belt_off_this_belt = function
  | This_belt_t.Sib_2_belt bel_fua -> bel_fua
  | _ -> failwith "Not_a_sib_2:This_belt.sib_2_belt_off_this_belt"
;;

let sib_3_belt_off_this_belt = function
  | This_belt_t.Sib_3_belt bel_fuc -> bel_fuc
  | _ -> failwith "Not_a_sib_3:This_belt.sib_3_belt_off_this_belt"
;;

let sib_4_belt_off_this_belt = function
  | This_belt_t.Sib_4_belt bel_fue -> bel_fue
  | _ -> failwith "Not_a_sib_4:This_belt.sib_4_belt_off_this_belt"
;;

let sib_5_belt_off_this_belt = function
  | This_belt_t.Sib_5_belt bel_ful -> bel_ful
  | _ -> failwith "Not_a_sib_5:This_belt.sib_5_belt_off_this_belt"
;;

let sib_6_belt_off_this_belt = function
  | This_belt_t.Sib_6_belt bel_fum -> bel_fum
  | _ -> failwith "Not_a_sib_6:This_belt.sib_6_belt_off_this_belt"
;;

let sib_7_belt_off_this_belt = function
  | This_belt_t.Sib_7_belt bel_fut -> bel_fut
  | _ -> failwith "Not_a_sib_7:This_belt.sib_7_belt_off_this_belt"
;;

let sib_8_belt_off_this_belt = function
  | This_belt_t.Sib_8_belt bel_fut -> bel_fut
  | _ -> failwith "Not_a_sib_8:This_belt.sib_8_belt_off_this_belt"
;;

let sib_9_belt_off_this_belt = function
  | This_belt_t.Sib_9_belt bel_fun -> bel_fun
  | _ -> failwith "Not_a_sib_9:This_belt.sib_9_belt_off_this_belt"
;;

(** {6 Belt} *)

let belt_of_tag tag_efu =
  let soi_efu = Tag_v.sole_index_off_tag tag_efu in
  let sym_efu = Tag_v.entity_off_tag tag_efu in
  match sym_efu with
  | This_symbol_t.Sib_1_symbol sym_fua ->
      let tag_fua = Tag_v.make sym_fua soi_efu in
      This_belt_t.Sib_1_belt
	(Sib_1_belt_v.belt_of_tag tag_fua)

  | This_symbol_t.Sib_2_symbol sym_fua ->
      let tag_fua = Tag_v.make sym_fua soi_efu in
      This_belt_t.Sib_2_belt
	(Sib_2_belt_v.belt_of_tag tag_fua)

  | This_symbol_t.Sib_3_symbol sym_fuc ->
      let tag_fuc = Tag_v.make sym_fuc soi_efu in
      This_belt_t.Sib_3_belt
	(Sib_3_belt_v.belt_of_tag tag_fuc)

  | This_symbol_t.Sib_4_symbol sym_fue ->
      let tag_fue = Tag_v.make sym_fue soi_efu in
      This_belt_t.Sib_4_belt
	(Sib_4_belt_v.belt_of_tag tag_fue)

  | This_symbol_t.Sib_5_symbol sym_ful ->
      let tag_ful = Tag_v.make sym_ful soi_efu in
      This_belt_t.Sib_5_belt
	(Sib_5_belt_v.belt_of_tag tag_ful)

  | This_symbol_t.Sib_6_symbol sym_fum ->
      let tag_fum = Tag_v.make sym_fum soi_efu in
      This_belt_t.Sib_6_belt
	(Sib_6_belt_v.belt_of_tag tag_fum)

  | This_symbol_t.Sib_7_symbol sym_fut ->
      let tag_fut = Tag_v.make sym_fut soi_efu in
      This_belt_t.Sib_7_belt
	(Sib_7_belt_v.belt_of_tag tag_fut)

  | This_symbol_t.Sib_8_symbol sym_fut ->
      let tag_fut = Tag_v.make sym_fut soi_efu in
      This_belt_t.Sib_8_belt
	(Sib_8_belt_v.belt_of_tag tag_fut)

  | This_symbol_t.Sib_9_symbol sym_fun ->
      let tag_fun = Tag_v.make sym_fun soi_efu in
      This_belt_t.Sib_9_belt
	(Sib_9_belt_v.belt_of_tag tag_fun)
;;

(** {6 Measure} *)

let measure_off_belt = function
  | This_belt_t.Sib_1_belt bel_fua ->
      (Sib_1_belt_v.measure_off_belt bel_fua)
	
  | This_belt_t.Sib_2_belt bel_fua ->
      (Sib_2_belt_v.measure_off_belt bel_fua)

  | This_belt_t.Sib_3_belt bel_fuc ->
      (Sib_3_belt_v.measure_off_belt bel_fuc)
	
  | This_belt_t.Sib_4_belt bel_fue ->
      (Sib_4_belt_v.measure_off_belt bel_fue)

  | This_belt_t.Sib_5_belt bel_ful ->
      (Sib_5_belt_v.measure_off_belt bel_ful)
	
  | This_belt_t.Sib_6_belt bel_fum ->
      (Sib_6_belt_v.measure_off_belt bel_fum)

  | This_belt_t.Sib_7_belt bel_fut ->
      (Sib_7_belt_v.measure_off_belt bel_fut)
	
  | This_belt_t.Sib_8_belt bel_fut ->
      (Sib_8_belt_v.measure_off_belt bel_fut)
	
  | This_belt_t.Sib_9_belt bel_fun ->
      (Sib_9_belt_v.measure_off_belt bel_fun)
;;

(** {6 Readee : a Generalization of Measure} *)

let readee_off_belt bel_efu =
  let mea = measure_off_belt bel_efu in
  Readee_v.readee_of_measure mea
;;

(** {6 Closure} *)

let closure_off_belt bel_efu =
  let rea = readee_off_belt bel_efu in
  [rea]
;;

let closure_of_tag tag_efu =
  let bel_efu = belt_of_tag tag_efu in
  closure_off_belt bel_efu
;;
