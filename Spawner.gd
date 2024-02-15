extends Timer

@export var enemy_scene:PackedScene

func _ready():
	pass
	
func _process(delta): #Once a frame
	pass
	
func _physics_process(delta): 
	pass


func _on_timeout():
	var enemy = enemy_scene.instantiate()
	var s = get_viewport().size
	
	var p = Vector2(randf_range(0, s.x), randf_range(0, s.y))
	enemy.position = p
	#$"../".add_child(enemy)
	#get_parent().add_child(enemy)
	get_tree().root.add_child(enemy)
	
	add_child(enemy)
	pass # Replace with function body.
