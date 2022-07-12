import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    name; //Undefined
    fullname = "Salesforce Developer" //string
    age = 25;
    location = {
        city:"Houston",
        country:"United States",
        postalcode: "50033"
    };
    fruits = ["Banana","Orange","Pomogranite","Pineaple"]; //Array
}