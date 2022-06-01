trigger AccountTrigger3 on Account (before insert, after insert,before update , after update) {

    // if (trigger.isAfter && trigger.isUpdate) {
    //     AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, trigger.NewMap, Trigger.OldMap);
        
    // }


    // if (trigger.isBefore) {
    //     System.debug('Before insert/update trigger on account called');
    //     AccountTriggerHandler.updateAccountDescription(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    // }
    // if (trigger.isBefore) {
    //     System.debug('Before insert/update trigger called');
    //     for (Account eachAcc : Trigger.new) {
    //         Boolean updateDesc = false;
    //         if (trigger.isInsert && eachAcc.Active__c=='Yes') {
    //             updateDesc = true;
    //         }
    //         if (trigger.isUpdate) {
    //             if (eachAcc.Active__c=='Yes' && trigger.oldMap.get(eachAcc.Id).active__c !='Yes' ) {
    //                 updateDesc = true;
    //             }
    //         }
    //         if (updatedesc) {
    //             eachAcc.Description = 'Account is now active enjoy!!!';
    //         }
    //     }
    // }

    // if (trigger.isBefore) {
    //     System.debug('Before insert/update trigger on Account object ');
    //     for (account eachAcc : trigger.new) {
    //         if (trigger.isInsert && eachAcc.Active__c == 'Yes') {
    //             eachAcc.Description = 'Account is now active. Enjoy !';
    //         }
    //         if (trigger.isUpdate && trigger.oldMap.get(eachAcc.Id).active__c !='Yes' && eachAcc.Active__c=='Yes') {
    //             eachAcc.Description = 'Account is now active. Enjoy!';
    //             System.debug(eachacc.active__c );
    //         }
    //     }
    // }



    // if (trigger.isAfter && trigger.isUpdate) {
    //     Map<Id,Account> newAccMap = trigger.newMap;
    //     Map<Id,Account> oldAccMap = trigger.oldMap;
        
    //     set<id> setOfAccIds = newAccMap.keySet();
    //     integer countWebsiteUpdate = 0;
    //     for (ID eachId : setOfAccIds) {
    //         account oldAcc = oldAccMap.get(eachId);
    //         string oldWebsite = oldAcc.Website;

    //         account newAcc = newAccMap.get(eachId);
    //         string newWebsite = newAcc.Website;

    //         if (oldWebsite !=newWebsite) {
    //             System.debug('For account '+ newAcc.NAme+ ', new Website is '+ newAcc.Website);
    //             countWebsiteUpdate++;
    //         }
            
    //     }
    //     System.debug('# of account website updated = '+countWebsiteUpdate);
            
    // }


    /*if (trigger.isAfter && trigger.isUpdate) {
        System.debug('After update trigger of Account object. ');
        Map<Id,Account>  accNewMap = Trigger.newMap;
        Map<Id,Account>  accOldMap = Trigger.oldMap;

        for (Id eachId : accNewMap.keySet()) {
            System.debug('acc id = '+ eachId);
            Account newAcc = accNewMap.get(eachId);
            System.debug('new acc name = ' +newAcc.Name);
            
            Account oldAcc = accOldMap.get(eachId);
            System.debug('old acc name  = ' + oldAcc.Name);
        
            
        }

    }*/

    /*map<id,Account> trgNewMap = trigger.newMap;
    map<id,Account> trgOldMap = trigger.oldMap;

    if(trigger.isBefore &&  trigger.isInsert){
        system.debug('=======BEFORE INSERT=========');
        system.debug('Before insert OLD MAP = ' + trgOldMap);
        system.debug('Before insert NEW MAP = ' + trgNEWMap);
    }
    if(trigger.isAfter &&  trigger.isInsert){
        system.debug('=======AFTER INSERT=========');
        system.debug('AFter insert OLD MAP = ' + trgOldMap);
        system.debug('AFter insert NEW MAP = ' + trgNEWMap);
    }

    if(trigger.isBefore &&  trigger.isUpdate){
        system.debug('=======BEFORE UPDATE=========');
        system.debug('Before update OLD MAP = ' + trgOldMap);
        system.debug('Before update NEW MAP = ' + trgNEWMap);
    }
    if(trigger.isAfter &&  trigger.isUpdate){
        system.debug('=======AFTER UPDATE=========');
        system.debug('AFter update OLD MAP = ' + trgOldMap);
        system.debug('AFter update NEW MAP = ' + trgNEWMap);
    }*/








    // if(trigger.isAfter){
    //     if(trigger.isUpdate){
    //         List<account> oldAccounts = trigger.old;
    //         List<account> newAccounts = trigger.new;

    //         for(account oldAcc: oldaccounts){
    //             system.debug('old acc.id = ' + oldAcc.id + ', old acc name = ' + oldAcc.Name);
    //         }
    //         for(account newAcc: newaccounts){
    //             system.debug('new acc.id = ' + newAcc.id + ', new acc name = ' + newAcc.Name);
    //         }
    //     }
    // }

    // if (trigger.isBefore && trigger.isInsert) {
    //     System.debug('trigger.old before insert = ' +trigger.old);
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug('trigger.old after Insert = ' +trigger.old);
    // }

        
    /*if (trigger.isInsert && trigger.isAfter) {
        System.debug('trigger.new after insert = ' + trigger.new);

        List<Account> newAccounts = trigger.new;

        System.debug('Total account inserted = ' + newAccounts.size());
        for (account acc : newAccounts) {
            System.debug('account id is = ' +acc.id + ', account name is ' +acc.Name);
            
        }
    }*




    // // if (trigger.isAfter){
    // //     System.debug('Trigger.new after insert/update = ' +trigger.new);
    // }




    //  System.debug('Before insert trigger called');
    //  system.debug('Before update trigger called');
        // System.debug('trigger.isBefore '+trigger.isBefore);
        // System.debug('trigger.isAfter '+trigger.isAfter);
        // System.debug('trigger.isInsert '+trigger.isInsert);
        // System.debug('trigger.isUpdate '+trigger.isUpdate);
        // if(trigger.isInsert && trigger.isBefore){
        // System.debug('Before insert trigger fired');
        // }
        // if(trigger.isInsert && trigger.isAfter){
        // System.debug('after insert trigger fired');
        // }
        // System.debug('------------------------------------------');

        // if(trigger.isUpdate && trigger.isBefore){
        //     System.debug('Before UPDATE trigger fired');
        // }
        //     if(trigger.isUpdate && trigger.isAfter){
        //     System.debug('after UPDATE trigger fired');
        // }
        //     System.debug('------------------------------------------');
    }*/
}
