notifications
onCompleted
	"Notifies the observer of the end of the sequence."
	^stopped ifFalse:[
		stopped := true.
		onCompletedAction value].
