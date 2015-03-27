notifications
onNext: value
	"Notifies the observer of a new element in the sequence."
	^stopped ifFalse:[
			onNextAction value: value ]
			ifTrue:[nil].
				