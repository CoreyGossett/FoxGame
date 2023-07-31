extends Area2D

@onready var anim = get_node("AnimatedSprite2D")

func _on_body_entered(body):
	if body.name == "Player":
		Game.playerHP += 3
		Game.gold += 1
		Utils.saveGame()
		get_node("AnimatedSprite2D").play("pickup")
		await get_node("AnimatedSprite2D").animation_finished
		self.queue_free()

func _on_ready():
	anim.play("idle")
