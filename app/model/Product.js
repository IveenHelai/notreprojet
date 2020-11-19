class Product extends CommonObject
{

    constructor(obj) 
    {
        super();
        this.assign(obj);
        this.loadRels(this.rels);
        console.log(this);
    }

    id = 0;
    active = true;
    category_id = 0;
    title = "";
    description = "";
    price = 0;
    onsale = false;
    ord = 0;
    category = "";

    rels=
    [
        {
            table: "category",
            container: "category",
            class: "Category",
            filter: "category_id",
            field: "id"
        }
    ];
}