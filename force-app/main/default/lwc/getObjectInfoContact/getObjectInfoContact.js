import { getObjectInfo } from 'lightning/uiObjectInfoApi'
import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schame/Contact';

export default class GetObjectInfoContact extends LightningElement {
    defaultRtId;
    supplierRtId;
    @wire(getObjectInfo, {objectApiName: CONTACT_OBJECT})
    contactInfoHandler({data, error}){
        if(data){
            console.log(data);
            this.defaultRtId = data.defaultRecordTypeId;
            const rtids = data.recordTypeInfos;
            this.supplierRtId = object.keys(rtids).find(rtid )
        }
    }
}