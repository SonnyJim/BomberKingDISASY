$800D#music_check_current#Checks to see if the music needs changing?
$800F#jmp_967F#
$8012#check_enemy_slot_loop#
$8021#jmp_list_macdaddy#
$8033#credits?#
$817B#music_more?#
$867A#enemy_type_table?#
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
$90D9#item_shopcost???#
$90DD##LDX $enemy_slot_current
$90DE#finished_searching_for_free_enemy_slot#
$90E8##Clear 1FB, set the RTS into the stack and load from jmp table
$90FC#enemy_slot_empty#
$90FF#enemy_jmp_table_hibyte?#
$9100#enemy_jmp_table_lobyte?#x0 = 60DE,
$9227#enemy_hit_calculation?#
$92B2##check to see if we've damaged the enemy enough?
$92DC#end_sub#
$92E3##clear enemy?
$92F1#another_damage_table?#
$9303#enemy_damage_table#How much damage we cause to an enemy?
$9315#enemy_damage_another_table#Max health for enemy?
$9338#read_sprite_selection_buffer#
$9356#sprite_selection_buffer?#
$9533#sprite_load_xy#
$9676#clock_check#
$967C#if_clock_active_rts#
$967F#clear_timers?#e0-e9, d7-da, bullets
$9699#enemy_slot_loop_init#
$969D#enemy_slot_loop#
$96A6##jmp to RTS afterward, A is used as the jump table offset
$96AD##Load in location from jump table
$96B6#enemy_slot_next#
$96B9#jmp_byte_table_lobyte#
$96BA#jmp_table_??_hibyte#
$96DD#jmp_table_x22#LDX $8C, LDA
$96F2#intro?#Move ship off screen?
$970A#anim_timer&3#
$9725#enemyX_?_was_zero#
$9745#end_sub#
$983D#type_was_negative#if 4DC5,X < 0x0C, exit sub
$984A#end_sub#
$9859#enemy_type_check_again?#
$986A#bombs_add_10#maybe from the shop?
$987D#enemy_dead#A holds the enemy type of the last one killed.  Searches 3 bytes from
$988D#bomb_placed?#makes the noise for it, anyway.
$98B6##if enemy type < 0xC0 (top two bits), then check if the clock is active
$98C6#is_clock_active#
$990B#end_sub#
$993C#enemy_movement_grunt?#
$99B0#end_sub#
$99C5#sine_y_lookup_table#
$99DE#enemy_went_off_screen?#
$99E4##is it a missle?
$99EE#enemy_clear#
$99F3#enemy_movement_table_10#
$9A40#sfx_wane/wisp#
$9ADE#end_sub#
$9ADF#wane_born#
$9B54#enemy_movement_mechabird#
$9B59##checks to see if the enemy disappeared off the edge of the screen
$9B7B##Don't increment if it goes off the screen
$9B91#end_sub#
$9B92#no_enemy_found#
$9BAB#enemy_movement_type_8#
$9BCA#get_enemy_health?#
$9BF7#enemy_type_empty_spot#
$9C08#sino_xtable1?#
$9C09#sino_xtable2?#
$9C31#missle_stuff?#
$A09C#enemy_movement#
$A139#enemy_check_direction#
$A13E##Heading east
$A14D#anywhere_but_east#
$A154##heading west
$A15B#not_east_or_west#
$A162##Load from table
$A19D#carry_set#
$A19F#movement_table_?#
$A1A3#table1_reversed#
$A1A7#table2#
$A1AB#table2_reversed#
$A1AF#check_enemy_movement#Sets the carry bit if any of the enemies move out of bounds
$A1B5##checking for which direction to move?
$A1B8##increment enemyX_x
$A1DB#carry_set#
$A1DD##enemy_movement_?_table?
$A1E1#enemy_movement_speed_table?#
$A1F3#enemy_move_minus_x#Subtract contents of 0x009A from enemyX_x
$A1FC##branch if the sbc caused an overflow (ie the new x position was negative)
$A29D#sub_of_some_kind#
$A307#end_sub#
$A363#find_free_enemy_spot#
$A367##
$A36D#free_spot_found#X = free spot
$A377#missile_or_higher#
$A381#init_new_enemy#offset by X
$A389##clear enemy sine?
$A392##Clear enemy damage, ie how much we have caused it
$A395##
$A409#??_enemy_table#0xA409 - 0xA424ish?  Level number is offset
$A49B#search_D7-DA#
$A4A1##
$A4A5#found_non-zero_D7-DA#
$A50B#found_non-zero_D7-DA#
$A51C##wait for 60 ticks after death
$A526#D7-D5_find_non_zero#
$A530#end_sub#
$A531#found_nonzero_in_D7-D5#
$A58B#zero two vars#
$A5A1#sfx_play_intro_ship#
$A68D#check_gfx_offset?#
$A694#run_sub#
$A6F8#JSR_C015#
$A707#demo_timer_check#Waits for 512 frames before the demo starts
$A70D#check_for_select#
$A736#check_for_start#
$A745#demo_start#
$A7A3#init_player_sprite#
$A7B3#indirect_bankswitch_to_3#
$A825#demo_timer_update?#Seems to use anim_timer and bullet_offset for the demo screen timeout
$A83C##
$A859#end_sub#
$A961#enemy_movement_bmi_???#
$A968#check_themesong_flag#
$AA28#vblank_wait#
$AA3C#debug_change_level#First part is button detection? then the rest is bounds checking
$AA62#clear_zero_sprite_n_jmp#
$B9E9#bomb_sub??#
$B9FB#bomb_popped?#
$BAAB#increment_tile_data#Gets called when a multihit block gets bombed
