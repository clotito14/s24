set search_path ". /synopsys/GPDK/SAED_EDK90nm/Digital_Standard_Cell_Library/synopsys/models"
set link_library "saed90nm_max.db"
set target_library "saed90nm_max.db"
set symbol_library "saed90nm_max.db"
analyze -library WORK -format verilog {/home/ugrad/siu856093429/ECE426/lab2/decoder_3to8_behavioral.v}
elaborate 3to8_decoder_behavioral -library WORK
link
compile -exact_map
