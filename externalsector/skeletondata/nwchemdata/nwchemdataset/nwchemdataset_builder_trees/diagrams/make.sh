#!/bin/bash

grep -C1 '"' path > a

sed -e 's/(Nwchemdata_\(.*\)_symbol_t.Nwchemdata.*$/"\1"/' -e 's/)//g' -e 's/]]/]/g' -e 's/,//' -e 's/--//' -e 's/];/]/' -e 's/_/\\n/g' a > b