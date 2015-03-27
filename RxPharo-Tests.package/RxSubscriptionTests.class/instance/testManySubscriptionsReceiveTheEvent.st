as yet unclassified
testManySubscriptionsReceiveTheEvent
	"self debug: #testManySubscriptionsReceiveTheEvent"
	| received stream announcer |
	received := 0.
	announcer := Announcer new.
	
	stream := RxObservable fromAnnouncement: RxMockAnnouncement onAnnouncer: announcer.
	stream onNextDo: [ received := received +1 ].
	stream onNextDo: [ received := received +1 ].
	
	announcer announce: RxMockAnnouncement new.
	self assert: received = 2