subscription - api
testSingleSubscriptionComplete

	| received stream announcer |
	received := false.
	announcer := Announcer new.
	
	stream := RxObservable fromAnnouncement: RxMockAnnouncement onAnnouncer: announcer.
	stream onNextDo: [:each | received := true ].
	
	self deny: received.
	announcer announce: RxMockAnnouncement new.
	self assert: received