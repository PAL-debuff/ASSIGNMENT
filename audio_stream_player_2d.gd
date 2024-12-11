extends AudioStreamPlayer2D

@export var audio_player: AudioStreamPlayer2D
@export var run_audio: AudioStream  # 奔跑音效
@export var jump_audio: AudioStream  # 跳跃音效


func run():
	if run_audio:  # 检查音效是否已分配
		audio_player.stream = run_audio
		audio_player.play()


func jump():
	if jump_audio:  # 检查音效是否已分配
		audio_player.stream = jump_audio
		audio_player.play()
