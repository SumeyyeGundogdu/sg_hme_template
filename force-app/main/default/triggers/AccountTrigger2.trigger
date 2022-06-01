trigger AccountTrigger2 on Account (before insert) {

    System.debug('Before insert account trigger fired');

    
    // if (Trigger.isBefore) {
    //     System.debug('Before insert trigger');
    // }
    // if (Trigger.isAfter) {
    //     System.debug('After insert trigger');
    // }
}