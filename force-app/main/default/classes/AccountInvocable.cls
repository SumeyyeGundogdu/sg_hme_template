public with sharing class AccountInvocable {
    @InvocableMethod(label ='Delete Closed Opps'
                     description ='Delete all the closed opportunities when an account goes inactive or hold'
                     category ='Account')
    public static void deleteOpportunities(List<id> accountIds){
        List<Opportunity> opps = [select id FROM Opportunity 
                                  WHERE AccountId in: accountIds 
                                  AND StageName IN ('Closed Won','Closed Lost')];
        
        if(!opps.isEmpty()){
        delete opps;
        }
    }
}
