public class datetimeMethodsDemoo {
   public void calculateAgelnMonths(){
       system.debug('calculate age in months.');
       //birth day 
       Date birthDay = date.newinstance(1996,9,2);
       //todays date
       date todaydate = date.today();
       // calculate month diffeerence in between two dates.
       integer ageInMonths = birthDay.monthsBetween(todaydate);
       System.debug(ageInMonths);       
   }
   public void calculateAgeDays(){
       date birthday = date.newInstance(1996, 9, 2);
       date todaydate = date.today();
       integer ageInDays = birthday.daysBetween(todaydate);
       system.debug(ageInDays);
   }
   public void printSubscriptionEndDate(){
       date subscriptionStartDate = date.today();
       date subscriptionEndDate = subscriptionStartDate.addDays(1000);
       system.debug('subscription end date = '+subscriptionEndDate);
       integer endDateYear = subscriptionEndDate.year();
       system.debug('subscription end date year is '+ endDateYear);
       integer endDateMonth = subscriptionEndDate.month();
       system.debug('subscription end date month is ' + endDateMonth);
       integer endDays = subscriptionEndDate.day();
       system.debug('subscription end date day is '+ endDays);
   }
   public void printOfferEndDateTime(){
       datetime dtnow = Datetime.now();
       datetime dtOfferEnd = dtnow.addHours(51);
       system.debug('offer will end on: '+dtOfferEnd);

       date offerEndDate = dtOfferEnd.date();
       system.debug('offer end date is: '+offerEndDate);
   }
}
