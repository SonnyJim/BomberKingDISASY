$800D#music_check_current#Checks to see if the music needs changing?
$800F#jmp_967F#
$8033#credits?#
$817B#music_more?#
$867D#sfx_?#
$8EFB#jsr_C015#
$8F0A#shop_check_exit?#
$8F10#check_for_select?#
$8F1F#music_stop#
$8F24#check_joystick_for_a#
$8F2A#end_sub#
$8F30#shop_check_cost#
$8F3A#sfx_play_item_use#
$8F61#bombs_add_10#Adds 10 bombs, but limit it to a max of 99
$8F6C#bombs_update#
$8F71#sfx_play_not_enough_cash#
$9075#ppu?#
$90D5#shop_ItemCostBase#Megaton blast 0x32 = 50 Medals
$90D6#shop_itemcost_lifevest#0x1E = 30 Medals
$90D7#shop_itemcost_lantern#0x14 = 20 Medals
$90D8#shop_itemcost_clock#0x0A = 10 Medals
$9338#read_sprite_selection_buffer#
$9356#sprite_selection_buffer?#
$9676#clock_check#
$967C#clock_active#If the clock was active, pull two bytes out of the stack
$967F#clear_timers?#e0-e9, d7-da, bullets
$9699#loop_init#
$969D#loop#
$96A6#jmp_to_96B5#
$96AD#;#Load in location to return to, offset by X
$96B6#dec_var_rts_if_zero#
$96B9#jmp_byte_low#
$96BA#jmp_byte_high#
$96F2#intro?#Move ship off screen?
$9A40#sfx_wane/wisp#
$9ADF#wane_born#
$A09C#enemy_movement#
$A1F3#;#Subtract contents of 0x009A from enemyX_x
$A363#find_free_enemy_spot#
$A367##
$A36D#free_spot_found#X = free spot
$A377#missile_or_higher#
$A381#clear_mystery_addresses#offset by X
$A58B#zero two vars#
$A5A1#sfx_play_intro_ship#
$A6F8#JSR_C015#
$A707#demo_timer_check#Waits for 512 frames before the demo starts
$A70D#check_for_select#
$A736#check_for_start#
$A745#demo_start#
$A825#demo_timer_update?#Seems to use anim_timer and bullet_offset for the demo screen timeout
$A83C##
$A859#end_sub#
$A968#check_themesong_flag#
$AA28#vblank_wait#
$AA3C#debug_change_level#First part is button detection? then the rest is bounds checking
$B9E9#bomb_sub??#
$B9FB#bomb_popped?#
$BAAB#increment_tile_data#Gets called when a multihit block gets bombed
