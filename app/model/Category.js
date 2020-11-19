class Category extends CommonObject
{

    constructor(obj)
    {
        super()
        this.assign(obj);
    }

    id = 0;
    active = true;
    title = "";
    description = "";
    onsale = false;
    ord = 0;
    product_list = [];


    rels=
    [
        {
            table: "product",
            container: "product_list",
            class: "Product",
            filter: "*",
            field: "category_id"
        }
    ];
}