$80BD#Clear flag music loop#
$8096#clear a load of stuff?#
$8552#music has looped#
$8558#music_check_for_loop?#
$8000#Some JMPs, SFX related#
$86CF#APU reset?#
$B000#sum_jmp_table#
$807D#music_change#OR's it with 0x80 to flag it as complete?
$8067#end_sub#
$8691#sfx_play_a#
$868A#sfx_played?#ORs the sfx_to_play with 0x80, I guess to signify it's already been sent to the APU
