class App 
{
    static start() 
    {

        App.loadClasses().done(()=>
        {
            Utils.init();
            $('document').on('ready')
            {
                App.browse();
            }
        });
        window.onpopstate = () => 
        {
            App.browse();
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
        let hash = (window.location.hash || "#accueil").substring(1);

    }

    static classes = [
        "Utils", "Rest", "model/CommonObject" 
    ];
    static extends = [
        "model/Category", "model/Product"
    ]

    static loadClasses()
    {     
        let def = $.Deferred();
        let classes = $.map(App.classes, (cl)=>{

            return App.loadScript("app"+cl+"js");

        });
        $.when.apply($, classes).then(()=>{
            let extend = $.map(App.extends, (ext)=>{
                return App.loadScript("app/"+ext+".js");
            });
            $.when.apply($, extend).then(()=>{
                def.resolve();
            });
        });
        return def.promise();
    }

    static loadScript(path)
    {
        let def = $.Deferred();
        let scr = document.createElement('script');
        scr.src = path;
        scr.defer = true;
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