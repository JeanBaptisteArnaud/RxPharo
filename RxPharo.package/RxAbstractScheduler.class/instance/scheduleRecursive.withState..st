as yet unclassified
scheduleRecursive: anBlock withState: anotherBlock
	self flag: #toCheckCarefully.
	self schedule: [ :action | self invokeRecursive: action ] withState: '{ :state => anotherBlock, :action => anBlock}'