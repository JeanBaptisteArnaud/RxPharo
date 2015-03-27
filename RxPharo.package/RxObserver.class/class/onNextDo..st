instance-creation
onNextDo: onNextCallback
	
	^ self
		onNextDo: onNextCallback
		onErrorDo: [ :error | error signal ]
		onCompletedDo: [ "Nothing" ]