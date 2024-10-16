enemy_sprite: 

	// enemy run
	enemy_run1 = LoadImage("enemy_run1.png")
	enemy_run2 = LoadImage("enemy_run2.png")
	enemy_run3 = LoadImage("enemy_run3.png")
	enemy_run4 = LoadImage("enemy_run4.png")
	enemy_run5 = LoadImage("enemy_run5.png")
	enemy_run6 = LoadImage("enemy_run6.png")
	enemy_run7 = LoadImage("enemy_run7.png")
	enemy_run8 = LoadImage("enemy_run8.png")
	
	enemy_run_sprite = CreateSprite(0)
	AddSpriteAnimationFrame(enemy_run_sprite, enemy_run1)
	AddSpriteAnimationFrame(enemy_run_sprite, enemy_run2)
	AddSpriteAnimationFrame(enemy_run_sprite, enemy_run3)
	AddSpriteAnimationFrame(enemy_run_sprite, enemy_run4)
	AddSpriteAnimationFrame(enemy_run_sprite, enemy_run5)
	AddSpriteAnimationFrame(enemy_run_sprite, enemy_run6)
	AddSpriteAnimationFrame(enemy_run_sprite, enemy_run7)
	AddSpriteAnimationFrame(enemy_run_sprite, enemy_run8)
	SetSpriteSize(enemy_run_sprite, 60, 60)
		
	// enemy wall
	enemy_wall_image = CreateImageColor(0, 0, 0, 255)
	enemy_wall = CreateSprite(enemy_wall_image)
	SetSpriteSize(enemy_wall, 1, 720)
	SetSpriteDepth (enemy_wall, 0) 
	
	// enemy attack
	enemy_attack1 = LoadImage("enemy_attack1.png")
	enemy_attack2 = LoadImage("enemy_attack2.png")
	enemy_attack3 = LoadImage("enemy_attack3.png")
	enemy_attack4 = LoadImage("enemy_attack4.png")
	enemy_attack5 = LoadImage("enemy_attack5.png")
	enemy_attack6 = LoadImage("enemy_attack6.png")
	enemy_attack7 = LoadImage("enemy_attack7.png")
	enemy_attack8 = LoadImage("enemy_attack8.png")
	enemy_attack9 = LoadImage("enemy_attack9.png")
	
	enemy_attack = CreateSprite(0)
	AddSpriteAnimationFrame(enemy_attack, enemy_attack1)
	AddSpriteAnimationFrame(enemy_attack, enemy_attack2)
	AddSpriteAnimationFrame(enemy_attack, enemy_attack3)
	AddSpriteAnimationFrame(enemy_attack, enemy_attack4)
	AddSpriteAnimationFrame(enemy_attack, enemy_attack5)
	AddSpriteAnimationFrame(enemy_attack, enemy_attack6)
	AddSpriteAnimationFrame(enemy_attack, enemy_attack7)
	AddSpriteAnimationFrame(enemy_attack, enemy_attack8)
	AddSpriteAnimationFrame(enemy_attack, enemy_attack9)
	SetSpriteSize(enemy_attack, 120, 50)
	
	// enemy blood
	enemy_blood1 = LoadImage("blood10.png")
	enemy_blood2 = LoadImage("blood11.png")
	enemy_blood3 = LoadImage("blood12.png")
	enemy_blood4 = LoadImage("blood13.png")
	enemy_blood5 = LoadImage("blood14.png")
	enemy_blood6 = LoadImage("blood15.png")
	enemy_blood7 = LoadImage("blood16.png")
	enemy_blood8 = LoadImage("blood17.png")
	enemy_blood9 = LoadImage("blood18.png")
	enemy_blood10 = LoadImage("blood19.png")
	enemy_blood11 = LoadImage("blood20.png")
	enemy_blood12 = LoadImage("blood21.png")
	enemy_blood13 = LoadImage("blood22.png")
	enemy_blood14 = LoadImage("blood23.png")
	
	enemy_blood = CreateSprite(0)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood1)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood2)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood3)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood4)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood5)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood6)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood7)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood8)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood9)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood10)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood11)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood12)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood13)
	AddSpriteAnimationFrame(enemy_blood, enemy_blood14)
	
	SetSpriteSize(enemy_blood, 100, 100)
	
Return