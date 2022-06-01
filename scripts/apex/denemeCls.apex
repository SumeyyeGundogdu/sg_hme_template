denemeCls obj1 = new denemeCls();
obj1.method1();

string car = 'audi';
obj1.method2(car);

String car2=obj1.method3('audi');
system.debug('my car is ' + car2);
obj1.method3('mercedes');

obj1.araba3='audi';
system.debug('my car is '+ obj1.method4(obj1.araba3));

obj1.method5();

string carType=obj1.method6();
system.debug(carType);

string carType2=obj1.method7('ferrrari');
system.debug(carType2);
