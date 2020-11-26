class Router
{

    
    static data = [];

    static navigate(hash,id)
    {   
        let data = [];
        let viewPath = "app/view/404.html";
        let routerClass = eval(this.name);

        switch (hash) 
        {
            case "product":

                viewPath = id > 0 ? "app/view/Product.html" : "app/view/Products.html";
                id > 0 ? Product.selected = id : Product.selected = null;
                data.push("Product");
                data.push("Category");
                break;

            case "category":

                viewPath = id > 0 ? "app/view/Category.html" : "app/view/Categories.html";
                id > 0 ? Category.selected = id : Category.selected = null; 
                data.push("Product");
                data.push("Category");
                break;

            case "accueil":

                viewPath = "app/view/Accueil.html";
                break;

            default:
                viewPath = "app/view/404.html";
                break;

        }
        let req = [];
        let def = $.Deferred();
        let view;
        data.forEach( cl =>
        {
            if(routerClass.data[cl] === undefined)
            {
                routerClass.data[cl] = cl.getClass();
                let cls = cl.getClass();

                req.push(cls.select().done(resp=>
                    {

                        cls.list = resp;

                    }));
            }
        });

        

        req.push(routerClass.getView(viewPath).done(ret=>
        {
            view = $(ret);
        }));

        $.when.apply($, req).then(()=>{

            if(id > 0 && hash.capitalize().tryEval().list.filter(elt => eval(elt.id == id)).length == 0)
            {
                let req2 = [];
                let def2 = $.Deferred();
                viewPath = "app/view/404.html";
                routerClass.getView(viewPath).done(resp=>
                {
                    view = $(resp);
                    def.resolve(view);
                });
            }
            else
            {
                def.resolve(view);
            }
        
        });

        return def.promise();

    }

    static getView(viewPath)
    {

        let def = $.Deferred();
        let routerClass = eval(this.name);
        $.ajax({
            url:viewPath,
            method:"POST"
        }).done(resp=>{
            def.resolve($(resp));
            
        }).fail(()=>{
            $.ajax({
                url:"app/view/404.html",
                method:"POST"
            }).done(resp=>{
                def.resolve($(resp));
            });
        });
        return def.promise();

    };
}