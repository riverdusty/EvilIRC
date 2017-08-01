adding
addChannel: aString 
		| aChannel aTab |
		self actualChannels at: aString ifAbsent: [  
		aChannel := EvilIRCChannel new name: (aString).
		aChannel  server: self.
		aTab := TabModel new.
		aTab label: aChannel name.
		aTab contents: aChannel buildWithSpec.
		self channels addTab: aTab.
		self socket sendCommand: 'JOIN ', aChannel name.
		self actualChannels at: aChannel name put: aChannel ]