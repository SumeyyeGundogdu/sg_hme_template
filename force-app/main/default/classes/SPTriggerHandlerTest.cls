@isTest
public class SPTriggerHandlerTest {
   @isTest
   private static void testMethod1(){
        Salesforce_Project__c sp = new Salesforce_Project__c();       
        sp.Project_Name__c = 'Teach async to Falcons';
        sp.Description__c = 'All 40% are great learners, still';

        Salesforce_Project__c sp1 = new Salesforce_Project__c();       
        sp.Project_Name__c = 'Teach async to Falcons';
        sp.Description__c = 'All 40% are great learners, still';

        List<Salesforce_Project__c> lstSP = new List<Salesforce_Project__c>{sp,sp1};
        insert lstSP;

        set<id> spIds = new Set<Id>{sp.id,sp1.id};

        test.startTest();
        SalesForceProjectTriggerHandler.updateProjectDescription(spIds);
        test.stopTest();

        List<Salesforce_Project__c> sps = [select id, description__c FROM Salesforce_Project__c];
        system.assert(sps[0].Description__c.containsIgnoreCase('future'));
   }
}
