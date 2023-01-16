import Label from '@salesforce/schema/ActionLinkTemplate.Label';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import ANNUALREVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import RATING_FIELD from '@salesforce/schema/Account.Rating';


export default class LightningRecordFormAccount extends LightningElement {
    recordId = "0018c00002Eub8PAAR";
    objectName = ACCOUNT_OBJECT;
    fields =[NAME_FIELD,TYPE_FIELD,INDUSTRY_FIELD,ANNUALREVENUE_FIELD,PHONE_FIELD,RATING_FIELD];

    successHandler(){
        const successEvent = new ShowToastEvent({
            title: "Success",
            message: "The account record has been saved SUCCESSFULLY",
            variant: "Success"
        });
        this.dispatchEvent(successEvent);
    }

}



















