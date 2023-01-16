import { LightningElement } from 'lwc';

export default class ClassWorkParent extends LightningElement {
    elem = this.template.querySelectorAll('div'); 
    
    studentName;
    studentClass;
    changeHandler(event){
        if(event.target.name==="Name"){
            this.studentName=event.target.value;            
        }
        if(event.target.name==="Class"){
            this.studentClass=event.target.value;            
        }       

    }
    fruitss=['elma','armut','karpuz'];
    

    
}