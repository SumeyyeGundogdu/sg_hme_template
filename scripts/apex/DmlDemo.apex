
List<case> listCase = new List<Case>();
for (Integer i = 0; i < 205; i++) {
    Case c = new Case();
    c.Subject = 'There is a debug';
    c.Description = 'resolve it';
    c.Status = 'New';
    c.Origin = 'Web';  
    listCase.add(c);
}
insert  listCase; 
 
List<Case> updateCases = [select id, subject, status from case where status ='New'];
for (case eachCase : updateCases) {
    eachCase.Status = 'Working';
}
update updateCases;






// DmlDemo.dmlInsertDemo_stndObj();
// DmlDemo.dmlInsertDemo_cstmObj();
// DmlDemo.dmlUpdateDemo_1();
// DmlDemo.dmlUpdateDemo_3();
// DmlDemo.dmlUpdateDemo_2();
// DmlDemo.dmlMUltipleRecordInsert_right();
// DmlDemo.dmMultipleRecordInsert2_right();