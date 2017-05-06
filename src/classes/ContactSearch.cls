public class ContactSearch {
    public static List<Contact> searchForContacts(String s1, String s2)
    {
        List<Contact> resultContacts =null;
        resultContacts = [SELECT  ID , NAME FROM CONTACT WHERE LASTNAME=:s1 AND MailingPostalCode=:s2];
        return resultContacts;
    }

}