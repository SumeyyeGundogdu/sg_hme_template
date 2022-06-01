
@isTest
public class AccountQueueableExampleTest {
    @TestSetup
    static void setup(){
        List<Account> accounts = new List<Account>();

        for (Integer i = 0; i < 100; i++) {
            accounts.add(new Account(Name = 'Test Account'+i));
        }
        insert accounts;
    }
    @IsTest
    static void methodName(){
        List<Account> accs = [select id, name FROM Account];

        Test.startTest();
        AccountQueueableExample aq = new AccountQueueableExample(accs);
        system.enqueueJob(aq);      
        Test.stopTest();
        Integer count = [select COUNT()from account where name like '%SI%'];
        system.assertEquals(100, count);
        
    }
}
