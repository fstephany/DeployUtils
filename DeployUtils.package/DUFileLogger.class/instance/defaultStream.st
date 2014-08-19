as yet unclassified
defaultStream
	| s |
	s := fileLocator writeStream.
	s upToEnd.
	^s