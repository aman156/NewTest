public class AccountHandler {

    public static Account  insertNewAccount(String accName)
    {
        
        Account newAccount = new Account(name=accName);
    
    	System.debug('new debugger');
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