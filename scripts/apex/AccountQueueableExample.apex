List<Account> accList = [select Id, Name FROM Account];
AccountQueueableExample aqe = new AccountQueueableExample(accList);
ID jobID = system.enqueueJob(aqe);
System.debug('jobId '+ jobID);