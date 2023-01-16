import { LightningElement, wire } from 'lwc';
import { getFieldValue, getRecord, updateRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import PRIORTY_FIELD from '@salesforce/schema/Case.Priority';

const FIELDS = [SUBJECT_FIELD, DESCRIPTION_FIELD, PRIORTY_FIELD];

export default class UpddateRecordCase extends LightningElement {
    recordId = "0038c00002iIjuzAAC";
    formdata = {};
    subject;
    desc;
    priority;


    @wire(getRecord, {recordId:'$recordId', field:FIELDS})
    caseRecordHandler({data,error}) {
        if (data) {
            this.subject = getFieldValue(data,SUBJECT_FIELD);
            this.desc = getFieldValue(data,DESCRIPTION_FIELD);
            this.priority = getFieldValue(data,PRIORTY_FIELD);
        }
        if (error) {
            console.error(error);
        }
    }
    get priorities(){
        return[
            {label: "High", Value: "High"},
            {label: "Medium", Value: "Medium"},
            {label: "Low", Value: "Low"}
        ]
    }
    chanceHandler(event){
       const {name,value} =event.target;
       this.formdata[name] = value;
       this.formdata['Id'] = this.recordId;
    }
    updateCase(){
        const recordInput = {fields: this.formdata};
        updateRecord(recordInput)
        .then(result =>{
            console.log(result);
            this.prepareToast("Success", "Case Updated", "success");
        })
        .catch(error =>{
            console.log(error);
            this.prepareToast("Error", "Update Failed", "error");
        })
    }
    prepareToast(title, message, variant){
        const toast = new ShowToastEvent({title, message, variant});
        this.dispatchEvent(toast);
    }
}

