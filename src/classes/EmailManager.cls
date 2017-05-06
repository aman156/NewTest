public  class EmailManager {
    
    
 
    public static void sendMail(String mailAddress , String subject , String body)
    {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddress = new String[]{mailAddress};
        mail.setToAddresses(toAddress);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        Messaging.SendEmailResult[] results = 	Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        
       inspectResults(results);
    }   
    
    private static Boolean inspectResults(Messaging.SendEmailResult[] results )
    {
    	Boolean sendResult =true;
    	for(Messaging.SendEmailResult res : results)
    	{
    		if(res.isSuccess())
    		{
    			System.debug('Email Sent Successfully.');
    		}else
    		{
    			sendResult =false;
    			System.debug('Cannot deliver the email.');
    		}
    		
    	}
    	return sendResult;
    }
}