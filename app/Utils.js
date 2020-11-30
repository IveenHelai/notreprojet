class Utils{

    static init(){

        

        String.prototype.tryJsonParse = function () 
        {
            let ret = false;
            try 
            {
                ret = JSON.parse(this);
            } 
            catch (error) 
            {
                console.log("JSON.parse failed on : ", this);
            }
            return ret;
        }
        
        String.prototype.capitalize = function () 
        {
            let str = this;
            let e = this.substring(1);
            let f = this.substring(0,1).toUpperCase();    
            return f+e;
        }

        String.prototype.tryEval = function () {//TODO
            let value = this;
            try {
                value = eval(value);
            } catch (error) {
                value = false;
            }
            //evaluation d'une chaine avec eval
            return value;
        }

        String.prototype.getClass = function () {//Pour convertir un nom de table (string) en classe js
            return this.capitalize().tryEval();
        }

    }


}