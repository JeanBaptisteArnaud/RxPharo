basic operator - from
fromAnnouncement: anAnnouncement onAnnouncer: anAnnouncer
	RxAnonymousObservable new
		setSubscribe: [ :observer |
		anAnnouncer on: anAnnouncement send: #onNext: to: observer.
	];
		yourself
	
	