class App 
{
    static start() 
    {

        App.loadClasses().done(()=>
        {
            
            $('document').on('ready')
            {   
                Utils.init();
                App.browse();
                
            }
        });
        window.onpopstate = () => 
        {
            App.browse();
            // let doc = new BoolBadge(true).render();
            // console.log(doc);
            // $("main").append(doc);
        }

        $('.nav-link').on('click', (evt) => 
        {
            let btn = $(evt.target).closest('.navbar').find('.navbar-toggler').not('.collapsed');
            btn ? btn.click() : null;
        });

        $
    }

    static browse()
    {
        
        //console.clear();
        let params = (window.location.hash || "#accueil").substring(1).split("/");
        let hash = params[0];
        let id = params[1] > 0 ? Number(params[1]) : null;
        Router.navigate(hash,id).done(view=>
            {
                $('[data-toggle="tooltip"]').tooltip('hide');
                $('main').hide().html(view).fadeIn('fast');
                //TODO MIEUX GERER CES EVENEMENTS
                $('[data-toggle="tooltip"]').tooltip();
                
            });
        
    }

    static classes = [
        "Utils", "Rest", "model/CommonObject", "router/Router" 
    ];
    static components = [
        "components/BoolBadge", "components/ListCategory", "components/BoolSwitch", "components/GotoButton", "components/OneCategory"
    ];
    static extends = [
        "model/Category", "model/Product"
    ]

    static loadClasses()
    {     
        let def = $.Deferred();
        let classes = $.map(App.classes, (cl)=>{

            return App.loadScript("app/"+cl+".js");

        });
        let components = $.map(App.components, (comp)=>{

            return App.loadScript("app/"+comp+".jsx", true);

        });
        $.when.apply($, [classes,components]).then(()=>{
            
            let extend = $.map(App.extends, (ext)=>{
                return App.loadScript("app/"+ext+".js");
            });
            $.when.apply($, extend).then(()=>{
                def.resolve();
            });
            
        });
        
        return def.promise();
    }

    static loadScript(path, isJSX = false)
    {
        let def = $.Deferred();
        let scr = document.createElement('script');
        scr.src = path;
        scr.defer = true;
        scr.type = isJSX ? "text/babel" : "text/javascript";
        scr.onload = function () 
        {
            def.resolve();
        }
        document.body.appendChild(scr);
        return def.promise();
    }

    static test()
    {
        //TODO
    }
}