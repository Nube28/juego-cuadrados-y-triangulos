extends CharacterBody2D


var speed = 200 
var velocitY = Vector2.ZERO 


func _physics_process(delta: float) -> void:
	# Lee las entradas del teclado1
	velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):  # Tecla de mover derecha
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):  # Tecla de mover izquierda
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):  # Tecla de mover abajo
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):  # Tecla de mover arriba
		velocity.y -= 1

	# Normaliza la velocidad para evitar moverse más rápido en diagonales
	velocity = velocity.normalized() * speed

	# Aplica el movimiento
	move_and_slide()
