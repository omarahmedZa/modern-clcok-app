extends Resource

@export var h_time : int
@export var m_time : int
@export var s_time : int
@export var time_format : Generals.TIME_FORMAT
@export var day : Generals.DAYS

func get_time(with_s_time : bool = false) -> String:
	if with_s_time:
		return str(h_time) + ":" + str(m_time) + ":" + str(s_time)
	
	return str(h_time) + ":" + str(m_time)
