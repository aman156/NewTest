public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String s)
    {
        List<List<SObject>>  result = null;
        result = [FIND :s IN NAME FIELDS RETURNING LEAD,contact];
        return result;
    }

}