public class primitiveDataTypeDemo2 {
   public void printNewData(){
       system.debug('create new date instance');
       Date newDate = Date.newInstance(2021,04,08);
       system.debug('new date : ' + newDate);
       date todayDate = Date.today();
       system.debug('Today date is ' + todayDate);
       date newDate2 = Date.newInstance(1996,07,30);
       system.debug('My BirthDay is ' + newDate2);
   }
   public void printNewTime(){
        time newTime = Time.newInstance(18,20,2,30);
        time meTime = Time.newInstance(15,15,2,20);
        system.debug('time is ' + newTime);
        system.debug('time is ' + meTime);

              
   }
   public void printNewDateTime(){
       date newDate = date.today();
       time newTime = Time.newInstance(18,20,2,30);
       Datetime dt1 = datetime.newInstance(newDate,newTime);
       system.debug('Date Time is ' + dt1);

       Datetime dt2 = Datetime.newInstance(2025,01,9);
       system.debug('dt2 is ' + dt2);

       Datetime dt3 = Datetime.newInstance(2021,10,9,10,10,10);
       system.debug('dt 3 is ' + dt3);

       datetime currentDT = datetime.now();
       system.debug('current DT :' + currentDT);

       Datetime dt5 = Datetime.newInstanceGmt(1992,1,28,18,0,0);
       system.debug('dt5: ' + dt5);

       Datetime dt6 = Datetime.newInstance(0);
       system.debug('dt6 '+dt6);

       Long longtime = 1341828183000L;
       Datetime dt7 = Datetime.newInstance(longtime);
       system.debug('dt7 ' + dt7);
   }
}
