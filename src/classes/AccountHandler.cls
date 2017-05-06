public class AccountHandler {

    public static Account  insertNewAccount(String accName)
    {
        
        Account newAccount = new Account(name=accName);
    
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