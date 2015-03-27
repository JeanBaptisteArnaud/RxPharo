notifications
fail: error
	^stopped 
		ifFalse:[
			stopped := true.
			onErrorAction value: error.
			true] 
		ifTrue:[false].