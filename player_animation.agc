player_animation:

// idle lado direito
right_idle_samurai1 = LoadImage("right_idle_samurai1.png")
right_idle_samurai2 = LoadImage("right_idle_samurai2.png")
right_idle_samurai3 = LoadImage("right_idle_samurai3.png")
right_idle_samurai4 = LoadImage("right_idle_samurai4.png")
right_idle_samurai5 = LoadImage("right_idle_samurai5.png")

sprite_right_idle = CreateSprite(0)	// animando
AddSpriteAnimationFrame(sprite_right_idle, right_idle_samurai1)
AddSpriteAnimationFrame(sprite_right_idle, right_idle_samurai2)
AddSpriteAnimationFrame(sprite_right_idle, right_idle_samurai3)
AddSpriteAnimationFrame(sprite_right_idle, right_idle_samurai4)
AddSpriteAnimationFrame(sprite_right_idle, right_idle_samurai5)
SetSpritePosition(sprite_right_idle, playerX, 570)

// idle lado esquerdo
left_idle_samurai1 = LoadImage("left_idle_samurai1.png")
left_idle_samurai2 = LoadImage("left_idle_samurai2.png")
left_idle_samurai3 = LoadImage("left_idle_samurai3.png")
left_idle_samurai4 = LoadImage("left_idle_samurai4.png")
left_idle_samurai5 = LoadImage("left_idle_samurai5.png")

sprite_left_idle = CreateSprite(0)	// animando
AddSpriteAnimationFrame(sprite_left_idle, left_idle_samurai1)
AddSpriteAnimationFrame(sprite_left_idle, left_idle_samurai2)
AddSpriteAnimationFrame(sprite_left_idle, left_idle_samurai3)
AddSpriteAnimationFrame(sprite_left_idle, left_idle_samurai4)
AddSpriteAnimationFrame(sprite_left_idle, left_idle_samurai5)
SetSpritePosition(sprite_left_idle, playerX, 570)

// corrida lado direito
right_run1 = LoadImage("right_side_run1.png")
right_run2 = LoadImage("right_side_run2.png")
right_run3 = LoadImage("right_side_run3.png")
right_run4 = LoadImage("right_side_run4.png")
right_run5 = LoadImage("right_side_run5.png")
right_run6 = LoadImage("right_side_run6.png")
right_run7 = LoadImage("right_side_run7.png")
right_run8 = LoadImage("right_side_run8.png")

sprite_right_run = CreateSprite(0)	// animando
AddSpriteAnimationFrame(sprite_right_run, right_run1)
AddSpriteAnimationFrame(sprite_right_run, right_run2)
AddSpriteAnimationFrame(sprite_right_run, right_run3)
AddSpriteAnimationFrame(sprite_right_run, right_run4)
AddSpriteAnimationFrame(sprite_right_run, right_run5)
AddSpriteAnimationFrame(sprite_right_run, right_run6)
AddSpriteAnimationFrame(sprite_right_run, right_run7)
AddSpriteAnimationFrame(sprite_right_run, right_run8)
SetSpritePosition(sprite_right_run, playerX, 570)

// corrida lado esquerdo
left_run1 = LoadImage("left_side_run1.png")
left_run2 = LoadImage("left_side_run2.png")
left_run3 = LoadImage("left_side_run3.png")
left_run4 = LoadImage("left_side_run4.png")
left_run5 = LoadImage("left_side_run5.png")
left_run6 = LoadImage("left_side_run6.png")
left_run7 = LoadImage("left_side_run7.png")
left_run8 = LoadImage("left_side_run8.png")

sprite_left_run = CreateSprite(0)		// animando
AddSpriteAnimationFrame(sprite_left_run, left_run1)
AddSpriteAnimationFrame(sprite_left_run, left_run2)
AddSpriteAnimationFrame(sprite_left_run, left_run3)
AddSpriteAnimationFrame(sprite_left_run, left_run4)
AddSpriteAnimationFrame(sprite_left_run, left_run5)
AddSpriteAnimationFrame(sprite_left_run, left_run6)
AddSpriteAnimationFrame(sprite_left_run, left_run7)
AddSpriteAnimationFrame(sprite_left_run, left_run8)
SetSpritePosition(sprite_left_run, playerX, 570)

// ataque lado direito
right_attack1 = LoadImage("right_side_attack1.png")
right_attack2 = LoadImage("right_side_attack2.png")
right_attack3 = LoadImage("right_side_attack3.png")
right_attack4 = LoadImage("right_side_attack4.png")
right_attack5 = LoadImage("right_side_attack5.png")

sprite_right_attack = CreateSprite(0)		// animando
AddSpriteAnimationFrame(sprite_right_attack, right_attack1)
AddSpriteAnimationFrame(sprite_right_attack, right_attack2)
AddSpriteAnimationFrame(sprite_right_attack, right_attack3)
AddSpriteAnimationFrame(sprite_right_attack, right_attack4)
AddSpriteAnimationFrame(sprite_right_attack, right_attack5)
SetSpritePosition(sprite_right_attack, playerX, 570)

// ataque lado esquerdo
left_attack1 = LoadImage("left_side_attack1.png")
left_attack2 = LoadImage("left_side_attack2.png")
left_attack3 = LoadImage("left_side_attack3.png")
left_attack4 = LoadImage("left_side_attack4.png")
left_attack5 = LoadImage("left_side_attack5.png")

Return
 