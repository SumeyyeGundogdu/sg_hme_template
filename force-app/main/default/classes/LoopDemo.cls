public class LoopDemo {
    public void print_int_while(){
        integer count = 1;
        while (count<=25) {
            system.debug(count);
            count++;
            
        }
    }
    public void priint_N_numbers(Integer n){
        for(integer i=0; i<n; i++){
            System.debug(i);
        }
    }
    public void print_sum_n_numbers(Integer n){
        Integer sum = 0;
        for (integer i = 0; i<=n; i++) {
            sum += i;
        }
        System.debug(sum);
    }
    // public void print_N_Odd_Numbers(Integer startInt,Integer endInt){
    //     for (integer i=startInt; i<=endInt; i++) {
    //         integer modI = math.mod(i,2);
    //         if()
    //     }
    // }
}
