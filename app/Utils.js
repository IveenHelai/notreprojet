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




    }

}