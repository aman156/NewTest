@isTest
public class TestAccountDeletion {

    @isTest static void TestDeleteAccountWithOneOpportunity() {
        System.debug('2^^^^^^^^^^^^^^^^^ came here');
      Account acct = new  Account(Name='Test Account1');
     insert acct ;
     Opportunity opp = new Opportunity(Name=acct.Name+'Opportunity 1');
     opp.AccountId=acct.Id;
      opp.CloseDate=System.TODAY()+3;
        opp.Discount_Percent__c=100;
     opp.StageName='Prospecting';
        insert opp;
     System.debug('2^^^^^^^^^^^^^^^ debug point 2');
            Test.startTest();
        Database.DeleteResult result = Database.delete(acct,false);
     Test.stopTest();
        System.debug('2^^^^^^^^^^^^^^^ debug point 3');
     System.assert(!result.isSuccess());
          System.debug('2^^^^^^^^^^^^^^^ debug point 4'+result.isSuccess());
        System.assert(result.getErrors().size()>0);
         System.debug('2^^^^^^^^^^^^^^^ debug point 5'+result.getErrors().size());
        System.assertEquals('Cannot delete account with related opportunities.',
                             result.getErrors()[0].getMessage());


     } 
}