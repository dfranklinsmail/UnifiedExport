tests
testInstanceVariableSet
	| method |
	method := transpiler transpile: UEClass1ForTest >> #test5:.
	self assert: method argTypes size equals: 1.
	self assert: method statements size equals: 2.
	self assert: transpiler methodsToTranspile size equals: 0.
	self assert: method statements first variable scope equals: method uEClass instanceSideScope.
