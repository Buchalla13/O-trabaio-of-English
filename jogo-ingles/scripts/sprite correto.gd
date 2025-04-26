extends AnimatedSprite2D
@onready var label = $"../../muro/Label"
@onready var area = $".."
var tamanhoX = 0.182

func inicio():
	scale.x=tamanhoX
	if label.text==label.nomes[0]:
		frame=0
	if label.text==label.nomes[1]:
		frame=1
	if label.text==label.nomes[2]:
		frame=2
	if label.text==label.nomes[3]:
		frame=3
	if label.text==label.nomes[4]:
		frame=4
	if label.text==label.nomes[5]:
		frame=5
	if label.text==label.nomes[6]:
		frame=6
	if label.text==label.nomes[7]:
		frame=7
	if label.text==label.nomes[8]:
		frame=8
	if label.text==label.nomes[9]:
		frame=9
	if label.text==label.nomes[10]:
		frame=10
	if label.text==label.nomes[11]:
		frame=11
	if label.text==label.nomes[12]:
		frame=12
	if label.text==label.nomes[13]:
		frame=13
	if label.text==label.nomes[14]:
		frame=14
	if label.text==label.nomes[15]:
		frame=15
	if label.text==label.nomes[16]:
		frame=16
	if label.text==label.nomes[17]:
		frame=17
	if label.text==label.nomes[18]:
		frame=18
	if label.text==label.nomes[19]:
		frame=19
	if label.text==label.nomes[20]:
		frame=20
	if label.text==label.nomes[21]:
		frame=21
	if label.text==label.nomes[22]:
		frame=22
	if label.text==label.nomes[23]:
		frame=23
	if label.text==label.nomes[24]:
		frame=24
	if label.text==label.nomes[25]:
		frame=25
func _ready() -> void:
	inicio()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	inicio()
