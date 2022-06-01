
@isTest
public class AccountTriggerTest {
    @isTest

    private static void testMethod1(){
        Account acc1 =new Account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energey';
        acc1.Active__c = 'Yes';

        Account acc2 =new Account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energey';
        acc1.Active__c = 'No';

        Account acc3 =new Account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';
        acc1.Active__c = 'No';

        List<Account> listAcc = new List<Account>{acc1, acc2, acc3};
        insert listAcc;

        for (account acc : listAcc) {
            acc.Description = 'updated in tests';
            acc.Active__c = 'Yes';
        }
        update ListAcc;
    }
}
