enemy:
	// enemy movement
	enemyX = enemyX - 2
	SetSpritePosition(enemy_run_sprite, enemyX, enemyY)
		
	// enemy run
	if GetSpritePlaying(enemy_run_sprite) = 0
		PlaySprite(enemy_run_sprite)
	endif
	
	// enemy death
	if enemy_hit >= 30
		enemy_state = "dead"
	endif
	if enemy_state = "dead"
		enemy_state = "alive"
		enemy_hit = 0
		enemyX = 1280
		enemy_kills = enemy_kills + 1
	endif
	
	SetSpritePosition(enemy_blood, enemyX - 15, enemyY - 10)
	SetSpriteDepth(enemy_blood, 1)
	SetSpriteDepth(enemy_run_sprite, 0)
	SetSpriteDepth(enemy_attack, 0)
	if player_state = "right_attack" AND GetSpriteCollision(sprite_right_attack, enemy_run_sprite) = 1 AND GetSpritePlaying(sprite_right_attack) = 1
		hit_sound_verify = 1
		enemy_hit = enemy_hit + 1
		PlaySprite(enemy_blood, 60, 1, 1, 14)
	else
        if enemy_attacking = 0
        		hit_sound_verify = 0
            SetSpriteVisible(enemy_run_sprite, 1)
        endif
	endif
	if GetSpriteCurrentFrame(enemy_blood) = 14
		StopSprite(enemy_blood)
	endif
	if GetSpritePlaying(enemy_blood) = 0
		SetSpriteVisible(enemy_blood, 0)
	else
		SetSpriteVisible(enemy_blood, 1)
	endif
	
	// enemy wall
	SetSpritePosition(enemy_wall, enemyX, 0)
	SetSpriteVisible(enemy_wall, 0)
	
	SetSpritePosition(sprite_right_run, playerX, playerY)
	if GetSpriteCollision(enemy_wall, sprite_right_run) = 1
		enemyX = enemyX + 2 
		if GetRawKeyState(68) = 1
			playerX = playerX - 3
			if player_state = "right_attack"
				playerX = playerX + 3
			endif
		else
			return
		endif
	endif
	
	// enemy attack
	SetSpritePosition(enemy_attack, enemyX - 50, enemyY + 8)
	
	if GetSpriteCollision(sprite_right_attack, enemy_run_sprite) = 1 	//define o range
		attack_range = "yes"
	else
		attack_range = "no"
	endif
	
	if attack_range = "yes" and enemy_attacking = 0
    		PlaySprite(enemy_attack, 8, 1, 1, 9) 
    		enemy_attacking = 1
    		SetSpriteVisible(enemy_run_sprite, 0)
    		SetSpriteVisible(enemy_attack, 1)
	endif
	
	if attack_range = "no" AND enemy_attacking = 1
		enemy_attacking = 0
		StopSprite(enemy_attack)
		SetSpriteVisible(enemy_run_sprite, 1)
		SetSpriteVisible(enemy_attack, 0)
	endif
	
	if enemy_attacking = 1
		enemyX = enemyX + 2
		SetSpriteVisible(enemy_run_sprite, 0)
    		SetSpriteVisible(enemy_attack, 1)
    		if GetSpriteCollision(sprite_right_run, enemy_run_sprite) = 1 OR GetSpriteCollision(idle_sprite, enemy_attack) = 1 AND GetSpriteCurrentFrame(enemy_attack) = 5 
    			player_life = player_life - 0.12
    		elseif GetSpriteCollision(idle_sprite, enemy_run_sprite) = 1 OR GetSpriteCollision(idle_sprite, enemy_attack) = 1 AND GetSpriteCurrentFrame(enemy_attack) = 5
    			player_life = player_life - 0.12
    		endif
		if GetSpritePlaying(enemy_attack) = 0
			PlaySprite(enemy_attack, 8, 1, 1, 9) 
		endif
		if attack_range = "no"
			StopSprite(enemy_attack)
			SetSpriteVisible(enemy_run_sprite, 1)
			SetSpriteVisible(enemy_attack, 0)
		endif
		if GetSpriteCurrentFrame(enemy_attack) =  9
			enemy_attacking = 0
			StopSprite(enemy_attack)
			SetSpriteVisible(enemy_run_sprite, 1)
    			SetSpriteVisible(enemy_attack, 0)
		endif
	else
		SetSpriteVisible(enemy_run_sprite, 1)
    		SetSpriteVisible(enemy_attack, 0)
    	endif
    	
Return