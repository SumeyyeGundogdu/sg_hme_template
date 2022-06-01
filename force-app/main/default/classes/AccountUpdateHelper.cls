public with sharing class AccountUpdateHelper {
   @InvocableMethod
   public static void updateAccountWebsite(List<id> accIds){
       List<Account> accountsToUpdate = new List<Account>();

       List<Account> accounts = [select id,name, website from Account where id in : accIds];

       for (account eachAcc : accounts) {
           eachAcc.Website = 'www.softinnovas.com';
           accountsToUpdate.add(eachAcc);
       }
       if (!accountsToUpdate.isEmpty()) {
           update accountsToUpdate;
           
       }

   }
}
