import { LightningElement } from 'lwc';

export default class ConditionalRendering2 extends LightningElement {
    showContect = true;
    
    clickHandler(){
        this.showContect = !this.showContect;
    }
}