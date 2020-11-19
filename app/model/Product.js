class Product 
{

    constructor(obj) 
    {
        Object.keys(obj).forEach( (key)=>
        {
            if(this[key] !== undefined && typeof this[key] === "number")
            {
                this[key] = Number(obj[key]);
            }
            else if(this[key] !== undefined && typeof this[key] === "boolean")
            {
                this[key] = Boolean(obj[key]);
            }
            else
            {
                this[key] = obj[key];
            }
        });
    }

    id = 0;
    active = true;
    category_id = 0;
    title = "";
    description = "";
    price = 0;
    onsale = false;
    ord = 0;


}