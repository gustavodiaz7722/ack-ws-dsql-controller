
	// multiRegionProperties is only mutable in PENDING_SETUP; DSQL rejects an
	// UpdateCluster carrying it otherwise, so drop it for other states.
	if latest.ko.Status.Status == nil || *latest.ko.Status.Status != "PENDING_SETUP" {
		input.MultiRegionProperties = nil
	}

