extends Node

var dice_d6 = load("res://assets/scenes/D6.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.playing = true
	$AnimationPlayer.play("to_top")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if event is InputEventScreenTouch:
		if event.pressed:
			var dice = dice_d6.instance()
			var dice_transform = Transform(Basis(), Vector3(.0, .5, .0))
			dice.set_global_transform(dice_transform)
			add_child(dice)
			dice.set_owner(dice.get_parent())
