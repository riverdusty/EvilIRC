accessing
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :row |
			row 
				newColumn: [:column |
					column newRow: [:r |
						r newColumn: #channel.
						r newColumn: #users width: 200
					]
				];
				newRow: #input height: 25]