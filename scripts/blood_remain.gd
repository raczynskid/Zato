extends Node2D



func _on_area_2d_body_entered(body):
	if body.is_in_group("Player") or body.is_in_group("Enemy"):
		body.get_node("FootprintSpawner").start_emitting()
