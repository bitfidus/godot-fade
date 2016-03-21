
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _process(delta):
	pass

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	

func _on_Timer_timeout():
	var idx = randi() % 3
	var libre = get_child(idx)
	remove_child(libre)
	get_parent().add_child(libre)
	get_node("AnimationPlayer").play("fade")
