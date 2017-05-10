public class AccountHandler {

    public static Account  insertNewAccount(String accName)
    {
        
        Account newAccount = new Account(name=accName);
    
    	System.debug('new debugger 1');
    	System.debug('new debugger 2');	
        try
        {
            insert newAccount;
        }catch(DmlException e) 
        {
            return null;
        }
        return newAccount;
    }
}