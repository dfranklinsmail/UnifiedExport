type unification
isUnifiableWith: aUEType
	self find == aUEType find ifTrue: [ ^ true ].
	aUEType find isWild ifTrue: [ ^ aUEType isUnifiableWith: self ].
	self tag == aUEType tag ifFalse: [ ^ false ].
	self union: aUEType.
	^ true