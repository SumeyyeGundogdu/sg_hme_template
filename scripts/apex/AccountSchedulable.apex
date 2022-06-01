AccountSchedulable aSche = new AccountSchedulable();

string cron = '0 0 13 * * ?';

system.schedule('schdule account job via cron', cron, aSche);