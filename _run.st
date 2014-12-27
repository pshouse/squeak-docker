"ScreenController new fullScreenOn."
Smalltalk runAndQuit:
	[: arg2 | 
		| t2 |
		(arg2 isMemberOf: Array) ifTrue: [
			t2:= arg2 inject:'' into: [ :w :each | w, ' ',each.].
					arg2 := (t2 copyFrom: 2 to: t2 size) asString. "Drop leading space".
					"FileStream stdout nextPutAll: arg2; cr."
					"FileStream stdout nextPutAll: arg2 class asString; cr."			
		].
	"FileStream stdout nextPutAll: arg2 asString; cr."
	FileStream stdout nextPutAll: (Compiler evaluate: arg2) asString; cr.]

