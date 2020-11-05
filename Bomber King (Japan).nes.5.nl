$8000#Some JMPs, SFX related#
$8067#end_sub#
$807D#music_change#OR's it with 0x80 to flag it as complete?
$8096#clear a load of stuff?#
$80BD#Clear flag music loop#
$8552#music has looped#
$8558#music_check_for_loop?#
$85AE#sfx_table_2#
$85D4#sfx_lookup_table_2#
$8674#clear_flags_and_end_sub#
$868A#sfx_play#
$868F##Sets the high bit to signal we're playing the effect.  Also we've got an unadulterated copy in X
$8691##
$8693##Bounds check, Don't try to play anything higher than 0x26
$86AC##
$86BD#nothing to play#X is now used for holding the offset of where to jump to
$86C2##think this is a bounds check to make sure the jump table doesn't get abused
$86CF#APU reset?#
$876D#apu_play_item_pickup#
$87BB#sfx_table_3#
$8894#end_sub#
$889E#some_table#
$88A2#unknown_sub1#
$B000#sum_jmp_table#
