background_gameplay:

//limpando a tela
ClearScreen()

//carregando as imagens
background_game1 = LoadImage("gameplay_background_pt1.png")
background_game2 = LoadImage("gameplay_background_pt2.png")
background_game3 = LoadImage("gameplay_background_pt3.png")
background_game4 = LoadImage("gameplay_background_pt4.png")
background_game5 = LoadImage("gameplay_background_pt5.png")
background_game6 = LoadImage("gameplay_background_pt6.png")

//criando e animando o sprite
sprite_background_game = CreateSprite(0)
AddSpriteAnimationFrame(sprite_background_game, background_game1)
AddSpriteAnimationFrame(sprite_background_game, background_game2)
AddSpriteAnimationFrame(sprite_background_game, background_game3)
AddSpriteAnimationFrame(sprite_background_game, background_game4)
AddSpriteAnimationFrame(sprite_background_game, background_game5)
AddSpriteAnimationFrame(sprite_background_game, background_game6)
PlaySprite(sprite_background_game, 10, 1, 1, 6)

Return