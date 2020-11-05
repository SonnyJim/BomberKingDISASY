$C009#vblank_wait#
$C027#subscreen?#
$C060#shop_medal_draw?#
$C072#sprite_buffer_check_jmp#
$C075#spirte_load#
$C0D0#BOOT#
$C0E3#Wait for VBLANK#
$C0E8#Wait for 2nd VBLANK#
$C0ED#init_ram_clear#Fucking weird way of doing it, though
$C13A#clear_defense_and_levelnum#
$C16B#clear_subscrsel_and_shotrange#
$C178#demoflag_set#
$C1AE#Half bomb count#
$C1C8#bombs_SetTo10#Check if we have ten bombs, if not, set bombs to 10
$C1D5#init_startgame_playervars#
$C1ED#clear_player_items#
$C1F9#exit_sub#
$C1FF#level_init_playervars#
$C20F#end_level#
$C23A#demo_something?#
$C255#clear_player_attributes#Seems to do a clean sweep here, be good to dig around
$C30D#skip_player_init#
$C383#level_number=0#
$C390#debug_another_check#
$C3A4##Check to see if we've touched the exit tile
$C3AB#end_level#
$C3D7#button_a_pressed?#
$C41B#jsr_inputread#
$C41E#input_check_death#Checks to see if we are holding Select and Start on the game over screen
$C42A#clr_00fa#
$C438#end_level?#
$C457#level_increment#
$C461#underground_is_set?#
$C46B#underground_clear#
$C4A7#stack_pull_vars#pulls a bunch of vars from the stack
$C546#?_buffer_copy#
$C551#buffer2_offset#set to 0x0C
$C553#copy_buffer#loop_16_times
$C567#end_sub#
$C568#?_table#
$C5A3#clear_darkness#
$C601#underground_start?#
$C689#init_level_check#if 01F4 != 0, clear carry, if level == 1, carry set.  Maybe something to do with the bonus rooms?
$C696#carry_clear#
$C698#carry_set#
$C69A#init_health#
$C6BF#sfx_stop#
$C6D0#debug_mode_check#Check whether the player has completed the convoluted steps to enable debug mode
$C701#end_sub#
$C725#sfx_player_hit#
$C73B#carry_set_0x1FB | 2#
$C745#carry_clear#
$C747#sprite_collsion?#Checks to see if the player is colliding with a sprite\n.  Sets the carry flag to indicate condition
$C76F#end_sub_clear_carry#
$C77D#forcefield_check#
$C7A7#end_sub#
$C7AC#draw_player?#
$C7CE#player_draw#Looks like we are copying the player location to update the OAM sprite
$C7E3##If the player is dead, set the player sprite accordingly
$C817#not_dead#
$C83B#negative_set#
$C844#overflow_set#
$C848#overflow_clear#
$C84B##check bits 3 and 4
$C854##carry now contains whether we are on water.
$C87C#not_on_water#
$C882#get_player_sprite_from_table#
$C8B2#draw_shadow#
$C8B9#water_check#Checks to see if we are stood on water (0x28 = water, 0x29 = waterfall)
$C8C4#drowning_clear#We've checked the tile we are stood on and we aren't drowning
$C8CB#stood_on_water#
$C8D0##if we've got a lifevest on, don't increment the drowning even if we are on water
$C8D8#carry_set#
$C8DA#sprite_selections?#
$C93A#forcefield_active_inc#
$C948#end_sub#
$C949#is_level=0 and enemy6 !=0#Is this checking for ship to disappear off the intro level?
$C951#carry_set#
$C953#carry_clear#
$C954#end_sub#
$C977#drowning_check#
$C9A9#not_drowning#
$C9C0#sfx_play_dead#
$C9EB#;#Load input into stack, wipe it
$CA49#set_player_direction#Loads up the player input and mings it through a couple of LSRs to find which d-pad button is pressed
$CA82#input_clear#
$CACE#end_sub#
$CB4D#end_sub#
$CB6D#screen_scroll_check#check if we are past the middle of the screen
$CB7E#skip_increment#
$CBA2#move_left#
$CBD9#wall_collision_sub?#
$CBFE#debug_walk_check#Checks to see if debug_flag and select + B is held down.  Sets carry if true
$CC14#carry_clear#
$CC16#jsr_CC71#
$CC19#sub_start#if gfx_inloop_zp + 0x02B >= 11, subtract 11, store it,
$CC35#buffer_store#Write non-zero to g_buf_sel to use the second buffer
$CC45#tile_write_to_buffer#
$CC61#;#if 0x00CD != 0, then write tile type to a different buffer?
$CC6B#alternate_tile_buffer#
$CC71#gfx_bullet_draw?#
$CC98#Store A to PPU_DATA#
$CC9C#Set VRAM address#This should set the VRAM address we want to write to
$CCA2#set PPUSCROLL to 0,0#
$CCAC##clear bit0, set base nametable address to $2000
$CCBC#ppu_oam_dma_load#Loads in the data from the 0x0700 OAM buffer
$CCC7#oam_buffer_flag_clear#Also clears PPU_MASK, probably because they want to draw to it outside of VBLANK?
$CCD9#wait for VBLANK#bit7 indicates when a VBLANK is active.  It's also sets negative, so this just whips around waiting for it not to be 1
$CD00#write A to PPU_CTRL#
$CD06#bankswitch_sub_var#switch to bankswitch_target, keep the value of X
$CD13#bankswitch_sub_a#
$CD45#some sub#
$CD50#clear p1 input and others#
$CD72#Set VRAM to 0x2000#
$CD81#set VRAM to 0x2000#
$CD8E#Clear PPU loop#
$CD9E#Clear VRAM C0's#Seems to do 23C0 and 27C0
$CDAC#oam_600_clear#
$CDC0#set_input_read#
$CDC6#wait#Wait until 0x17 is zero?
$CDD7#;#Clear some locations, update the anim_timer
$CDE9#end_sub#
$CDEA#oam_buffer_fb_slot?#write FB every 4 bytes, to the 'slot' section of the oam buffer
$CE05#pause_check#
$CE0B#end_sub#
$CE0C#sfx_pause#
$CE3F#lsr_ror_dex_table#Looks something up in a table?
$CE82#some_table?#
$CFAE##turn off bit 0
$CFBB#bankswitch_check_for_4#If bs_target is 4, set 0x35 to 4, otherwise it's 2
$CFC5#do_frame#
$CFD3#do_line#
$CFDA#store_ppu_mask_and_read_inputs#
$CFDF#input_write_joypad_latch#
$CFE6##
$CFEB##
$D000#input_read_complete#Reading the controller ports complete, now smooshing the data?
$D00C#inputread#Get the input, not it and write it to another var
$D031#reload_from_stack_and_jmp#Reload CPU from stack
$D037#go_to_???_jmp_table#Does this without restoring the stack
$D040#sfx_jmp_table_end?#
$D1AD#from_sfx_jmp_table#
$D1B2##set VRAM address increment per CPU read/write of PPUDATA to 1?
$D1B6##set PPU to 0x3F00
$D1C0##clear PPU scroll position
$D1CD##set base nametable address to 0x2400
$D1D4#load_from_buffer#
$D2B4##set PPU_ADDR to 0x3F00, clear the scroll
$D2CE##set base nametable address to 0x2400
$D36B##Clears bit2, which sets VRAM increments to add 1
$D37B##loads the size
$D37F#ppu_store_data#
$D395##Set base nametable address to either $2000 or $2800
$D39E##turn off bit3, set VRAM address increment to 1
$D3A6##load VRAM address from buffer
$D3D6#if_A=3#
$D3E2#bankswitch#Put bankswitch_target in X if bankswitch >= 4?
$D3E5#bankswitch_loop#If we are not in bank 4, 0x32 - 0x32 > $C8 loop
$D3F4#switching_to_bank4#Does this mean we get to eat some graphics data?
$D3FE#end_sub#
$D3FF#clear_item_select_tile?#Clears the tile in the main screen that shows the currently selected item?
$D419#wait_some_cycles#However long it takes to DEX + BNE 169 times
$D43B#oam_buffer_write_static#703/x_delta=0x40, 702/bitmask=0x20, 701/type=0x5F, 700/slot?y?=0x17, set oam_buffer_flag
$D478#clear_01c5_0041#
$D619##LDA $bankswitch_target
$D61A#bankswitch_to_target#
$D626#copy_loop#Copy 16 bytes from table location to 0x020A
$D642#bankswitch_to_3_copy_16bytes_then_bankswitch_target#
$D645##bankswitch to 3
$D64E#copy_loop#Copy 16 bytes from ROM table to 0x01FA
$D661##bankswitch to target
$D667#;#Clear 0x8E, ROL it 4 times
$D67F#set_chalice_and_level_length#Uses A shifted left once as the table offsets
$D681##
$D6A9##set high bit?
$D6B3#D6!=D1+1#
$D6BB#chalice_checks#Called after a full sweep of the grid is completed
$D6E0#chalice_check?#
$D6F7##bankswitch to 2
$D7AA#l1#
$D7AE#grid_stuffs?#
$D84D#clear_level_vars?#
$D866#grid_loop_clear_y#
$D86A#tile_loop_continue#
$D86C#load_level_tile#
$D87A#write_tile_data#Gets tile data and offset, writes it to the tile data buffer
$D88C#inc_sprite_grid_count#The playing field is 0x10 by 0x0D
$DAB2#level_scroller?#If level_scroll != 12 scroll level?
$DAD6##read jump table
$DADE#end_sub#
$DB95#tile_loop_special_tile?#a8 and AA are both rock tiles
$DBC9#;#
$DBDA#no_key#
$DBDC#grid_y_cmp?#
$DBF2#end_sub#
$DDA2#intro_level_check?#
$DDBB#branch if anim_timer bit0 = 1#
$DDBE#check_for_b_button#demo not running
$DDC4#end_sub#
$DDC5#b_pressed#Check to see if a subscreen item is selected or if we want to shoot a bullet
$DDD8#fire_pressed#Check to see if 4way running, if so write the extra bullets to bullet_lifetim
$DE0B#4way_not_active#Find a free spot in the bullet_time buffer, if none found, end
$DE15#sfx_bullet#
$DE1D#check_p1_direction#
$DE2B#dir_west#A = p1_x - 4
$DE34#dir_east#A = p1_x + 4
$DE3B#dir_south_or_north#Transfer p1_dir in from Y to the A reg.
$DE43#bullet_store#A9 = bullet_x, B2 = bullet_y, BB=bullet_dir,A0 = bullet_life
$DE54#end_sub#
$DE55#bullet_find_active#Searches the bullet buffer for an active bullet, stores it to X
$DE64#bullet_found#
$DE71#bullet_travel#Increment bullet travel,check to see if it's outside of our max range.  If so, clear the bullet
$DE80#;#load in what direction the bullet is moving and it's last position?  If it goes off the edge of the screen, clear it
$DEAA#bullet_clear#
$DEC6#rocket_clear#
$DFD8#bullet_x_old?#
$DFDC#bullet_y_old?#
$E05B#zero_c4-c9#
$E065#sprite_buffer_check?#Looking for bit 7 in C4
$E0A7#can_we_plant_a_bomb?#
$E0B8#debug_skip_check#Don't bother to check if we have any bombs in inventory if debug or demo mode is turned on
$E0C1#bomb_check_inventory#Check to see if we have any bombs in the inventory
$E0C5#bomb_count_skipped#
$E0D0#end_sub#
$E0D1#we_can_plant_a_bomb#
$E162#debug_check_skip_bomddec#
$E16C#sfx_place_bomb#
$E1CC#find_free_bomb_position#Stores it in X
$E1D2#dec_x_reg#
$E1D6#gogo_gadget_bankswitch?#
$E212#bombtimer_sub#
$E21E#Bomb pop?#02 = Explosion
$E24F#find_empty_bombslot?#Searches 5 bytes from 0xC4 to find a free slot
$E2A9#bomb_pickup#Play sound, check if we are in a demo, then increment if bombs < 100
$E2BC#end_sub#
$E2BF#end_sub#
$E319#check_tile_buffer#It's a true or false response, but I'll be buggered if I can't work out the logic at the moment
$E32E#carry_set#
$E330#stage_isn't_dark#push_to_stack_increment_by_2
$E33F#bankswitch_to_5#
$E352#store_4_at_0x600+offsetXreg#
$E361##Clear 0x8E, the ROLs set the zero flag
$E372##increment 0x8E by 0xBC
$E37A##Gets a bit tricky here.  It's using the 8D and 8E to hold where to pull the variable from
$E3D3#gfx_inner_loop#Don't let it get above 0x20?
$E3DD##Clear 0x8F
$E44D#clock_active_inc#Start of all the increment code for the various items and effects
$E45B#flash_screen_short_inc#
$E495#screen_flash_timer_inc#
$E4BF#candle_time_inc#
$E4F4#4way_active_inc#
$E502#boots_time_inc#Increments the boot timer if it's running
$E512#lifevest_active_inc#
$E525#end_sub#
$E526#item_get_reward#
$E52A##is item_tile less than 0x0B?
$E544#badluck_noitem#
$E545#item_set_to_12?#
$E54A#score_get#Subtracts 11, because that's the offset from the tile_item.
$E554#item_tile_bee?#
$E563#badluck_noitem#
$E564#shotrange_increase#Limited to 9
$E56E#end_sub#
$E56F#item_forcefield_start#Think this might be unused?
$E574#item_battery_picked_up#
$E579#bombs_add_10#
$E580#limit to 99#
$E58D#score_table#6 bytes long.  Not sure how it works
$E593#item_used_is_in_a#If item>  0x14, subtract 0x0F,  uses a table at E5A5-E5B? to jump to where the item_use_x routine is
$E59C#set_address_to_jump_to#
$E5A5#jmp_lobyte_item#
$E5A6#jmp_hibyte_item#JMP offsets for each of the items.  eg E636 is rockets
$E5B0#jmp_table_use_boots#E613
$E5B2#jmp_table_use_clock#E609
$E5B4#jmp_table_use_lightning#E5E1
$E5B6#jmp_table_use_4way#E5D7
$E5B8#jmp_table_item_candle#E5C5
$E5BA#jmp_table_item_energy#E5BC
$E5BC#jmp_table_item_rockets#E636
$E5BE#;item_use_energy#LDA 0x0E; STA sfx_to_play;
$E5C6#item_use_candle#
$E5D7#end_sub#
$E5D8#item_use_4way#
$E5E2#item_use_lightning#
$E60A#item_use_clock#
$E614#item_use_boots#
$E620#clear_darkness_and_candletime#
$E62C#item_use_lifevest#
$E637#item_use_rocket?#0x0A/bullet offset 8 is reserved for the rockets
$E668#p1_dir_northsouth#
$E690#item_use_megaton?#
$E6F0#E714#
$E6F3#;#if 0x01CF >= 2 End; If 0x01CD != 11 Continue
$E713#end_sub#
$E714#copy_loop_vars_to_zero_page#
$E721#sub_start?#
$E767#end_sub#
$E7A2#subscreen_start?#
$E815#subscr_select_lamp/latern#subscr_item_selection is +1 more than inventory base offset
$E820#item_lamp/latern_use#Don't use item if stage already bright or if candle already in use
$E83C#end_sub#
$E84E#item_use?#
$E994#subscr_itemcount_check#
$E99C#subscr_item>0#
$E99F#turn off level_darkness#
$E9AF#subscr_item_check#Check to see if we have more than zero of an item
$E9D3#subscr_item_more_than_zero#
$EA00#get_tile2_data#(Tile2 data & 0x7F) - 1 = tile data
$EA0D#tmp_tile_data_zero#
$EA24#sfx_item_pickup_bee?#
$EA2C#end_sub#
$EA2D#key_check#Have we found the key yet?
$EA78#check_for_magic_pool_tile#
$EA86##
$EA9D#clear_bomb_count#
$EAA4#double_inventory_items#Loops through the inventory for 14 items starting from rockets, then doubles the bombs
$EABC#double_item#Doubles the item, but limits it to 99
$EACF#check_if_tile_empty#If not, push the tile type into the stack and X
$EADB#wipe_tmp_tile_data#Blanks the item tile we just picked up, also checks to see if it was a stairs tile (0x1E = stairs)
$EAF1#sfx_pickup_item#Pulls the item_tile number from the stack into A before getting the reward
$EB04#end_sub#
$EBA0#tile2_get_data#Get's the tile2 data from offset Y
$EBA6#clear_tmp_tile_data#
$ED90#item_get#First it checks for demo_running, then checks we have less than 100 of an item, then increments it.  X reg contains the offset
$ED9C#end_sub#
$EE47#underground_end#play transition sfx
$EF27#lightning_check?#Seems that the carry is set if we can use lightning?
$EFF8#check_level_darkness#
$F072#end_sub#
$F225#intro_check?#
$F22A#energy_meter_decrement_check#energy timer only ticks every 6 passes
$F23D#end_sub#
$F23E#energy_meter_dec?#
$F25A#check_zero_health#
$F25F#bomb_hit_player#Bomb or missile, Y reg = how much damage
$F28C#zero_health#
$F296#health_decrease_by_a#Decreases the health by LSRxA reg
$F2A5#health_minor_empty#Triggered when health_minor hits zero
$F2AA#health_use_a_major#Fills up minor with major.
$F2B4#end_sub#
$F2B7#item_use_energy_add#0x28 in A reg
$F2E6#sfx_play_dead#
$F2F8#clear_91#
$F2FF#91_set_to_16#
$F335#lda_5_jsr_d3d6#
$F3AA#health_rol#
$F40D#ppu_get_data?#
$F41E#damage_table?#
$F49E#increment_score?#
$F4AE##Check if we go over 10, if so increment the next score.
$F4FD#hundreds_not_empty#
$F583#gfx_score_copy#Copys the contents of the score to a gfx buffer?
$F58E#p1_bombcount_check?#
$F5BD#draw_number?#Seems to be responsible for fetching the tile for numbers
$F5D4#oam_load_to_buffer_8x16#Changes banks to 6, grabs some vars from a table, push results into the stack
$F5E1##The lowest bit of sprite_select is now the carry flag.  This sets either tilebank 0 or tilebank 1
$F5E3##Carry flag indicates which tilebank, 8042 = tilebank0, 8142 tilebank1
$F5ED#lookup_table at 8042#Y = sprite_select
$F5F6##fetch previous byte from table, which gives us another offset for Y
$F5F9##read the lowest bit to set which bank we read from (8142 or 8042)
$F605##fetch the next table address, first we get the lo byte
$F607##put it into the stack for later
$F608##read the next byte
$F60D##pull the low byte from the stack
$F612##read 3 bytes from the new table and store them in 89,87,88
$F622##pull the first result out the stack again
$F626##
$F630#result_was_2#
$F633#result_was_4_or_more#set lookup table to 8D1C
$F645#put_sprite_table_var_into_x#Gets some data from the sprite table
$F649##check_bit7, if set turn on bit 8
$F64E##check bit 8
$F65B##Only copy bit7 if it's set, which is flip vertically
$F65F##read the next byte from the table
$F663##check 7th bit
$F68E##read the last byte from the table
$F695##Check bits 0 and 1,  Pallette
$F697##OR it with the result we got earlier
$F69B##Copy some stuff to the 0700 buffer
$F6A3#0x089_dec#
$F6AF#sprite_attr_load_from_table#Pulls the OAM bytes from the sprite attributes table
$F6B3##flip horizontally
$F6B8##flip vertically
$F6BD##palette and priority
$F6C2##flip the bits, as we want to move where the sprite is redrawn
$F6CC##pull our original byte from it's storage
$F6CF##store the vertical flipping flag
$F6D1##grab the sprite_x but apply some transformations if it's flipped.
$F6D3##
$F6D4##store the byte for later use
$F6DA##turn on bit7 and flip the bits?
$F6E1##oam_byte3 = oam_byte3 - sprite_x
$F6EA##If the sprite ends up off the screen, don't bother doing anything else.  We wouldn't be able to draw it anyway
$F6EE#bit6_not_set#So no horizontal flip
$F6F8#store_oam_byte2#Restore the original value.  Flip it the other way instead?
$F700##bit6, tileindex
$F707##Palette and priority flags
$F70B##flip bit7
$F716#next_table_addr#
$F717#oam_loop_of_somekind#
$F81B#oam_load_attr_to_buffer#Store the bytes we pulled out of the table into the OAM buffer.  Does some chicanery on Y because you can't draw on line 0?  Something like that...
$F821##set offset to 4.  Don't want to mess around with Sprite 0 because it lives 0700-0703
$F823#copy_sprite_attr_to_0700_buffer#Y|tileindex|attributes|X
$F840#init_underground?#
$FB84#level_number + 6 is in A#
$FBC7#pull_x_from_stack#
$FBCA#push_y_to_stack#
$FBFC#write_16_bytes_to_ppu#Fetchs the address from a lookup table, then writes data from the address into the PPU.  Format seems to be 1 byte length, followed by the ram address
$FC08##
$FC0A##clear Y as we reuse it on the inner loop
$FC0C#outer_loop#data_size loops
$FC0E#inner_loop#runs for 256 bytes?
$FC14##
$FC18#dec_x#Runs 16 times
$FC22#level_gfx_table?#
$FDCC#lookup_table3?#
$FE9E#chalice_table#
$FEDC#chalice_table_d4-6#
$FEDD#chalice_table2?#
$FFF0#unrom_bankswitch#
