public class Cat {
    public string name;
    public string color;
    public Cat(){
        System.debug('constructor called.');        
    }public Cat(string n,String c){
        this.name = n;
        this.color = c;
        sleeping();
    }
    public void sleeping(){
        system.debug(name+ ' is sleeping');
    }
    
}
