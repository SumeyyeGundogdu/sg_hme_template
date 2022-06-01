public class AccountManager {
    public static void UpdateRcords(){
        List<Account> acc = [select id,name,createdDate, Description from Account ORDER BY CreatedDate DESC limit 3];
        List<Account> upList = new List<Account>();
        for (Account eachAcc : acc) {          
            eachAcc.Description = eachAcc.name+' '+eachAcc.createdDate;
            upList.add(eachAcc);            
        }
        update upList;
        System.debug(upList);

    }

    
}
