@RestResource(urlMapping='/ContactCustom/*')
global class CustomContactAPI {
    @httpGet
    global static Contact getContactId(){
        system.debug('custom contsct api call success.');
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        System.debug('URI : '+ request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex:'+ idStartIndex);
        string contactId = uri.substring(idStartIndex);
        System.debug('contactId: '+ contactId);
        Contact c =[SELECT Name, Email, Phone, Account.Name 
                    FROM Contact 
                    WHERE id =: ContactId];
        // Contact c = new Contact();
        return c;
    }

    @httpPost
    global static Id createContact(String fNAme, string lName, string emailId, string phoneNumber, string accountId){
        Contact c = new Contact();
        c.FirstName =fNAme;
        c.LastName = lName;
        c.Email = emailId;
        c.Phone = phoneNumber;
        c.AccountId = accountId;
        insert c;
        return c.id;
    }

    global static string deleteContac(){
        system.debug('custom contsct api call success.');
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        System.debug('URI : '+ request.requestURI);
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex:'+ idStartIndex);
        string contactId = uri.substring(idStartIndex);
        System.debug('contactId: '+ contactId);
        
        contact c = new contact(id=contactId);
        delete c;
        
        return 'Contact deleted with id: '+contactId;
    }
}
