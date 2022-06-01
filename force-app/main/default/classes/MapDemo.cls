public class MapDemo {
    public static string retrieveMonth(integer m){
        string monthName = '';
        Map<integer,string> monthMap = new Map<integer,string>();
        monthMap.put(1,'january'); 
        monthMap.put(2,'February');   
        monthMap.put(3,'March');
        monthMap.put(4,'April');
        monthMap.put(5,'May');
        monthMap.put(6,'june');
        monthMap.put(7,'july');
        monthMap.put(8,'August');
        monthMap.put(9,'September');
        monthMap.put(10,'October');
        monthMap.put(11,'November');
        monthMap.put(12,'December');

        boolean checkMonth = monthMap.containsKey(m);
        if (checkMonth) {
            monthName = monthMap.get(m);
        } else {
            monthName = 'No such month exist. Please Behave!';
        }        
        return monthName;
    }
}
