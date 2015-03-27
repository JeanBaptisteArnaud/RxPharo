as yet unclassified
testFromAnnouncement

	| value source announcer |
	announcer := Announcer new.
	source := RxObservable fromAnnouncement: RxMockAnnouncement onAnnouncer:  announcer.
	source onNextDo: [ :x | value := x ].
	
	announcer announce: RxMockAnnouncement new.
	
	self assert: value notNil.