public with sharing class ListDemo {
    public static string candidatesList(Integer indx){
        List<String> listCandidates=new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');

        String valueAt3 = listCandidates[3];
        // System.debug('value at index 3 ' + valueAt3);
        // system.debug('candidates are ' + listCandidates);
        string retrnString = '';
        if (indx<listcandidates.size()) {
            retrnString=listCandidates[indx];
        }else {
            retrnString='index number is no valid';
        }
        return retrnString;

    }
    public static void randomIntegerList(){
        List<Integer> listInteger=new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(25);
        listInteger.add(15);
        listInteger.add(15);
        listInteger.add(15);
        
        integer index3value = listInteger.get(3);

        integer index3value2 = listInteger[3];

        system.debug('value at index 3 '+ index3value);
        System.debug('list of random integers = ' + listInteger);
        system.debug(listInteger[2]);
    }
    public static void iterateIntegerList(){
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);

        for (Integer eachInteger : listInteger) {
            System.debug(eachInteger);
            
        }
    }
    public static integer add(List<Integer> intList){
        integer sum = 0;
        for (integer eachInt : intList) {
            sum+=eachInt;
        }
        return sum;
    }

}
