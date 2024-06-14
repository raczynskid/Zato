extends Node

@onready
var player_list = $ColorRect/VBoxContainer/HBoxContainer/PlayerNames
@onready
var score_list = $ColorRect/VBoxContainer/HBoxContainer/PlayerScores

func _ready():
	refresh()

func refresh():
	var sw_result: Dictionary = await SilentWolf.Scores.get_scores().sw_get_scores_complete
	player_list.clear()
	score_list.clear()
	for score in sw_result.scores:
		var score_line = (score['player_name'] + " " + str(score['score']))
		player_list.add_item(score['player_name'],null,false)
		score_list.add_item(str(score['score']),null,false)


func _on_line_edit_text_submitted(new_text):
	SilentWolf.Scores.save_score(new_text, Globals.enemies_killed)
	$ColorRect/VBoxContainer/LineEdit.release_focus()
	Signals.leadearboard_updated.emit()
	
