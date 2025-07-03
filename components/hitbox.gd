extends StaticBody2D

signal damaged(damage : float)

func hurt(damage):
	damaged.emit(damage)
