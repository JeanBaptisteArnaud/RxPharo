subscription - api
testSingleSubscriptionError

	| errorRaised stream announcer observer |
	errorRaised := false.
	announcer := Announcer new.
	
	stream := RxObservable fromAnnouncement: RxMockAnnouncement onAnnouncer: announcer.
	observer := stream onNextDo: [:each | Error signal: 'BWwaaaaaa!' ].
	"bad but for test guys"
	(observer instVarNamed: 'observer')
		 onErrorDo: [:each | errorRaised := true ].
	
	self deny: errorRaised.
	announcer announce: RxMockAnnouncement new.
	self assert: errorRaised