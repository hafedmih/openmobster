/**
 * Copyright (c) {2003,2010} {openmobster@gmail.com} {individual contributors as indicated by the @authors tag}.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */

#import "SyncScheduler.h"


/**
 * 
 * @author openmobster@gmail.com
 */
@implementation SyncScheduler

-init
{
	if(self == [super init])
	{
		queue = [[NSOperationQueue alloc] init];
		[queue setMaxConcurrentOperationCount:1];
	}
	
	return self;
}

-(void)dealloc
{
	[super dealloc];
	[queue release];
}

+(SyncScheduler *) getInstance
{
	Registry *registry = [Registry getInstance];
	return (SyncScheduler *)[registry lookup:[SyncScheduler class]];
}

-(void)startBackgroundSync
{	
	AutoSync *target = [AutoSync withInit];
	NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:target selector:@selector(sync) object:nil];	
	operation = [operation autorelease];
	
	//Add the operation to the queue
	[queue addOperation:operation];
}
@end
