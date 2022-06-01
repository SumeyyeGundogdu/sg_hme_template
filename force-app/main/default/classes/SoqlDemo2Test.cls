
@isTest
public class SoqlDemo2Test {
    @TestSetup
    private static void setupData(){

        Account acc1 =new Account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energey';

        Account acc2 =new Account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energey';

        Account acc3 =new Account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        List<Account> listAcc = new List<Account>{acc1, acc2, acc3};
        insert listAcc;

        List<Contact> listContact = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            Contact cnt = new Contact();
            cnt.LastName = 'Test SOQl';
            if (i<100) {
                cnt.AccountId = acc1.Id;
            }else if (i<200) {
                cnt.AccountId = acc2.Id;
            }else if (i<300) {
                cnt.AccountId = acc3.Id;
            }
            listContact.add(cnt);
        }
        insert listContact;
    }

    @isTest
    public static void testmethod1() {
        
        test.startTest();
        SoqlDemo2.childToParent_Sogl1();
        // system.assert(listContact.size()>0);
        test.stopTest();
    }
    @isTest
    private static void sampleSoql4TEST(){
        List<Account> listAccounts = [select id, name, type from Account];
        for (account acc : listAccounts) {
            acc.type = 'Customer - Direct';
        }
        List<Opportunity> createOpps =new List<Opportunity>();
            for (Integer i = 0; i < 300; i++) {
                Opportunity o = new Opportunity();
            o.Name = 'opp1';
            o.StageName = 'Closed Lost';
            o.CloseDate = date.today();
            if (i<100) {
                o.AccountId = listAccounts[0].Id;
            }
            else if (i<200) {
                o.AccountId = listAccounts[1].Id;
            }
            else if (i<300) {
                o.AccountId = listAccounts[2].Id;
            }
            createOpps.add(o);
            }
            
            insert createopps;

            test.startTest();
            SoqlDemo2.sampleSoql4();
            test.stopTest();
        }
       
    }

