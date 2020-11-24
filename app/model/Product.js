class Product extends CommonObject
{

    constructor(obj) 
    {
        super();
        this.assign(obj);
    }

    id = 0;
    _active = true;
    static table = "product";
    _category_id = 0;
    _title = "";
    _description = "";
    _price = 0;
    _onsale = false;
    _ord = 0;
    category = "";

    rels=
    [
        {
            table: "category",
            container: "category",
            class: "Category",
            filter: "_category_id",
            field: "id"
        }
    ];
}