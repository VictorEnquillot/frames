#!/bin/bash

do_container_as_uno_fence_bud_0containee_v.sh \
  skeleton_set_fence_centered_aopef sca 

do_container_as_uno_fence_bud_0containee_v.sh \
  skeleton_set_fence_centered_ecppef sce

do_container_as_uno_fence_stem_2sibling_0containee_v.sh \
  skeleton_set_fence_centered sfc \
  skeleton_set_fence_centered_aopef sca \
  skeleton_set_fence_centered_ecppef sce

do_container_as_uno_fence_bud_0containee_v.sh \
  skeleton_set_fence_periodic_wavelet spw

do_container_as_uno_fence_bud_0containee_v.sh \
  skeleton_set_fence_periodic_blochwave spb

do_container_as_uno_fence_stem_2sibling_0containee_v.sh \
  skeleton_set_fence_periodic sfp \
  skeleton_set_fence_periodic_blochwave spb \
  skeleton_set_fence_periodic_wavelet spw

do_container_as_uno_fence_stem_2sibling_0containee_v.sh \
  skeleton_set_fence ssf \
  skeleton_set_fence_centered sfc \
  skeleton_set_fence_periodic sfp 

# Body_bud

do_container_as_list_body_bud_1containee_v.sh \
  skeleton_set_body_periodic_blochwaveset sbs \
  skeleton_set_fence_periodic_blochwave spb

do_container_as_list_body_bud_1containee_v.sh \
  skeleton_set_body_periodic_waveletset sbs \
  skeleton_set_fence_periodic_wavelet spb

do_container_as_list_body_bud_1containee_v.sh \
  skeleton_set_body_centered_ecppefset ses \
  skeleton_set_fence_centered_ecppef sce
 
do_container_as_list_body_bud_1containee_v.sh \
  skeleton_set_body_centered_aopefset_shellordinal sso \
  skeleton_set_fence_centered_aopef sca

do_container_as_list_body_bud_1containee_v.sh \
  skeleton_set_body_centered_aopefset_shellsymmetry sss \
  skeleton_set_body_centered_aopefset_shellordinal sso

do_container_as_list_body_bud_1containee_v.sh \
  skeleton_set_body_centered_aopefset_onecenter soc \
  skeleton_set_body_centered_aopefset_shellsymmetry sos

do_container_as_list_body_bud_1containee_v.sh \
  skeleton_set_body_centered_aopefset_anycenter sac \
  skeleton_set_body_centered_aopefset_onecenter soc


# Body_trunc 

do_container_set_body_trunc_4sibling_0containee_v.sh \
skeleton_set_body_centered_aopefset sas \
skeleton_set_body_centered_aopefset_anycenter sac \
skeleton_set_body_centered_aopefset_onecenter sce \
skeleton_set_body_centered_aopefset_shellsymmetry sss \
skeleton_set_body_centered_aopefset_shellordinal sso 

do_container_set_body_trunc_2sibling_v.sh \
skeleton_set_body_centered sbc \
skeleton_set_body_centered_aopefset sca \
skeleton_set_body_centered_ecppefset sce

do_container_set_body_trunc_2sibling_v.sh \
skeleton_set_body_periodic sbc \
skeleton_set_body_periodic_blochwaveset spb \
skeleton_set_body_periodic_waveletset spw

do_container_set_body_trunc_2sibling_v.sh \
skeleton_set_body ssb \
skeleton_set_body_centered sbc \
skeleton_set_body_periodic sbp

# Context

do_container_as_list_context_bud_1containee_v.sh \
  skeleton_context_databox sds \
  skeleton_set_body sbo

do_container_as_list_context_bud_1containee_v.sh \
  skeleton_context_database scd \
  skeleton_context_databox sds

do_container_as_list_context_bud_1containee_v.sh \
  skeleton_context_domain   scd  \
  skeleton_context_database scd

do_container_as_list_context_bud_1containee_v.sh \
  skeleton_context_sector   scs  \
  skeleton_context_domain   scd


do_container_context_trunc_4sibling_0containee_v.sh \
skeleton_context sco \
skeleton_context_sector scs \
skeleton_context_domain scd \
skeleton_context_database sba \
skeleton_context_databox sbo 
 
# Top

do_container_as_list_top_stem_2sibling_1containee_v.sh \
skeleton ske \
set sse \
context sco \
skeleton_set_fence ssf
 
echo ""
echo " mv Skeleton*container_v.ml ../"
echo ""


exit


