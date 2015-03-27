as yet unclassified
schedule: anBlock
	self schedule: anBlock withState: [:action | self invoke: action ].