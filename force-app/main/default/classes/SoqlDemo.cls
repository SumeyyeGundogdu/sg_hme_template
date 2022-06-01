public class SoqlDemo {
    public static void accountSoql_1() {
        List<Account> listAcc = [select Id,Name from Account WHERE Name Like '%A%'];
        System.debug('account list = ' + listAcc);
        System.debug('# of accounts = ' + listAcc.size());

        Account acc = [select Id, Name,Phone from Account Order by CreatedDate limit 1];
        System.debug('latest account created is ' + acc);      

    }
    public static void accountSOQL_2(){
        Account acc= [select id, name, Phone, AccountNumber from account Order By CreatedDate desc limit 1];
        System.debug('latest account is created '+acc);
        String accName = acc.name;
        string accPhone= acc.phone;
        System.debug('accName = '+ accName + ', phone is '+accPhone);
        System.debug('account number is '+acc.AccountNumber);
    }
    public static void accountSoql_3(){
        list<Account> ListAcc = [select Id, Name, Phone, AccountNumber from Account Order By CreatedDate desc];
        System.debug('all accounts  '+ ListAcc);

        for (account eachAccount : ListAcc) {
            string accName = eachAccount.Name;
            string accPhone = eachAccount.Phone;
            System.debug('accName = ' + accName + 'phone is ' + accPhone);
            System.debug('account NUmber is '+ eachAccount.AccountNumber);
        }
    }
    public static void accountSoql_Filter(){
        string accNameFilter = 'softInnovas';
        list<account> listAcc = [select name from account where name = : accNameFilter];
        
        System.debug(listAcc);
    }
    public static void accountSoql_Filter(string accNameFilter){
        list<account> listAcc = [select Id,name from account where name = : accNameFilter];
        System.debug(listAcc);
    }
   
}
