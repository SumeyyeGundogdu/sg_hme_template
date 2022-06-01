public class AccountHandlerInfo {
    public  static List<Account> insertNewAccount(List<String> newList) {
        List<Account> accList = new List<Account>();
        if (!newList.isEmpty()) {
            for (string eachAcc : newList) {

                Account acc = new Account();
                acc.name = eachAcc;
                accList.add(acc);
                                
            }
            insert accList;            
        }else {
            accList=null;
            System.debug('List is emty');
        }
       return accList; 
    }
}
