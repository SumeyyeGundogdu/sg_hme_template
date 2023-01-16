import { LightningElement } from 'lwc';

import Contact_OBJECT from '@salesforce/schema/Contact';
import NAME_FIELD from '@salesforce/schema/Contact.Name';
import TITLE_FIELD from '@salesforce/schema/Contact.title';
import ACCOUNT_FIELD from '@salesforce/schema/Contact.AccountId';
import PHONE_FIEL from '@salesforce/schema/Contact.Phone';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import MOBILE_FIELD from '@salesforce/schema/Contact.MobilePhone';
import OWNERID_FIELD from '@salesforce/schema/Contact.OwnerId'

export default class LightningRecordViewFormAccount extends LightningElement {
    recordId="0038c00002iIjuwAAC";
    objectName= Contact_OBJECT;
    fields ={
       name:NAME_FIELD,
       title:TITLE_FIELD,
       account:ACCOUNT_FIELD,
       phone:PHONE_FIEL,
       email:EMAIL_FIELD,
       mobile:MOBILE_FIELD,
       owner:OWNERID_FIELD

    };
}