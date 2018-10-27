(* {3 An index for Any Entity in a Chemical Environment.} *)

(* 
   http://en.wikipedia.org/wiki/Vsepr 
   http://www.faidherbe.org/site/cours/dupuis/vsepr.htm
*)

type vsepr_index = 
  | Bent_onelonepair_index of bentonelonepair_index
  | Bent_twolonepair_index of benttwolonepair_index
  | Diatomic_index of diatomic_index
  | Linear_index of linear_index
  | Monoatomic_index of monoatomic_index
  | Octahedral_index of octahedral_index
  | Pentagonalbipyramidal_index of pentagonalbipyramidal_index
  | Pentagonalpyramidal_index of pentagonalpyramidal_index
  | Seesaw_index of seesaw_index
  | Squareantiprismatic_index of squareantiprismatic_index
  | Squareplanar_index of squareplanar_index
  | Squarepyramidal_index of squarepyramidal_index
  | Tetrahedral_index of tetrahedral_index
  | Trigonalbipyramidal_index of trigonalbipyramidal_index
  | Trigonalplanar_index of trigonalplanar_index
  | Trigonalpyramidal_index of trigonalpyramidal_index
  | Tshaped_index of tshaped_index

and diatomic_index =  (* l-->r *) (* Fh, O2 *)
  | Dia_l (* left *)
  | Dia_r (* right *)

and linear_index =  (* i-->c-->o *) (* Co2, Becl2, Hgcl2 *)
  | Lin_c (* center *)
  | Lin_i (* input *)
  | Lin_o (* output *)
	
and bentonelonepair_index =   (* No2-, So2, O3, Ccl2 *)
  | Bon_c  (* center       c    *)
  | Bon_i  (* input       / \   *)
  | Bon_o  (* output     i   o  *)

and benttwolonepair_index =   (* Oh2, Of2 *)
  | Btw_c  (* center       c    *)
  | Btw_i  (* input       / \   *)
  | Btw_o  (* output     i   o  *)

and monoatomic_index = (* He, Ne, H+ *)
  | Mon_c

and octahedral_index = (* Sf6 *)
  | Oct_c  (* center                                    u     *)
  | Oct_u  (* up                                        | n   *)
  | Oct_n  (* north                                     |/    *)
  | Oct_w  (* west  anticlockwise / c->u            w---c---e *)
  | Oct_s  (* south                                    /|     *)
  | Oct_e  (* east                                    s |     *)
  | Oct_d  (* down                                      d     *)

and pentagonalpyramidal_index = (* Xeof5−, Iof52− *)
  | Ppy_c  (* center                                    u     *)
  | Ppy_u  (* up                                        | i   *)
  | Ppy_i  (* first                                     |/    *)
  | Ppy_j  (* second  anticlockwise / c->u          j---c---m *)
  | Ppy_k  (* third                                    / \    *)
  | Ppy_l  (* fourth                                  k   l   *)
  | Ppy_m  (* fifth                                           *)

and pentagonalbipyramidal_index = (* If7 *)
  | Pbp_c  (* center                                    u     *)
  | Pbp_u  (* up                                        | i   *)
  | Pbp_i  (* first                                     |/    *)
  | Pbp_j  (* second  anticlockwise / c->u          j---c---m *)
  | Pbp_k  (* third                                    /|\    *)
  | Pbp_l  (* fourth                                  k | l   *)
  | Pbp_m  (* fifth                                     d     *)
  | Pbp_d  (* down                                            *)

and squareplanar_index = (* XeF4 *)
  | Spl_c  (* center                                    n     *)
  | Spl_n  (* north                                     |     *)
  | Spl_w  (* west  anticlockwise normal to plane   w---c---e *)
  | Spl_s  (* south                                     |     *)
  | Spl_e  (* east                                      s     *)

and squarepyramidal_index = (* Pcl5 *)
  | Spy_c  (* center                                    u     *)
  | Spy_u  (* up                                        | n   *)
  | Spy_n  (* input                                     |/    *)
  | Spy_w  (* west  anticlockwise / c->u            w---c---e *)
  | Spy_s  (* south                                    /      *)
  | Spy_e  (* east                                    s       *)

and squareantiprismatic_index = (* Xef8-- *) (* *** Improve Check *)
  | San_c  (* center *)
  | San_u  (* up     *)
  | San_i  (* first  *)
  | San_j  (* second *)
  | San_k  (* third  *)
  | San_l  (* fourth *)
  | San_m  (* fifth  *)
  | San_n  (* sixth  *)
  | San_d  (* down   *)

and seesaw_index = (* Sf4 *)
  | See_c  (* center                                    r     *)
  | See_u  (* up                                        | l   *)
  | See_d  (* down                                      |/    *)
  | See_l  (* left  anticlockwise / d->c->u         d---c---u *)
  | See_r  (* right                                           *)

and tetrahedral_index = (* Ch4, Po43−, So42−, Clo4− *)
  | Tet_c  (* center      o                *)
  | Tet_i  (* input       |                *)
  | Tet_l  (* left       ic  i on top of c *)
  | Tet_r  (* right      / \               *)
  | Tet_o  (* output    r   l              *)

and trigonalplanar_index = (* Bf3, Coh2, Co3-−, No3−, So3 *)
  | Tpl_c  (* center                                    i     *)
  | Tpl_i  (* input                                     |     *)
  | Tpl_l  (* left                                     /c\    *)
  | Tpl_r  (* right                                   l   r   *)

and trigonalpyramidal_index = (* Nh3, Pcl3 *)
  | Tpy_c  (* center    c     *)
  | Tpy_i  (* input    /|\    *)
  | Tpy_l  (* left    / i \   *)
  | Tpy_r  (* right  r     l  *)

and trigonalbipyramidal_index = (* Pcl5 *)
  | Tbp_c  (* center    u  up to plane     *)
  | Tbp_u  (* up        | t third in plane *)
  | Tbp_d  (* down      |/                 *)
  | Tbp_f  (* first f --c plane c, f, s, t *)
  | Tbp_s  (* second    |\                 *)                
  | Tbp_t  (* third     d s down to plane  *)

and tshaped_index = (* Clf3, Brf3 *)
  | Tsh_c   (* center   s--c--f  *)
  | Tsh_f   (* first       |    anti-clockwise from t around c *)
  | Tsh_s   (* second      |    clockwise from t around c *)
  | Tsh_t   (* transversal t     *)
;;

