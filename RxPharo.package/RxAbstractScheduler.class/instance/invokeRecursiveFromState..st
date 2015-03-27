recursive - call
invokeRecursiveFromState: anState
	| group gate recursiveAction |
	group := RxCompositeSubscription new.
	gate := Mutex new.
	recursiveAction := [ :anState1 | 
	anState action
		value: anState1
		value: [ :anState2 | 
			| isAdded isDone d |
			isAdded := false.
			isDone := false.
			d := self
				schedule: [ :unused :anState3 | 
					gate
						critical: [ 
							isAdded
								ifTrue: [ group delete: d ]
								ifFalse: [ isDone := true ] ].
					recursiveAction value: anState3.
					RxSubscription empty ].
			gate
				critical: [ 
					isDone
						ifTrue: [ 
							group add: d.
							isAdded := true ] ] ] ].
	recursiveAction value: anState nextState. 
	^ group