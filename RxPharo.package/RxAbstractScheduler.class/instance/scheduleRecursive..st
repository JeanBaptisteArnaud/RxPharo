as yet unclassified
scheduleRecursive: anBlock
	self flag: #toCheckCarefully.
	self scheduleRecursive: anBlock withState: [ :action :futureSelf | action value: [ futureSelf value: action ] ]