trigger CaseTrigger on Case (before insert, before update) {
    if (trigger.isInsert) {
        System.debug('before insert case');

    }
    if (trigger.isUpdate) {
    
        CaseTriggerHAndler.countTriggerExecution++;
        System.debug('#of times trigger execut '+CaseTriggerHAndler.countTriggerExecution);

        CaseTriggerHAndler.countRecordsUpdate += trigger.size;
        System.debug('# of records updated '+ CaseTriggerHAndler.countRecordsUpdate);
    }
}