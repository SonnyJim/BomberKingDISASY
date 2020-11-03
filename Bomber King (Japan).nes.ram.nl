$0000#PPU_MASK stuffs#
$000E#input_p1#
$000F#input_p2#
$0010#input_another#
$0011#input_bitwiseNot#
$0014#bankswitch_target#
$0017#flag_inputread?#
$0019#anim_timer#
$0025#level_scroll#How far we've scrolled
$0027#9AA0 (level data)#Holds the offset where the level data is held
$0030#tmp_offset#
$0031#bankswitch_wait_timer?#
$0032##
$0036#tmp_x_reg_storage#
$0037#offset_size#
$0039#bullet_y_something?#
$003A#enemy_type_requested#Holds a temp enemy type to be put into a free spot in the enemy buffer (E0)
$003C#p1_x_old?#
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
$006E#gfx_inner_loop_zp/sprite_x_grid#Where the sprite is located on the 13x16? grid X
$006F#gfx_outer_loop_zp/sprite_grid_y#Where the sprite is located on the 13x16? grid Y
$0070#gfx_buffer1#
$0076#p1_x#
$0077#p1_y#
$0078#p1_dir#0 = East, 1 = West, 2 = South, 3 = North
$007D#item_forcefield_active#
$007E#flag_death?#Something to do with the zeroflag?
$007F#sprite_x#
$0081#sprite_y#
$0083#sprite_select?#
$008A#tmp_offset#Used for the tile offset from tilebase
$008C#tmp_var_empty_slot#
$008D#gfx_location_lobyte?#health_major ROL'd 4 times/Used as a loop count?
$008E#gfx_location_hibyte?#Used during E361 to set the location to read from
$0091#PPU_HI_ADDR#
$0092#PPU_LO_ADDR#
$0093#tmp_dir_var#
$0094#bullet_offset?#
$0098#defense_level#Not actually sure what this does
$0099#subscr_item_selection#
$009A#random_var?#This ones a bit weird.  Set to zero at the start of each frame, but it's used to subtract from enemy X
$009B#flag_demo#Flag for whether the demo is running
$009C#enemy_movemnet?#
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
$00FA#music_to_play#
$00FB#sfx_to_play#
$0140#stack#
$0150#music_current?#
$0154#APU stuffs?#
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
$01E2#bomb_timer2#Also the base for the entity
$01E3#bomb_timer1#
$01EC#energy_meter_timer#Decrements energy meter when it gets to 6
$01ED#flag_debugmode#e
$01EE#gfx_score_buffer?#
$01F3#main_menu_option#0 for start, 1 for continue
$01F4#tmp_level_num?#
$01F5#drowning#
$01FA#?_buffer2#
$021A#gfx_buffer2#
$02F8#flag_themesong#
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
$04C5#enemy_base#
$0524#shop_item_offset#
$0528#enemy_last_killed#
$0529#magic_pool_activated#Set to 1 when you walk into a magic pool.  Seems that there's code for 3, which clears all your bombs
$0600#OAM_Base?#
$061D#tile_item_selected#
$0700#buffer_from_another_mother#
$0704#player sprite data?#
