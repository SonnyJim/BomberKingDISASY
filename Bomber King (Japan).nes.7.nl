$F58E#p1_bombcount_check?#
$C1F9#exit_sub#
$C69A#init_health#
$C1C8#bombs_SetTo10#Check if we have ten bombs, if not, set bombs to 10
$C1D5#init_startgame_playervars#
$C1FF#level_init_playervars#
$E05B#zero_c4-c9#
$F28C#zero_health#
$F296#health_decrease_by_a#Decreases the health by LSRxA reg 
$F2AA#health_use_a_major#Fills up minor with major.
$E0A7#bomb_planted?ormaybeinpit?#
$D000#input_read_complete#Reading the controller ports complete, now smooshing the data?
$CFD3#input_read_start?#
$C6D0#debug_mode_check#
$C0D0#BOOT#
$C0ED#init_ram_clear#Fucking weird way of doing it, though
$C390#debug_another_check#
$F22A#energy_meter_decrement_check#energy timer only ticks every 6 passes
$C546#?_buffer_copy#
$C567#end_sub#
$F23D#end_sub#
$CCC7#Clear 0x0016 / wait VBLANK#Also clears PPU_MASK, probably because they want to draw to it outside of VBLANK?
$CDAC#clear some addresses#
$C0E3#Wait for VBLANK#
$C0E8#Wait for 2nd VBLANK#
$CCD9#wait for VBLANK#
$CD45#some sub#
$CD00#write A to PPU_CTRL#
$CD50#clear p1 input and others#
$CC9C#Set VRAM address#This should set the VRAM address we want to write to
$CCA2#set PPUSCROLL to 0,0#
$CCAC#everything but bit 0#
$CD72#Set VRAM to 0x2000#
$CC98#Store A to PPU_DATA#
$CD8E#Clear PPU loop#
$CD9E#Clear VRAM C0's#Seems to do 23C0 and 27C0
$C1ED#clear_player_items#
$F49E#rng?  Scorebased?#
$C1AE#Half bomb count#
$E162#debug_check_skip_bomddec#
$D3E2#some_sub#Store X to 0x36 for later retrieval, See 
$F5BD#draw_number?#Seems to be responsible for fetching the tile for numbers
$E0D0#end_sub#
$E0B8#debug_skip_check#Don't bother to check if we have any bombs in inventory if debug or demo mode is turned on
$E0C1#bomb_check_inventory#Check to see if we have any bombs in the inventory
$ED9C#end_sub#
$ED90#item_get#First it checks for demo_running, then checks we have less than 100 of an item, then increments it.  X reg contains the offset
$CD06#bankswitch_sub_var#offset comes from bankswitch_current, keeps the value of X
$E526#random_item_get#Generates a random item (X reg) based off a few things, like how many bombs the player has
$E544#badluck_noitem#
$E563#badluck_noitem#
$C060#shop_medal_draw?#
$E9AF#subscr_item_check#Check to see if we have more than zero of an item 
$E9D3#subscr_item_more_than_zero#
$E994#subscr_itemcount_check#
$E99C#subscr_item>0#
$CDC6#wait#Wait until 0x17 is zero?
$D00C#inputread#Get the input, not it and write it to another var
$C178#demoflag_set#
$F3AA#health_rol#
$F40D#ppu_get_data?#
$CE0B#end_sub#
$C23A#demo_something?#
$CDEA#write FB with 4 byte padding?#
$D87A#write_tile_data#Gets tile data and offset, writes it to the tile data buffer
$D86C#tile_set_offset#Loads the address from 0x27, which is 9AA0 + whatever is in the A reg
$D88C#inc_tile_data_count#Increment, load into A, check to see if we've hit 0x0D times
$D86A#tile_loop_continue#
$D866#tile_loop_reset#
$DB95#tile_loop_special_tile?#Does this check to see if a tile placed was a special one?
$EA00#get_tile2_data#(Tile2 data & 0x7F) - 1 = tile data
$EBA0#tile2_get_data#Get's the tile2 data from offset Y
$EA2D#key_check#Have we found the key yet?
$EA2C#end_sub#
$EADB#wipe_tmp_tile_data#
$DEAA#bullet_clear#
$C689#init_level_check#if 01F4 != 0, clear carry, if level == 1, carry set.  Maybe something to do with the bonus rooms?
$C696#carry_clear#
$C698#carry_set#
$C30D#skip_player_init#
$C009#vblank_wait#
$CD81#set VRAM to 0x2000#
$CDC0#set_input_read#
$C3D7#button_a_pressed?#
$DDBE#check_for_select#
$DDC5#open subscreen?#
$FFF0#unrom_bankswitch#
$CFBB#bs_check#are we on bank 4?
$C41E#input_check_death#Checks to see if we are holding Select and Start on the game over screen
$D478#clear_01c5_0041#
$CBFE#debug_walk_check#Checks to see if debug_flag and select + B is held down.  Sets carry if true
$CBD9#wall_collision_sub?#
$CBA2#move_left#
$CA49#set_player_direction#Loads up the player input and mings it through a couple of LSRs to find which d-pad button is pressed
$C41B#jsr_inputread#
$C42A#clr_00fa#
$E16C#place_bomb#
$E212#bombtimer_sub#
$E21E#Bomb pop?#02 = Explosion
$EAF1#sfx_pickup_item#
$D3E5#bankswitch_wait_for_bank4#
$C027#subscreen?#
$E7A2#subscreen_start?#
$C457#level_increment#
$C20F#level_check_for_end#
$E5C6#item_use_candle#
$E83C#end_sub#
$E820#item_lamp/latern_use#Don't use item if stage already bright or if candle already in use
$EA0D#tmp_tile_data_zero#
$C46B#underground_clear#
$EE47#underground_end#
$C461#underground_is_set?#
$C601#underground_start?#
$E620#zero_6d_and_candletime#
$F25F#bomb_hit_player#Bomb or missile, Y reg = how much damage
$E580#bombs_add_10#Does some boundchecks
$C16B#clear_subscrsel_and_shotrange#
$C5A3#clear_darkness#
$E99F#turn off level_darkness#
$E815#subscr_select_lamp/latern#subscr_item_selection is +1 more than inventory base offset
$F23E#bomb_hit_player_sub?#
$C13A#clear_defense_and_levelnum#
$F2A5#health_minor_empty#Triggered when health_minor hits zero
$F2B4#end_sub#
$F2E6#sfx_play_dead#
$F25A#check_zero_health#
$E2A9#bomb_pickup#Play sound, check if we are in a demo, then increment if bombs < 100
$E2BC#end_sub#
$C747#sprite_collsion?#Checks to see if the player is colliding with a sprite\n.  Sets the carry flag to indicate condition
$E2BF#end_sub#
$C76F#end_sub_clear_carry#
$CDD7#;#Clear some locations, update the anim_timer
$CB7E#skip_increment#
$CB6D#screen_scroll_check#check if we are past the middle of the screen
$DADE#end_sub#
$DAB2#level_scroller?#If level_scroll != 12 scroll level?
$EA9D#clear_bomb_count#
$D419#wait_some_cycles#However long it takes to DEX + BNE 169 times
$CD13#bankswitch_sub_a#
$CC45#tile_write_to_buffer#
$CC61#;#if 0x00CD != 0, then write tile type to a different buffer?
$CC6B#alternate_tile_buffer#
$E6F3#;#if 0x01CF >= 2 End; If 0x01CD != 11 Continue
$E713#end_sub#
$E6F0#E714#
$CC35#buffer_store#Write non-zero to g_buf_sel to use the second buffer
$E767#end_sub#
$E721#sub_start?#
$E714#copy_loop_vars_to_zero_page#
$CC19#sub_start#if gfx_inloop_zp + 0x02B >= 11, subtract 11, store it, 
$E32E#carry_set#
$E319#check_tile_buffer#It's a true or false response, but I'll be buggered if I can't work out the logic at the moment
$E502#boots_time_inc#Increments the boot timer if it's running
$E525#end_sub#
$C9EB#;#Load input into stack, wipe it
$CA82#input_clear#
$CACE#end_sub#
$C255#clear_player_attributes#Seems to do a clean sweep here, be good to dig around
$C553#copy_buffer#loop_16_times
$D43B#write_static_values#703=0x40, 702=0x20, 701=0x5F, 700=0x17,16=1
$E44D#clock_active_inc#Start of all the increment code for the various items and effects
$E45B#flash_screen_short_inc#
$E495#screen_flash_timer_inc#
$E4BF#candle_time_inc#
$E4F4#4way_active_inc#
$E512#lifevest_active_inc#
$C8C4#drowning_check#Returns carry set if drowning
$C977#drowning_check#
$C9A9#not_drowning#
$C951#carry_set#
$C953#carry_clear#
$C948#end_sub#
$C949#checking for a level and e5#
$C93A#forcefield_active_inc#
$C954#end_sub#
$C568#?_buffer1#
$C551#buffer2_offset#set to 0x0C
$F821#offset_set_to_4#
$F823#copy_buffer#039 - 03C -> 0700 4 bytes, then the size put into 37
$F6A3#0x089_dec#
$F645#copy_sprite_to_39-3C#
$C7CE#player_draw#Looks like we are copying the player location to update the OAM sprite
$C77D#forcefield_check#
$C8B9#water_check#Checks to see if we are stood on water (0x28 = water, 0x29 = waterfall)
$C8D8#carry_set#
$C8CB#stood_on_water#
$C8DA#sprite_selections?#
$C8B2#draw_shadow#
$E065#sprite_buffer_check?#Looking for bit 7 in C4
$C072#sprite_buffer_check_jmp#
$CC14#carry_clear#
$C73B#carry_set_0x1FB | 2#
$C745#carry_clear#
$C725#sfx_player_hit#
$E1D2#dec_x_reg#
$E1D6#gogo_gadget_bankswitch?#
$E1CC#find_free_bomb_position#Stores it in X
$DE55#bullet_find_active#Searches the bullet buffer for an active bullet, stores it to X
$DE64#bullet_found#
$DEB2#lda_b1#
$DE71#;#Increment bullet travel,check to see if it's outside of our max range.  If so, clear the bullet
