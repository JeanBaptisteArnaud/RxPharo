as yet unclassified
scheduleRecursive: anBlock RelativeTime: dueTime withState: state
	self flag: #toCheckCarefully.
	self
		schedule: [ :scheduler :theState | scheduler invoke: theState recursiveTime: 'schedule_relative_with_state' ]
		relativeTime: dueTime
		withState: (RxSchedulerState state: state action: anBlock) 