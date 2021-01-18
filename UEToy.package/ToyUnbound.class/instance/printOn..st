printing
printOn: aStream
	aStream nextPut: $';nextPutAll: string.
	aStream nextPut: $[.
	aStream nextPutAll: level asString.
	aStream nextPut: $].