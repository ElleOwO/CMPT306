extends AnimatableBody2D
class_name Obstacle
# changed shrink speed form 4 to 5
var shrink_speed = 4.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CollisionPolygon2D.scale = Vector2.ONE*10.0
	$CollisionPolygon2D.rotate(randf_range(0,360))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	$CollisionPolygon2D.scale -= Vector2.ONE * shrink_speed*delta

# once tiny, delete
	if $CollisionPolygon2D.scale.x < .05:
		self.queue_free()
