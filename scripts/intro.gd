extends Node2D
@export var house:Sprite2D
@export var bloodRoom4:Sprite2D
@export var gabriel:Sprite2D
@export var hallWay:Sprite2D
@export var town2:Sprite2D
@export var hallWay2:Sprite2D
@export var hallWay3:Sprite2D
var part:int=0

# Called when the node enters the scene tree for the first time.
func _ready():

	#end
	if globals.npcTriggered.has("mihai") and globals.npcTriggered["mihai"]:
		pass
	#town
	elif globals.inHospital:
		text_box.queue_text("oops
		gabriel doesnt feel too well
		after that, gabriel went to the hospital:
		at the hospital:")
		self.visible=false
	
	#attic 3
	elif globals.npcTriggered.has("flapjack2") and globals.npcTriggered["flapjack2"]==true:
		text_box.queue_text("this is Gabriel
		he is
		very
		very
		very
		hungry--red")

	#attic 2
	elif globals.npcTriggered.has("cat") and globals.npcTriggered["cat"]:
		gabriel.visible=false
		text_box.queue_text("gabriel is sleeping
		gabriel is waking up")

	#attic 1
	elif globals.npcTriggered.has("rat") and  globals.npcTriggered["rat"]:
		gabriel.visible=false
		text_box.queue_text("after that, gabriel slept
		and slept and slept
		and slept for 4 years")

	#intro
	else:
		audio.playMusic()
		gabriel.visible=true
		text_box.queue_text("this is Gabriel
		intelligence: not much
		math skills: 3/10
		language in general: 1/10
		physique: very big
		note: he is very hungry
		idk lets start--red")


func _process(delta):
	#called when the textBox has just finished showing an entire conversation
	if(text_box.current_state==text_box.State.ready):
		if (globals.npcTriggered.has("mihai") and globals.npcTriggered["mihai"]):
			match part:
				0:
					audio.playMusic("dramatic")
					self.visible=false
					text_box.queue_text("and so--fast--0.04")
					part+=1
				1:
					if audio.passed(5.66):
						bloodRoom4.visible=true
						self.visible=true
						text_box.queue_text("gabriel ate a 3 month old baby--fast--0.04")
						part+=1
				2:
					if audio.passed(11.32):
						text_box.queue_text("imagine eating a 3 month old baby--fast--0.04")
						part+=1
				3:
					if audio.passed(16.98):
						bloodRoom4.visible=false
						hallWay.visible=true
						text_box.queue_text("after gabriel ate a 3 month old snack, he was kicked out of the hospital--fast--0.04")
						part+=1
				4:
					if audio.passed(22.64):
						text_box.queue_text("he then reformed and became a vegetarian--fast--0.04")
						part+=1
				5:
					if audio.passed(28.3):
						hallWay.visible=false
						town2.visible=true
						text_box.queue_text("gabriel beeng a vegetarian:--fast--0.04")
						part+=1
				6:
					if audio.passed(33.96):
						town2.visible=false
						hallWay2.visible=true
						text_box.queue_text("after 2 years gabriel returned to the hospital--fast--0.04")
						part+=1
				7:
					if audio.passed(39.62):
						hallWay2.visible=false
						hallWay3.visible=true
						text_box.queue_text("then he tripped and died--fast--0.04")
						part+=1
				8:
					if audio.passed(45.28):
						text_box.queue_text("he was in a hospital but nobody liked gabriel so they let him die--fast--0.04")
						part+=1
				9:
					if audio.passed(51):
						self.visible=false
						text_box.queue_text("rip gabriel ♿🤓🏳️‍🌈ඞා--0.04")

		elif globals.inHospital:
			get_tree().change_scene_to_file("scenes/hospitalRoom1.tscn")

		#attic 3
		elif globals.npcTriggered.has("flapjack2") and globals.npcTriggered["flapjack2"]:
			if house.visible==true:
				get_tree().change_scene_to_file("scenes/alley.tscn")
			else:
				house.visible=true
				text_box.queue_text("after gabriel ate flapjack, he was kicked out from his home
				homeless?--megamind
				what adventures awaits him outside?
				how many humans will he eat throughout the game?
				:)")
				text_box.inChat=false

		#attic2
		elif globals.npcTriggered.has("cat") and globals.npcTriggered["cat"]:
			get_tree().change_scene_to_file("scenes/attic3.tscn")

		#attic 1
		elif globals.npcTriggered.has("rat") and  globals.npcTriggered["rat"]:
			get_tree().change_scene_to_file("scenes/attic2.tscn")

		#intro
		else:
			get_tree().change_scene_to_file("scenes/attic1.tscn")
			audio.playMusic("backgroundNoise0")


func textReady():
	return text_box.current_state==text_box.State.ready
#its 4:24 AM, i havent slept yet and i have to go to school in 3 hours and 20 
#sleepless?
#yesterday i fell asleep around 6.30 am and overslept. because of that i missed the math test (integrals) (wtf americans dont do integrals by default in highschool:))
"""
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⢚⡭⠖⠒⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠐⠦⠥⣒⣢⠤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣠⠋⣴⣏⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⣗⡤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢠⢇⣾⣿⣿⣿⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠳⢭⣒⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⢏⣾⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀⡀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠶⣝⡆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣞⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣷⣶⣶⣦⣤⣤⡾⠿⠿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢰⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠳⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⡞⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠁⠰⠶⣭⡉⠛⠓⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⡀⠀⠀⠀⠀⠀⢠⠇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢸⠃⣿⣿⣿⢿⣿⣿⣿⣿⣿⡿⢫⠀⢠⢶⠭⢭⣦⠙⡮⠀⢹⠀⢀⣀⡤⠤⠔⠒⠶⢶⣖⣒⠒⠢⢿⣂⠀⠀⠀⠀⣸⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⡎⣰⣿⣿⡿⢸⣿⣿⣿⣿⠟⢰⠃⣄⢸⡸⣄⡠⢿⡴⣃⡴⠚⢚⣩⠤⢤⣶⣶⣾⣿⡿⣫⡿⣿⡶⠖⠻⠦⢤⣀⢀⡏⠀⠀⣀⣀⡤⠀⠀⢸⠀
⠀⠀⠀⢰⢫⣿⣿⣿⣇⣨⣿⣿⣿⠏⠀⣾⠠⠼⠦⠭⢄⡸⠞⠉⠁⠐⠉⢀⣴⣾⣿⣿⣿⣿⢟⣵⡿⠁⠈⢳⡈⣓⠦⣈⠓⢽⡳⢤⡐⢛⠁⠀⠀⠀⠀⠀
⠀⠀⢀⣏⣾⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠹⣄⡀⣠⠖⣫⣴⣧⣤⣤⣤⣾⣿⣿⣿⣿⣿⢟⣵⣿⣫⡐⢣⡄⠀⡳⡀⠙⠮⡳⣄⠘⠲⣽⡿⣄⠀⠀⠀⠀⠀
⠀⠀⡼⣾⣿⣿⣿⣿⠙⣟⢿⡏⠀⠀⠀⠀⢀⡝⣡⣾⣿⣿⣿⣿⠿⠋⠩⣿⣿⡿⣟⣵⡿⠋⠁⠐⢷⠀⣷⠀⠹⣷⣄⠀⠈⠻⡷⡄⠚⢳⣌⠳⡀⠀⠀⠀
⠀⢸⡇⣿⣿⣿⣿⣿⡇⢿⣶⠇⠀⠀⢀⡴⢣⣾⣿⣿⣿⡿⠋⠀⠀⢀⡴⢟⣭⣾⡿⣿⣇⢠⠀⠓⢠⡇⢸⣇⠀⢳⡟⠳⡀⠀⠘⣿⡄⠈⢻⣧⢹⠀⠀⠀
⠀⢸⡷⣿⣿⣿⣿⣿⣿⣼⣿⠀⠀⢀⡞⣴⣯⣿⣷⣿⣿⡿⠟⣶⣦⣼⣾⣿⣿⣿⠁⣯⠉⠉⠩⠽⠛⡇⣾⣿⡄⠘⣿⠃⢻⡄⠀⢸⡇⠀⠀⢱⡿⠀⠀⠀
⠀⠀⠙⣿⣿⣿⣿⣿⣿⣷⣻⡄⣰⠏⡾⢛⣛⣫⣭⣽⣶⡟⠉⣣⡆⢿⡛⠋⣼⡏⣼⡏⠀⠀⠀⠂⣼⡿⠋⢸⡇⠀⡟⠇⣼⣿⡀⠈⠀⠀⠀⢀⣷⣄⣀⣀
⠀⠀⠀⠈⠻⣿⣻⣿⣿⣿⣷⣳⡇⠀⠟⢿⠉⠉⠉⡍⣽⠀⠈⢉⣯⣿⢧⡀⣿⣏⠉⠀⠀⠀⢀⣀⠤⠶⢾⣾⠇⢰⠁⢸⡿⣿⠇⢀⠀⠀⣤⣾⣿⠿⠿⠋
⠀⠀⠀⠀⡄⠈⠛⠿⣿⣿⣿⣷⡽⣾⠀⢸⠀⠀⠀⣷⢹⡐⣄⣈⣀⣉⡴⠛⠛⠉⠓⢀⡠⠖⢋⣡⣤⣤⣤⡟⢠⠏⢀⡟⣸⡿⢀⠄⠀⣼⣿⣿⣿⡄⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⣻⠃⡐⢺⣇⠀⠀⢿⣿⣦⠤⠤⠞⠋⠀⠀⠀⢀⡴⢋⣠⣾⣿⣿⣿⣿⠿⡵⠋⣀⣾⡷⢋⣄⣼⣯⣤⣿⣿⠇⢻⣿⠀⠀
⠀⠀⠀⠀⠀⠸⣄⠀⠀⠀⣀⠞⠁⡴⠁⠀⢻⣆⠀⠸⣿⣟⢧⡀⠀⠀⣀⠀⣰⡏⢰⣿⣿⣿⣿⣿⣿⠋⣳⢿⣿⣵⣫⣴⢫⣿⣿⣿⣿⣿⡟⠀⣸⡏⠀⠀
⠀⠀⠀⠀⠀⠀⠙⠿⠭⠍⣤⠀⣸⠃⠀⠀⢠⠙⢷⢄⡘⢿⣦⣀⠀⠀⠇⠈⠛⠿⣶⣿⣿⡿⠋⢉⢴⠾⠃⢠⣾⣿⣿⣿⣸⣿⣿⣿⣿⡟⠀⠴⠋⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⠁⣴⠇⠀⠀⠀⣼⡀⠈⢧⠙⢳⣤⡽⠿⣷⣦⠀⡀⠀⠀⠈⠉⠉⠙⠋⠁⠀⢠⣿⠃⢸⣿⣿⣿⡟⢸⣿⡟⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠸⡅⣰⣻⣤⠀⠀⢀⣧⣇⠀⢫⣆⠀⣇⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⣸⡿⣿⣿⡆⠈⣿⠃⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢻⡇⣇⠀⠀⢸⢻⣿⡄⠀⠻⣧⠸⠟⠛⠛⢻⣿⣟⠛⠉⠀⡯⣭⣉⠛⠛⣿⣿⡖⠋⠁⢀⣿⣿⠻⠦⠌⠃⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⡿⣼⡀⠀⢸⣸⣿⣽⢦⡴⠃⢀⣠⣤⡀⠀⠑⡝⢷⣄⡸⠧⢔⣀⡻⢠⣏⠈⡇⠰⠮⣛⢿⠙⠓⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠟⢳⣿⡱⣄⣈⣿⡿⠟⣉⣤⣶⣿⣿⣿⣿⣦⡀⡇⠀⠈⢷⣴⣒⣉⠇⣸⣿⣲⣧⠰⡈⠿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣴⠀⠀⠻⠆⠈⠻⢧⡹⣹⢏⣥⣾⣿⣿⣿⣿⣿⣿⣿⣿⣹⡇⠀⠀⠀⠹⣿⡛⢠⣿⣟⣛⣿⡄⢡⠴⢻⣷⣄⡀⢀⣀⣠⣤⣤⡤⡀⠀⠀
⠀⠀⠀⢀⣼⣿⡇⠀⠀⠀⠀⠀⠀⢠⢾⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⢻⣿⠿⣿⣶⣿⣿⣇⠀⠾⠛⠛⠧⠻⠯⠞⣋⣥⠽⠆⠉⠙⠀
⠀⠀⢨⣿⡿⠟⠁⠀⠀⠀⠀⣀⡼⣡⣿⣿⣿⣿⣿⣟⣠⣿⣿⣿⣿⣿⣿⣿⡿⠄⠀⠀⠀⢱⠹⣧⣭⢻⡿⣻⡟⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀
⠀⢠⣾⠟⠀⠀⠀⠀⠀⢠⣿⣽⡿⠟⣩⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠈⣦⣼⣇⣿⣷⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⡼⠁⠀⠀⠀⠀⠀⣠⡾⠋⠁⢠⣾⡿⡿⠻⠾⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠰⠛⣿⡤⠠⡈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣼⠃⠀⠀⠀⣠⠔⠋⠁⠀⠀⠐⠋⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⡿⣿⡿⠇⣀⣤⡖⠂⠀⠀⠀⡽⠙⠒⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣤⣄⣤⠞⠉⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⡴⠋⠉⠙⠛⠁⣠⣿⣶⣿⡟⠉⠁⠀⠀⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"""
