as yet unclassified
addLogHook: aLog 
	super addLogHook: aLog.
	self stream flush.