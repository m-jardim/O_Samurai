player_movement:

if GetRawKeyPressed(65) = 0 OR GetRawKeyPressed(68) = 0
	SetSpriteVisible(sprite_right_idle, 1)
	SetSpriteVisible(sprite_left_idle, 0)
	SetSpriteVisible(sprite_right_run, 0)
	SetSpriteVisible(sprite_left_run, 0)
	SetSpriteVisible(sprite_right_attack, 0)
	SetSpriteVisible(sprite_left_attack, 0)
endif

while GetRawKeyPressed(65) <> 0 OR GetRawKeyState(37) <> 0
	
	SetSpriteVisible(sprite_right_idle, 1)
	SetSpriteVisible(sprite_left_idle, 0)
	SetSpriteVisible(sprite_right_run, 0)
	SetSpriteVisible(sprite_left_run, 0)
	SetSpriteVisible(sprite_right_attack, 0)
	SetSpriteVisible(sprite_left_attack, 0)
endwhile

while GetRawKeyPressed(68) <> 0 OR GetRawKeyState(39) <> 0
	
	SetSpriteVisible(sprite_right_idle, 1)
	SetSpriteVisible(sprite_left_idle, 0)
	SetSpriteVisible(sprite_right_run, 0)
	SetSpriteVisible(sprite_left_run, 0)
	SetSpriteVisible(sprite_right_attack, 0)
	SetSpriteVisible(sprite_left_attack, 0)
endwhile



	
  
Return