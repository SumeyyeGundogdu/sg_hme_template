import { api, LightningElement } from 'lwc';

export default class ClassWorkChild extends LightningElement {
    @api studentName;
    @api studentClass;
    @api fruits;
}