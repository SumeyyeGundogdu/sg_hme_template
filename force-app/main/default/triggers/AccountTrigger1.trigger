trigger AccountTrigger1 on Account (before insert) {
    System.debug('before insert trigger...');
}