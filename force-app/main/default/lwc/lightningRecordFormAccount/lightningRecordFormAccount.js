import { LightningElement } from 'lwc';

import ACCOUNT_OBJECT from 'salesforce/schema/Account';

export default class LightningRecordFormAccount extends LightningElement {
    objectName = ACCOUNT_OBJECT;
}