notifications
onError: value
	"Notifies the observer that an exception has occurred."
	"to remove later"
	^stopped ifFalse:[
		stopped := true.
		onErrorAction value: value].