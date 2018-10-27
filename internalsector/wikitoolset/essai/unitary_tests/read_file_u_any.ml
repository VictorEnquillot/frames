(*
test_number 1 (
rec_htm_a_l
(* : string list *)
=
  ["<div class=\"print-content\"><div class=\"field field-type-text field-field-large-header\"><div class=\"field-label\">Ent\195\170te large:&nbsp;</div><div class=\"field-items\"><div class=\"field-item odd\"><!--paging_filter--></div></div></div><!-- google_ad_section_start --><div class=\"field field-type-number-integer field-field-external-feed-display\"><div class=\"field-label\">Flux externe:&nbsp;</div><div class=\"field-items\"><div class=\"field-item odd\">Normal</div></div></div><div class=\"field field-type-nodereference field-field-blog-context\"><div class=\"field-label\">Blog principal:&nbsp;</div><div class=\"field-items\"><div class=\"field-item odd\"><a href=\"http://www.rue89.com/chinatown\">Chinatown</a> <span class=\"print-footnote\">[1]</span></div></div></div><div class=\"field field-type-text field-field-ad-bottom\"><div class=\"field-label\">ad_bottom:&nbsp;</div><div class=\"field-items\"><div class=\"field-item odd\">Ligatus</div></div></div>"]
);;

test_number 2 (
rec_htm_b_l
(* : string list *)
=
["<div class=\"print-content\">";
 "  <div class=\"field field-type-text field-field-large-header\">";
 "    <div class=\"field-label\">Ent\195\170te large:&nbsp;";
 "    </div>";
 "    <div class=\"field-items\">";
 "      <div class=\"field-item odd\"><!--paging_filter-->";
 "      </div>";
 "    </div>";
 "  </div><!-- google_ad_section_start -->";
 "  <div class=\"field field-type-number-integer field-field-external-feed-display\" ss=\"field-items\">";
 "    <div class=\"field-item odd\">Normal";
 "    </div>";
 "  </div>";
 "</div>";

 "<div class=\"field field-type-nodereference field-field-blog-context\">";
 "  <div class=\"field-label\">Blog principal:&nbsp;";
 "  </div>";
 "  <div class=\"field-items\">";
 "    <div class=\"field-item odd\"\197\147>";
 "      <a href=\"http://www.rue89.com/chinatown\">Chinatown</a>";
 "      <span class=\"print-footnote\">[1]</span>";
 "    </div>";
 "  </div>";
 "</div>";
 "<div class=\"field field-type-text field-field-ad-bottom\">";
 "  <div class=\"field-label\">ad_bottom:&nbsp;</div>";
 "  <div class=\"field-items\">";
 "    <div class=\"field-item odd\">Ligatus</div>";
 "  </div>";
 "</div>"]
);;

List.map Read_record_list_v.html_lexeme_of_string rec_htm_b_l;;


*)
