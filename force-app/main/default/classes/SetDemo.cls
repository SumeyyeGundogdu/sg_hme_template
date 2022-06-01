public class SetDemo {
    public static void citySet() {
        set<string> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');

        System.debug('set of cities '+ cities );
    }
    public static void randomInteger() {
        set<Integer> setInteger = new Set<Integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(10);
        setInteger.add(15);

        System.debug('set of integers '+ setInteger);
    }
    public static Set<Integer> setFromList (List<integer> intList){
        Set<Integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
        return intSet;
    }
    public static set<string> capitalizeSet(set<string> setString) {
        set<String> upperCaseSet = new Set<String>();
        for (string eachString : setString){
            string tempStr = eachString.toUpperCase();
            upperCaseSet.add(tempStr);
        }
        return upperCaseSet;
    }
           
}
