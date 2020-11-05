$0000#PPU_CTRL_old#Seems to be a backup of the current PPU_CTRL mask, used to reapply any mask after a clear?
$0001#ppu_mask_to_write#
$0005#scanline#
$000E#input_p1#
$000F#input_p2#
$0010#input_another#
$0011#input_bitwiseNot#
$0014#bankswitch_target#
$0015#bankswitch_target2?#
$0016#oam_buffer_flag#
$0017#flag_inputread?#
$0019#anim_timer#
$001A#status_of_something?#Set to 4 when inc_sprite_grid has completed a full set of 13x16
$001D#vram1_addr_lobyte#
$001E#vram1_addr_hibyte#
$0021#vram2_addr_hibyte#
$0022#vram2_addr_lobyte#
$0025#level_scroll#How far we've scrolled
$0027#level_data_addr_lobyte#Holds the address of the level data we should be reading
$0028#level_data_addr_hibyte#
$002B#grid_column_complete?#Incremented each time sprite_grid_y completes a loop
$0030#tmp_offset#
$0031#scanline#oam_0600_offset
$0032#wibbly_index#
$0033#wibbly_index_old#
$0036#tmp_x_reg_storage#
$0037#oam_sprite_number#Which offset region within the OAM buffer we are looking at.  4 bytes.
$0039#oam_byte0_y#Y position of top of sprite
$003A#oam_byte1_tile_index#tile number of the sprite within the pattern table.  Lowest bit sets bank
$003B#oam_byte2_attr#sets pallets, priority and flipping
$003C#oam_byte3_x#X position of left side of sprite.
$003D#oam_data?#
$003E#hibyte_backup#
$0044#enemy_direction?#used when initilising a new enemy?
$0045#score_millions#
$0046#score_hundredthousand#
$0047#score_tenthousands#
$0048#score_thousands#Thousands
$0049#score_hundreds#hundreds
$004A#level_number#1B = Credits
$004B#tmp_tile_data#
$004C#p1_bombs#
$004D#item_base#base for some player items
$004E#item_lifevest#
$004F#item_lantern#
$0054#level_continue#which level you start on after a continue
$0058#item_medals#
$0059#item_points_1000#
$005B#item_points10000#
$005D#item_magicalbee#
$005E#shot_range#
$0060#item_battery?#Not sure if this is what I think it is
$0061#item_boots#
$0062#item_clock#
$0063#item_lightning#
$0064#item_4way#
$0065#item_candle#
$0066#item_energy#
$0067#item_rockets#
$0069#item_chalice#Reset items from 4D += 1F
$006A#item_key#
$006B#underground_start?#
$006C#underground_end?#
$006D#level_darkness#0 = Bright, 1 = dark, 81 = candle running?
$006E#sprite_x_grid#Where the sprite is located on the 13x16? grid X
$006F#sprite_grid_y#Where the sprite is located on the 13x16? grid Y
$0070#gfx_buffer1#
$0076#p1_x#
$0077#p1_y#
$0078#p1_dir#0 = East, 1 = West, 2 = South, 3 = North
$007D#item_forcefield_active#
$007E#flag_death?#Something to do with the zeroflag?
$007F#sprite_x#
$0081#sprite_y#
$0083#oam_tile_index#
$0084#oam_sprite_palette#This is the palette pulled from the sprite attributes table.
$0085#sprite_table_lookup_lobyte#lob
$0086#sprite_table_lookup_hibyte#
$0088#palette_and_priority_minus#
$0089#oam_sprite_current_frame#Gets set by the 8042 jmp table.  Basically how many frames of animation a sprite has.
$008A#tmp_offset2#Used for the tile offset from tilebase
$008B#lookup_table3?#
$008C#enemy_slot_current#Which enemy slot we are currently looking at
$008D#lookup_table_lobyte?#health_major ROL'd 4 times/Used as a loop count?
$008E#lookup_table_hibyte?#Used during E361 to set the location to read from
$008F#lookup_table2_lobyte#
$0090#lookup_table2_hibyte#
$0091#gfx_addr_hibyte#
$0092#gfx_addr_lobyte#
$0093#tmp_dir_var#
$0094#gfx_offset?#
$0095#data_size?#How much data to write to the PPU?
$0098#sino_offset#Used to provide the sine movement pattern for the enemies
$0099#subscr_item_selection#
$009A#screen_scrolled#Zero'd at the start of each frame, this sets how far to move the enemies when the screen is scrolled
$009B#flag_demo#Flag for whether the demo is running
$009C#enemy_offset_var?#
$00A0#bullet_lifetime_base#How long the bullet has been alive, A8 is used for rockets
$00A2#bullet2_life#
$00A9#bullet_base_x#Bullet is travelling +/- x
$00AB#bullet2_x#
$00B2#bullet_base_y#Bullet is travelling +/- y
$00B4#bullet2_y#
$00BB#bullet_direction#Stores which direction the bullets are travelling in
$00BD#bullet2_dir#
$00C4#base_bombs?#
$00C5#bomb_placed?/bullet_dir#
$00CD#gfx_buffer_select#Writing non-zero causes the tiles to be sent to the second buffer
$00CF#NMI_vector_base#
$00D0#level_position#
$00E0#enemy_type#
$00E1#enemy2_type#
$00E2#enemy3_type#
$00E3#enemy4_type#
$00E4#enemy5_type#
$00E5#enemy6_type#
$00FA#music_to_play#
$00FB#sfx_to_play#
$0140#stack#
$0150#music_current?#
$0152#sfx_lookup_result#
$0154#apu_square1#
$0155#apu_square2#
$0156#apu_triangle#
$0157#apu_noise#
$0158#apu_dmc?#
$0159#channel_enable_status?#
$01A5#noise_pitch#
$01B9#flag_music_loop#Whether or not the music has completed a loop
$01C0#p1_current_tile?#Which tile we are currently stod on?
$01C1#subscreen_something?#
$01C6#health_minor#
$01C7#health_major#
$01C8#damage?#
$01C9#shot_range_actual#
$01CA#item_clock_active#
$01CB#screen_flash_short_timer#
$01CC#screen_flash_timer#
$01CD#gfx_inner_loop#
$01CE#gfx_outer_loop#
$01D0#candle_time#Turns off at 0xFF
$01D1#4way_active#
$01D2#boots_active#Non-zero means boots active, until the timer rolls over
$01D3#lifevest_active#
$01D4#player_hit_timer#Seems to set how far we get thrown back when damaged
$01D5#bomb_walkback_timer#How far back we get moved on a bomb place
$01D6#oam0_x_buffer?#
$01D7#oam1_x_buffer?#
$01D8#oam2_x_buffer?#
$01D9#oam3_x_buffer?#
$01DA#oam4_x_buffer?#
$01DB#oam5_x_buffer?#
$01DC#oam0_y_buffer?#
$01DD#oam1_y_buffer?#
$01DE#oam2_y_buffer?#
$01DF#oam3_y_buffer?#
$01E0#oam4_y_buffer?#
$01E1#oam5_y_buffer?#
$01E2#bomb_timer2#Also the base for the entity
$01E3#bomb_timer1#
$01EC#energy_meter_timer#Decrements energy meter when it gets to 6
$01ED#flag_debugmode#e
$01EE#gfx_score_buffer?#
$01F3#main_menu_option#0 for start, 1 for continue
$01F4#tmp_level_num?#
$01F5#drowning#
$01FA#ppu_data_buffer?#Gets 10 bytes copied into it from 9DE0.  Gets the PPU_CTRL mask read from it at
$021A#gfx_buffer2#
$02F8#flag_themesong#
$02FB#PPU_SCROLL_old#
$02FC#tile_data_buffer#
$0301#boss_eyeball_blink#
$0303#boss_xpos#
$0304#boss_ypos#
$03D9#tile2_data_base#Holds where the randomly drops item spawn
$04B1#enemy1_x#base for the OAM sprite coordinates
$04B2#enemy2_x#
$04B3#enemy3_x#
$04B4#enemy4_x#
$04B5#enemy5_x#
$04B6#enemy6_x#
$04BB#enemy1_y#
$04BC#enemy2_y#
$04BD#enemy3_y?#
$04BE#enemy4_y#
$04BF#enemy5_y#
$04C0#enemy5_y#Also used for the ship in the intro stage
$04C5#enemy_timer?#Some kind of timer for the enemy
$04CF#enemy1_dir#
$04D0#enemy2_dir#
$04D1#enemy3_dir#
$04D2#enemy4_dir#
$04D3#enemy5_dir#
$04D4#enemy6_dir#
$04D9#enemy1_?#
$04DA#enemy2_?#
$04DB#enemy3_?#
$04DC#enemy4_?#
$04DD#enemy5_?#
$04E3#enemy_sino1#Seems to be the sinusodial wave stuff
$04E4#enemy_sino2#
$04E5#enemy_sino3#
$04E6#enemy_sino4#
$04E8#enemy6_sino6#
$0501#enemy1_hits#How much damage we've applied to the enemy so far
$0502#enemy2_hits#
$0503#enemy3_hits#
$0504#enemy4_hits#
$0505#enemy5_hits#
$0506#enemy?_hits#
$050B#enemy1_x?#
$050C#enemy2_x?#
$050D#enemy3_x?#
$050E#enemy4_x?#
$050F#enemy1_y?#
$0510#enemy2_y?#
$0511#enemy3_y?#
$0512#enemy4_y?#
$0513#enemy5_y?#
$0524#shop_item_offset#
$0528#enemy_last_killed#
$0529#magic_pool_activated#Set to 1 when you walk into a magic pool.  Seems that there's code for 3, which clears all your bombs
$0600#vram_addr_table#
$061D#tile_item_selected#
$0700#oam_buffer#Used to DMA data into the OAM
$0704#player sprite data?#
