public with sharing class SoqlDemo2 {
    public static void childToParent_Sogl1(){
        list<Contact>listCnt = [select id, name, account.name from contact where account.industry = 'Energy'];
        for (contact eachContact : listCnt) {
            String accName = eachContact.Account.Name;
            System.debug('contact name is  '+ eachContact.Name + ' , its acc is '+ accName);
            
        }

    }
    public static void sampleSoql4(){
        List<Account> accountWithOppList = new List<Account>();

        AccountWithOppList=[select Name, AnnualRevenue, (select Name,Amount from Opportunities where StageNAme= 'closed Won') from Account Where Type= 'customer - Direct'];

        for (account acc : accountWithOppList) {
            System.debug('account name '+ acc.Name + ' and its anuual revenue is ' +acc.AnnualRevenue);
            for (opportunity opp : acc.Opportunities) {
                System.debug('Oppurtunity Name : '+opp.Name);
                System.debug('Oppurtunity Amount : '+opp.Amount);
                
            }
        }
    }
}
