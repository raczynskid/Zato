extends Node

@onready
var player_list = $ColorRect/VBoxContainer/HBoxContainer/PlayerNames
@onready
var score_list = $ColorRect/VBoxContainer/HBoxContainer/PlayerScores

func _ready():
	Signals.leaderboard_activated.emit()
	Signals.vk_letter_entered.connect(_on_vk_letter_entered)
	Signals.vk_submitted.connect(_on_vk_submitted)
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
	
func _on_vk_letter_entered(letter):
	$ColorRect/VBoxContainer/LineEdit.insert_text_at_caret(letter)

func _on_vk_submitted():
	if len($ColorRect/VBoxContainer/LineEdit.text) > 0:
		_on_line_edit_text_submitted($ColorRect/VBoxContainer/LineEdit.text)
