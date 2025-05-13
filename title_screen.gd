extends Node2D

#comment to test git
func _ready():
	$LittleGuy/LittleGuyAnim.play("head_bob")
	
	$PreviousScore.text = "Score: " + str(Global.score)
	if Global.achievements["kill_25"] == true:
		$AchievementOrganizer/Panel25.get_theme_stylebox("panel").bg_color = Color.LIGHT_GREEN
	if Global.achievements["kill_50"] == true:
		$AchievementOrganizer/Panel50.get_theme_stylebox("panel").bg_color = Color.LIGHT_GREEN
	if Global.achievements["kill_100"] == true:
		$AchievementOrganizer/Panel100.get_theme_stylebox("panel").bg_color = Color.LIGHT_GREEN
