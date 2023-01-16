import { LightningElement } from 'lwc';
import searchContacts from '@salesforce/apex/ContactCtrl.searchContacts';

const COLUMNS = [
    {label:"First Name", fieldName: "First Name", type: "text"},
    {abel: "Last Name", fieldName: "Last Name", type: "text"},
    {abel:"Title", fieldName: "Title", type: "text"},
    {abel:"Deparment", fieldName: "Deparment", type: "text"}
];
export default class ImperativeApexSeearhContacts extends LightningElement {
    searchWord;
    contacts;
    error = "Start entering key words to get matching contacts...";
    chanceHandler(event){
        this.searchWord = event.target.value;
        searchContacts({searchKey: this.searchWord})
        .then(result => {
            this.cpntacts = result;
            if(this.contacts.length == 0){
                this.error = "There are not contacts with the given input" + this.searchWord + ". Start trying in or enter another serch keys.";
                
            }else{
                this.error = undefined;
            }
        })
        .catch(error => {
            this.console.log(error)
            this.error = error.body.message;
            this.contacts = undefined;
        })
    }
}