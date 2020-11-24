class CommonObject
{

    assign(obj)
    {
        obj == null ? obj = {} : ""; 

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
        let def = $.Deferred();
        let ret = [];
        let classname = eval(this.prototype.constructor.name);
        let table = classname.table;
        let rowid = id === null ? null : id;
        if (rowid !== null && rowid > 0) 
        {
            
            Rest.get(
                {
                    table: table,
                    active:active,
                    rowid: rowid,  
                    where:where

                }).done( (resp)=>
                {
                    resp = resp.tryJsonParse();
                    resp.forEach(obj=>
                    {
                        
                        ret.push(new classname(obj));
                        
                    });
                    def.resolve(ret);
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
                        let tmp = obj.id;
                        obj = classname.prepareJsonSelect(obj);
                        obj['id'] = tmp;
                        ret.push(new classname(obj));
                    });
                    def.resolve(ret);
                });
        }
        return def.promise();
    }

    static prepareJsonSelect(json)
    {
        let ret = {};
        Object.keys(json).forEach(key=>
            {
                if(key !== "id")
                {
                    ret['_'+key] = json[key];
                }
                
            });
        return ret;
    }

    prepareJsonInsert()
    {
        let ret = {};
        Object.keys(this).forEach(key=>
            {
                if(key.substring(0,1) == "_")
                {
                    let keyOnlyInDB = key.substring(1);
                    ret[keyOnlyInDB] = this[key];
                }
                
            });
        return ret;
    }

    insert(values = null)
    {

        let def = $.Deferred();
        let ret = false;
        values = this.prepareJsonInsert();
        let classname = eval(this.constructor.name);
        let table = classname.table;
        let id= $.map([table], (table)=>
        {
            return Rest.post(
                {
        
                    table:table,
                    fields:JSON.stringify(values)
        
                }).done( (resp)=>
                {
                    
                    ret = resp;
                    this.id = Number(ret); 

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