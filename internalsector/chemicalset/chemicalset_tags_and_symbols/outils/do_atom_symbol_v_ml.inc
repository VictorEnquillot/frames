echo "module Mns_v = Mendeleev_symbol_v"
echo ""
echo "let mendeleev_symbol_off_atom_symbol smb_atm ="
echo "  let nam = name smb_atm in"
echo "  let str = Scanf.sscanf nam \"%_s@_%s\" (fun s -> s) in"
echo "  Mns_v.mendeleev_symbol_of_string str"
echo ";;"
echo ""
