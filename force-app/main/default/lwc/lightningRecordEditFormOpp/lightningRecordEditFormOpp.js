import { api, LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import OPP_OBJECT from '@salesforce/schema/Opportunity'
import Name from '@salesforce/schema/Opportunity.Name';
import StageName from '@salesforce/schema/Opportunity.StageName';
import Type from '@salesforce/schema/Opportunity.Type';
import Amount from '@salesforce/schema/Opportunity.Amount';
import AccountId from '@salesforce/schema/Opportunity.AccountId';
import CloseDate from '@salesforce/schema/Opportunity.CloseDate';
export default class LightningRecordEditFormOpp extends LightningElement {
    @api recordId;    
    objectName=OPP_OBJECT;
    
    fields={
        OPP_NAME:Name,
        STAGE_NAME:StageName,
        TYPE:Type,
        AMOUNT:Amount,
        ACCOUNT_NAME:AccountId,
        CLOSE_DATE:CloseDate
    }
    
    successHandler(){
        const successToast = new ShowToastEvent({
            title: 'Succes',
            message : 'You have edit opp record successfully',
            variant :'success'
        })
        this.dispatchEvent(successToast);
    }

    errorHandler(){
        const errorToast = new ShowToastEvent({
            title: 'Error',
            message : 'An error occured',
            variant :'error'
        })
        this.dispatchEvent(errorToast);
    }

}