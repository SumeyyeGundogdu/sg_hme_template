import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CONTACT_OBJECT from '@salesforce/schema/Contact';

export default class LightningRecordFormContact extends LightningElement {

    recordId = "0038c00002iIjuwAAC";
    objectName = CONTACT_OBJECT;

    successHandler(){
        const successEvent = new ShowToastEvent({
            title: "Success",
            message: "The Contact Record has Been saved Successfully",
            variant: "success"
        });
        this.dispatchEvent(successEvent);
    }
    errorHandler(){
        const errorEvent = new ShowToastEvent({
            title: "Error",
            message: "The contact record has been not saved",
            variant:"error"
        });
        this.dispatchEvent(errorEvent);
    }
}