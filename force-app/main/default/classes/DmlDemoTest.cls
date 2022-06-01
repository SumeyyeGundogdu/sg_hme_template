
@isTest

public class DmlDemoTest {
    @isTest
   
    private static void dmlDemoTest1(){
       
        DmlDemo.dmlInsertDemo_stndObj();

       List<Account> listAcc = [select id,name FROM Account where name = 'SoftInnovas'];
       System.assertEquals(1, listAcc.size());
       System.assertEquals('SoftInnovas', listAcc[0].Name);
   }

   @isTest

   private static void dmlUpdateDemoTest2(){

       Account acc = new Account();
       acc.Name = 'SoftInnovas Inc.';
       insert acc;

       DmlDemo.dmlUpdateDemo_2();

       List<Contact> listContact = [select id, Name from Contact];
       system.assertEquals(1, listContact.size());
       system.assertEquals('Biden', listContact[0].Name);

   }
   
}
