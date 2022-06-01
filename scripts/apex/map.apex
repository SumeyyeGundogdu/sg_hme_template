map<string, string> mapCntCurrency = new map<string, string>();
//USA --> Dollar
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('Italy','Euro');
system.debug('map of contry currncy'+ mapCntCurrency);
string IndiaCurrency = mapCntCurrency.get('India');
string TurkeyCurrency = mapCntCurrency.get('Turkey');
System.debug('India Currency = '+IndiaCurrency);
System.debug('Turkey Currency = '+TurkeyCurrency);
Set<String> countySet = mapCntCurrency.keySet();
System.debug('countries in map: '+countySet);
List<String> currencyList = mapCntCurrency.values();
System.debug('currencies in map: '+ currencyList);
Set<String> countriesSet = mapCntCurrency.keySet();
for (string eachKey : countriesSet) {
    string printString = 'Contry is '+ eachKey;
    string eachCurrency =mapCntCurrency.get(eachKey);
    printString += ', its currency is ' + eachCurrency;
    System.debug(printString);
}

