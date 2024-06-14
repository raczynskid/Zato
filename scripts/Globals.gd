extends Node

var enemies_killed : int

func _ready():
	SilentWolf.configure({
	'api_key':'ELINCWSwdu9pK2g4iyyUJ6JPAJhXO8oy4tna778M',
	'game_id':'Zato',
	'game_version': '1.0.0',
	'log_level': 0 # always 0 for release
	})
