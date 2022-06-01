SetDemo.citySet();
SetDemo.randomInteger();

List<Integer>l1 = new List<Integer>{10,15,21,99,55,44,10,99};
Set<Integer>set3 = SetDemo.setFromList(l1);
System.debug('set 3 ' +set3);

set<string> cities = new Set<String>();
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Berlin');
cities.add('nairobi');
cities.add('Tokyo');
cities.add('tOkyo');
cities.add('tOkyo');
cities.add('Berlin');
set<string> citiesCaps =SetDemo.capitalizeSet(cities);
system.debug(citiesCaps);