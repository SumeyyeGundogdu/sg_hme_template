car bm = new car();
bm.carColor = 'black';
bm.carName = 'x5';
system.debug('car color : ' + bm.carColor);
bm.switchOn();
system.debug('car obj 1 = ' + bm);

car lm = new car();
lm.carColor = 'red';
lm.carName = 'lambo';
system.debug('car color : ' + lm.carColor);
lm.switchOn();
system.debug('car obj 2 = ' + lm);
//lm.maxSpeedKMperHour = 100;

Car vw = new car();
vw.carColor = 'white';
vw.carName = 'Audi Q5';
vw.drive();
vw.driveAtMaxSpend();
system.debug('car obj3 = ' +vw);



