as yet unclassified
subscribeCore: value
	^(subscribe value: value).
	"it is ugly in the best way I need to check later."
	"toReturn ifNil:[^ RxSubscription empty].
	toReturn ifFalse:[^ RxSubscription empty]."