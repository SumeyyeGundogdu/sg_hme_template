import { LightningElement } from 'lwc';

export default class C2pEventWithData extends LightningElement {
    showDetails = false;
    input;
    contactId;
    changeHandler(event) {
        this.input = event.target.value;
    }
    clickHandler() {
        this.contactId = this.input;
        this.showDetails = true;
    }
    closeHandler(event) {
        this.showDetails = false;
        console.log(event);
        consolo.log(JSON.stringify(event.detail));
        this.output = event.detail;

    }
}