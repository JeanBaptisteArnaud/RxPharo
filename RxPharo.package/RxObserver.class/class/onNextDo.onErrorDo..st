instance-creation
onNextDo: onNextCallback onErrorDo: onErrorCallback 
	^ self
		onNextDo: onNextCallback
		onErrorDo: onErrorCallback
		onCompletedDo: [].