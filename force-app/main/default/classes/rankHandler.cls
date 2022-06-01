public class rankHandler {
    public string rankPrice(Integer rank){
        string price = '';
        if (rank==1){
            price = 'Gold';                     
        }else if (rank == 2) {
            price = 'Silver';
        }else if (rank == 3) {
            price = 'Bronze';
        }else {
            if (rank<=10) {
                price = 'Top 10 certificate';                
            }else {
                price = 'participation certificate';
            }
        }
        return price;
    }
    public string rankPriceSwitch(Integer rank){
        String prize = '';
        switch on rank {
            when 1 {
                prize = 'Gold';
            }
            when 2 {
                prize = 'silver';
            }
            when 3{
                prize = 'Bronz';
            }
            when 4,5,6,7,8,9,10{
                prize = 'Top 10 certificate';
            }
            when else {
                prize = 'Participation certificate';
            }
        }
        return prize;

    }
}
