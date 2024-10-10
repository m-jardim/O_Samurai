player_sprite:

	// idle samurai
	idle_samurai1 = LoadImage("idle_samurai1.png")
	idle_samurai2 = LoadImage("idle_samurai2.png")
	idle_samurai3 = LoadImage("idle_samurai3.png")
	idle_samurai4 = LoadImage("idle_samurai4.png")
	idle_samurai5 = LoadImage("idle_samurai5.png")

	idle_sprite = CreateSprite(0) //animando
	AddSpriteAnimationFrame(idle_sprite, idle_samurai1)
	AddSpriteAnimationFrame(idle_sprite, idle_samurai2)
	AddSpriteAnimationFrame(idle_sprite, idle_samurai3)
	AddSpriteAnimationFrame(idle_sprite, idle_samurai4)
	AddSpriteAnimationFrame(idle_sprite, idle_samurai5)

	// corrida lado direito
	right_run1 = LoadImage("right_side_run1.png")
	right_run2 = LoadImage("right_side_run2.png")
	right_run3 = LoadImage("right_side_run3.png")
	right_run4 = LoadImage("right_side_run4.png")
	right_run5 = LoadImage("right_side_run5.png")
	right_run6 = LoadImage("right_side_run6.png")
	right_run7 = LoadImage("right_side_run7.png")
	right_run8 = LoadImage("right_side_run8.png")

	sprite_right_run = CreateSprite(0) // animando
	AddSpriteAnimationFrame(sprite_right_run, right_run1)
	AddSpriteAnimationFrame(sprite_right_run, right_run2)
	AddSpriteAnimationFrame(sprite_right_run, right_run3)
	AddSpriteAnimationFrame(sprite_right_run, right_run4)
	AddSpriteAnimationFrame(sprite_right_run, right_run5)
	AddSpriteAnimationFrame(sprite_right_run, right_run6)
	AddSpriteAnimationFrame(sprite_right_run, right_run7)
	AddSpriteAnimationFrame(sprite_right_run, right_run8)

	// corrida lado esquerdo
	left_run1 = LoadImage("left_side_run1.png")
	left_run2 = LoadImage("left_side_run2.png")
	left_run3 = LoadImage("left_side_run3.png")
	left_run4 = LoadImage("left_side_run4.png")
	left_run5 = LoadImage("left_side_run5.png")
	left_run6 = LoadImage("left_side_run6.png")
	left_run7 = LoadImage("left_side_run7.png")
	left_run8 = LoadImage("left_side_run8.png")

	sprite_left_run = CreateSprite(0) // animando
	AddSpriteAnimationFrame(sprite_left_run, left_run1)
	AddSpriteAnimationFrame(sprite_left_run, left_run2)
	AddSpriteAnimationFrame(sprite_left_run, left_run3)
	AddSpriteAnimationFrame(sprite_left_run, left_run4)
	AddSpriteAnimationFrame(sprite_left_run, left_run5)
	AddSpriteAnimationFrame(sprite_left_run, left_run6)
	AddSpriteAnimationFrame(sprite_left_run, left_run7)
	AddSpriteAnimationFrame(sprite_left_run, left_run8)

	// ataque lado direito
	right_attack1 = LoadImage("right_side_attack1.png")
	right_attack2 = LoadImage("right_side_attack2.png")
	right_attack3 = LoadImage("right_side_attack3.png")
	right_attack4 = LoadImage("right_side_attack4.png")
	right_attack5 = LoadImage("right_side_attack5.png")
	right_attack6 = LoadImage("right_side_attack6.png")

	sprite_right_attack = CreateSprite(0)		// animando
	AddSpriteAnimationFrame(sprite_right_attack, right_attack1)
	AddSpriteAnimationFrame(sprite_right_attack, right_attack2)
	AddSpriteAnimationFrame(sprite_right_attack, right_attack3)
	AddSpriteAnimationFrame(sprite_right_attack, right_attack4)
	AddSpriteAnimationFrame(sprite_right_attack, right_attack5)
	AddSpriteAnimationFrame(sprite_right_attack, right_attack6)

	// ataque lado esquerdo
	left_attack1 = LoadImage("left_side_attack1.png")
	left_attack2 = LoadImage("left_side_attack2.png")
	left_attack3 = LoadImage("left_side_attack3.png")
	left_attack4 = LoadImage("left_side_attack4.png")
	left_attack5 = LoadImage("left_side_attack5.png")
	left_attack6 = LoadImage("left_side_attack6.png")

	sprite_left_attack = CreateSprite(0)
	AddSpriteAnimationFrame(sprite_left_attack, left_attack1)
	AddSpriteAnimationFrame(sprite_left_attack, left_attack2)
	AddSpriteAnimationFrame(sprite_left_attack, left_attack3)
	AddSpriteAnimationFrame(sprite_left_attack, left_attack4)
	AddSpriteAnimationFrame(sprite_left_attack, left_attack5)
	AddSpriteAnimationFrame(sprite_left_attack, left_attack6)
	
	// visibilidade dos sprites
	SetSpriteVisible(sprite_right_run, 0)
	SetSpriteVisible(sprite_left_run, 0)
	SetSpriteVisible(sprite_right_attack, 0)
	SetSpriteVisible(sprite_left_attack, 0)
	SetSpriteVisible(idle_sprite, 1)
	
	// vida
	heart = LoadImage("heart.png")
	heart_one = CreateSprite(heart)
	heart_two = CreateSprite(heart)
	heart_three = CreateSprite(heart)
	SetSpritePosition(heart_one,50,0)
	SetSpritePosition(heart_two,100, 0)
	SetSpritePosition(heart_three,150, 0)
	
Return