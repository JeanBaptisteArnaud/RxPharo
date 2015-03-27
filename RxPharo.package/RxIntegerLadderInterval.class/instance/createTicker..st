as yet unclassified
createTicker: value
	ticker := RxTicker run:[
		] every: value.