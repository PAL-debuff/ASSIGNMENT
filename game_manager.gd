extends Node

var points : int = 0

func add_point(): # add_point or minus_point
	points += 1
	print(points)

func minus_point() ->void:
	points -= 1
	if points < 0:
		points = 0
		print(points)
