tests
testDoLoops
	| method |
	method := transpiler transpile: UEClass1ForTest >> #test11.
	self assert: transpiler selectors size equals: 2.
	method := transpiler transpile: UEClass1ForTest >> #test12.
	self assert: (method statements first body statements first isKindOf: UEMessageNode).
	self assert: transpiler selectors size equals: 3.

