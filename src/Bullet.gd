extends Area2D

var speed = 750
var timer = 400
var damage = 5

func set_val(val):
	$Sprite2D.texture = load("res://resources/digits/digit" + val + ".png")

func _physics_process(delta):
	position += transform.x * speed * delta
	timer -= 1
	if timer == 0:
		queue_free()

func _on_Bullet_body_entered(body):
	if body.is_in_group("mobs"):
		body.queue_free()
	queue_free()
