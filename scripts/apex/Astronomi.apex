Astronomi obj = new Astronomi();
obj.planetNAme = 'MARS';
obj.planetNumber = 2;
obj.numberOfMoons = 6;

Astronomi obj1 =new Astronomi();
obj1.planetNAme = 'Earth';
obj1.planetNumber = 4;
obj1.numberOfMoons = 1;

System.debug(obj);
System.debug(obj1);

obj.printPlanets();
obj1.printPlanets();