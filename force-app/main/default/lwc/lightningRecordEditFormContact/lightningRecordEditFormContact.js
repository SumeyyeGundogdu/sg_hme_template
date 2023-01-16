import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CONTACT_OBJECT from '@salesforce/schema/Contact';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import ACCOUNTID_FIELD from '@salesforce/schema/Contact.AccountId';
import DEPARTMAN_FIELD from '@salesforce/schema/Contact.Department';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';

export default class LightningRecordEditFormContact extends LightningElement {

    recordId = "0038c00002iIjuyAAC";
    objectName = CONTACT_OBJECT;
    fields = {
        FirstName: FIRSTNAME_FIELD,
        LastName: LASTNAME_FIELD,
        Title: TITLE_FIELD,
        Accountid: ACCOUNTID_FIELD,
        Department: DEPARTMAN_FIELD,
        Email: EMAIL_FIELD
    };

    successHandler(){
        const successToast = new ShowToastEvent({
            title: "Success",
            message:"Contact has been saved successfully",
            variant:"success"

        })
        this.dispatchEvent(successToast);
    }
    errorHandler(){
        const errorToast = new ShowToastEvent({
            title: "Error",
            message:"Contact has not been saved. There is a problem",
            variant:"error"

        })
        this.dispatchEvent(errorToast);
    }
}