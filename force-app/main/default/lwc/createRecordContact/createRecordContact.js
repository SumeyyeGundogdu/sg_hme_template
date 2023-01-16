import { createRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';

export default class CreateRecordContact extends LightningElement {
    chanceHandler(event){
        const {name, value} =event.target;
        this.fields[name]= value;
        console.log(this.fields);
    }
    createContact(){
        const recordInput = {
            apiName: CONTACT_OOJECT.objectApiName,
            fields: this.formdata
        }
        createRecord(recordInput)
        .then(result =>{
            console.log(result);
            this.template.querySelector('form.contact').reset();
        })
        .catch(error =>{
            console.log(error);
        })
    }
}