initialization
processJoin: aRes
	| aChan |
	aRes target isNil ifFalse: [
		aChan := self getCaseInsensitiveTabNameFor: (aRes target).
		aChan ifNotNil: [ 
			self getNamesFor: aChan.
			aChan addTextToChannel: ((aRes source,' Joined ',aRes text) asText allBold makeAllColor: Color lightBlue).
		]
	].