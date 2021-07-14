extends CanvasLayer


func _ready():
	$CoinLabel.text = String(Globals.coins)
	

func _on_coin_collected():
	Globals.coins = Globals.coins + 1
	_ready()
