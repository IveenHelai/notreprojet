class Category extends CommonObject
{

    constructor(obj)
    {
        super()
        this.assign(obj);
    }

    id = 0;
    _active = true;
    static table="category";
    _title = "";
    _description = "";
    _onsale = false;
    _ord = 0;
    product_list = [];

    get onsaleBadge(){
        return new BoolBadge(this._onsale).render();
    }

    get onsaleSwitch(){
        return new BoolSwitch({model: this, prop:'_onsale'}).render();
    }

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