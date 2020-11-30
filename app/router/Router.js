class Router
{

    
    static data = [];

    static navigate(hash,id)
    {   
        let data = [];
        let viewPath = "app/view/404.html";
        let routerClass = eval(this.name);
        let component = null;
        let renderer = "";
        let rendering;
        switch (hash) 
        {
            case "product":
                if (id>0) 
                {
                    viewPath = "app/view/Product.html";
                    Product.selected = id;

                } 
                else 
                {
                    viewPath = "app/view/Products.html";
                    Product.selected = null;

                }
                data.push("Product");
                data.push("Category");
                break;

            case "category":
                if (id>0) 
                {
                    viewPath = "app/view/Category.html";
                    renderer = "OneCategory";
                    rendering = "Category.getOne("+id+")";
                    Product.selected = id;

                } 
                else 
                {
                    viewPath = "app/view/Categories.html";
                    renderer = "ListCategory";
                    rendering = "Category.getAll()";
                    Product.selected = null;
                }
                data.push("Category");
                data.push("Product");
                
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
                //TODO PAGE POUR PREVENIR USER QUE LA CATEGORIE OU PRODUIT EST DÉSACTIVÉ / NEWSLETTERS WHEN RÉACTIVÉ ?
                viewPath = "app/view/404.html";
                c_this.getView(viewPath).done(resp=>
                {
                    view = $(resp);
                    def.resolve(view);
                });
            }
            else
            {
                
                if(renderer) 
                {
                    let component = renderer.tryEval();
                    let renderObj = rendering.tryEval(); 
                    view =  new component(renderObj).render();
                }
                
                
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