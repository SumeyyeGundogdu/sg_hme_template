rankHandler rk =new rankHandler();
string price1 = rk.rankPrice(1);
system.debug('price1 is '+price1);

string price2 = rk.rankPrice(3);
system.debug('price2 is '+price2);

string price3 = rk.rankPrice(8);
system.debug('price3 is '+price3);

string price4 = rk.rankPrice(12);
system.debug('price4 is '+price4);


rankHandler obj2 = new rankHandler();
String prize6 = obj2.rankPriceSwitch(1);
system.debug('price1 is '+prize6);
String prize7 = obj2.rankPriceSwitch(2);
system.debug('price1 is '+prize7);
String prize8 = obj2.rankPriceSwitch(3);
system.debug('price1 is '+prize8);
String prize9 = obj2.rankPriceSwitch(5);
system.debug('price1 is '+prize9);
String prize10 = obj2.rankPriceSwitch(11);
system.debug('price1 is '+prize10);