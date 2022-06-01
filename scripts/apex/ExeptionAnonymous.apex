try {
    account a = new account();
    insert a; 
} catch (DmlException dex) {
    system.debug('Dml went roong buddy...');
}
catch(Exception ex){
    System.debug('something went wrong buddy...')
}

system.debug('Apex is SIMPLE');