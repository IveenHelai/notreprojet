class CommonObject
{

    assign(obj)
    {
        Object.keys(obj).forEach( (key)=>
        {
            if(this[key] !== undefined && typeof this[key] === "number")
            {
                this[key] = Number(obj[key]);
            }
            else if(this[key] !== undefined && typeof this[key] === "boolean")
            {
                this[key] = obj[key] === "1" ? true : false;
            }
            else
            {
                this[key] = obj[key];
            }
        });
    }

    loadRels(rels)
    {
        
        
        for (let i = 0; i < rels.length; i++) 
        {

            const rel = rels[i];
            let classname = eval(rel.class);

            if(rel.filter === "*")
            {
                let where_fields = {};

                where_fields[rel.field] = ` = ${this.id}`;

                Rest.get(
                {

                    table:rel.table,
                    active:true,
                    where:where_fields
                    
                }).done((resp)=>
                {
                    resp = resp.tryJsonParse();
                    resp.forEach( elt=>
                    {
                        this[rel.container].push(new classname(elt));
                    });
                    
                });

            }
            else
            {

                let where_fields = {};
                where_fields[rel.field] = ` = ${this[rel.filter]}`;

                Rest.get(
                {
                    table:rel.table,
                    active:true,
                    where:where_fields
                }).done(resp=>
                {
                    resp = resp.tryJsonParse();
                    resp.forEach(elt=>
                    {
                        this[rel.container] = new classname(elt);
                    });
                });

            }

        }
        
    }

    static select(id = null, active = true, where = null)
    {
        let ret = [];
        let classname = eval(this.prototype.constructor.name);
        let table = classname.table;
        let rowid = id === null ? null : id;
        if (rowid !== null && rowid > 0) 
        {
            Rest.get(
                {
                    table: table,
                    active:false,
                    rowid: rowid
                        
                    // where:where
                }).done( (resp)=>
                {
                    resp = resp.tryJsonParse();
                    resp.forEach(obj=>
                    {
                        
                        ret.push(new classname(obj));
        
                    });
                    
                });
        } 
        else 
        {
            Rest.get(
                {

                    table: table,
                    active: active,
                    where:where

                }).done( (resp)=>
                {
                    resp = resp.tryJsonParse();
                    resp.forEach(obj=>
                    {
                        
                        ret.push(new classname(obj));
        
                    });
                    
                });
        }
        return ret;
    }

    insert(values = null)
    {
        let def = $.Deferred();
        let ret = false;
        let classname = eval(this.constructor.name);
        let table = classname.table;
        let id= $.map([table], (table)=>
        {
            return Rest.post(
                {
        
                    table:table,
                    fields:values
        
                }).done( (resp)=>
                {
                    
                    console.log(resp);
                    ret = resp;
                });
        });
        $.when.apply($, id).then(()=>
        {
            def.resolve(ret);
        })
        
        return def.promise();
        
    }

    update()
    {
        //TODO

    }

    delete()
    {
        //TODO

    }


}