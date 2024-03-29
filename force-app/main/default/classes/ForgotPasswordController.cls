/**
 * An apex page controller that exposes the site forgot password functionality
 */
public with sharing class ForgotPasswordController {
    public String username {get; set;}   
       
    public ForgotPasswordController() {}
	
  	public PageReference forgotPassword() {
  		boolean success = Site.forgotPassword(username);
  		PageReference pref = Page.ForgotPasswordConfirm;
  		pref.setRedirect(true);
  		
  		if (success) { 
			System.debug('Check for success'); 			
  			return pref;
  		}
  		return null;
  	}
}