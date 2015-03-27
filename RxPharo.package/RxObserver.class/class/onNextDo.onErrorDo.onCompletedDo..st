instance-creation
onNextDo: onNextCallback onErrorDo: onErrorCallback onCompletedDo: onCompletedCallback
	
	^ self new
		onNextDo: onNextCallback;
		onErrorDo: onErrorCallback;
		onCompletedDo: onCompletedCallback;
		yourself