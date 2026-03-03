class_name ExampleSprite #määritä luokan nimi
extends Sprite2D #mistä luokasta periytyy

#Jäsenmuuttujat
@export var _speed: float = 10

# Called when the node enters the scene tree for the first time.
#käytetään Noden alustukseen
func _ready() -> void:
	print("Globaali sijanti: " + str(global_position)) # Replace with function body.
	print("Lokaali sijanti: " + str(position))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#liikutetaan objektia
	#Tekee nopeudesta FPS-riippumattoman eli nopeuden yksikkö on 
	#pikseliä / sekunti eikä pikseliä / frame
	global_position.x += _speed * delta
	
