class_name clock
extends TextureRect

#@export var hours : int
#@export var minutes : int
#@export var seconds : int

@export_category("interior")
@export var seconds_hand : TextureRect
@export var hours_hand : TextureRect
@export var minutes_hand : TextureRect

func _ready() -> void:
	pass

@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	var time : Dictionary = Time.get_datetime_dict_from_system()
	# Get current time components
	var hours : int = time.hour + time.minute / 60.0 as int
	var minutes : int = time.minute + time.second / 60.0 as int
	var seconds : int = time.second
	
	set_clock_time(seconds, minutes, hours)

func set_clock_time(sec : int, minute : int, hour : int) -> void:
	set_second_hand_rotation(sec)
	set_minute_hand_rotation(minute)
	set_hour_hand_rotation(hour)

# Second hand rotation (0-360 degrees)
func set_second_hand_rotation(seconds : int) -> void:
	seconds_hand.rotation_degrees = (seconds % 60) * 6.0

# Minute hand rotation (0-360 degrees)
func set_minute_hand_rotation(minutes : int) -> void:
	minutes_hand.rotation_degrees = (minutes % 60) * 6.0

# Hour hand rotation (0-360 degrees)
func set_hour_hand_rotation(hours: int) -> void:
	hours_hand.rotation_degrees = (hours % 12) * 30.0
