
@isTest

public class CalculatorTest {
   @isTest
   private static void testMessage(){
       
       calculator.welcomeMessage();
       calculator.printNewMessage('This is from test class. ');
   }
   @isTest

   private static void addTest(){
       Integer i = 10;
       Integer j = 15;
       integer calAdd = calculator.add(i, j);
       system.assertEquals(25, calAdd);

   }

   @isTest   
   
   private static void addTest2(){
       Integer calAdd = calculator.add(10, 15, 20);
       System.assertEquals(45, calAdd);
   }

   @isTest

   private static void addTest3(){
       List<Integer> listInt = new List<integer>{15,15,15};
       Integer calcAdd = calculator.add(listInt);
       system.assertEquals(45, calcAdd);
   }
}
