/**
 * Copyright (c) {2003,2009} {openmobster@gmail.com} {individual contributors as indicated by the @authors tag}.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */

package org.openmobster.core.mobileCloud.rimos.module.bus;

/**
 * @author openmobster@gmail.com
 *
 */
public interface InvocationHandler 
{	
	/**
	 * A device wide unique identifier for this Invocation Handler
	 * 
	 * @return uri for this invocation handler
	 */
	public String getUri(); 	
	
	/**
	 * 
	 * @param invocation
	 * @return
	 */
	public abstract InvocationResponse handleInvocation(Invocation invocation);	
}
