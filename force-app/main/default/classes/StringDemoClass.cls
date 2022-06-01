public class StringDemoClass {
   public void stringMethod1(){
        string sessionDescription = 'Learn string\'s methods in apex language.';
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is = ' + lengthOfStr);
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('in caps= ' + sessionDescriptionInCaps);
        Boolean containsApex = sessionDescription.contains('apex');
        system.debug(('has apex? ' + containsApex));
        Boolean containsalesforce = sessionDescription.contains('salesforce');
        system.debug('has salesforce? ' + containsalesforce);
        string apexx = 'apex';
        string ap = 'APEX';
        Boolean apexCheck = apexx.equals(ap);
        system.debug('apex check ' + apexCheck);
   }
}
