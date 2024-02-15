extends Sprite2D

@export var speed:float = 50

func _phsyics_process(delta):
	var s = get_viewport().size
	
	s = s * 0.5
	
	look_at(s)
	
	translate(Vector2.UP * speed * delta) 
