    public class Work1 {
        public list<integer> workTogether() {
            list<integer> numbers = new list<integer>();
            numbers.add(15);
            numbers.add(64);
            numbers.add(72);
            numbers.add(13);
            numbers.add(45);
    
           return numbers; 
    
        }
        public integer sumOfList(list<integer> list1){
            integer sum =0;
            if(list1.size()>0){
                for (integer eachList1Element : list1) {
                    sum = sum + eachList1Element;
                }
            }else {
                sum=null;
                System.debug('This is an empty list.');
            }
            return sum;
        }
        public void test (){
            system.debug('deneme');
        }
        

    }
    

 

