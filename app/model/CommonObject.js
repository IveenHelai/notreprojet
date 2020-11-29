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
                this[key] = obj[key] == "1" ? true : false;
            }
            else
            {
                this[key] = obj[key];
            }
        });
    }

    loadRels(rels)
    {
        //TODO remplacer rest.get par classname.select()
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
                        elt = classname.prepareJsonSelect(elt);
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
                        elt = classname.prepareJsonSelect(elt);
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
                        let tmp = obj.id;
                        obj = classname.prepareJsonSelect(obj);
                        obj['id'] = tmp;
                        ret.push(new classname(obj));
                        
                    });
                    def.resolve(ret[0]);
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
 
    insert(values = {})
    {

        let def = $.Deferred();
        let ret = false;
        this.assign(values);
        console.log(this);
        let fields = this.prepareJsonInsert();
        let classname = eval(this.constructor.name);
        let table = classname.table;

        let id= $.map([table], (table)=>
        {
            return Rest.post(
                {
        
                    table:table,
                    fields:JSON.stringify(fields)
        
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
   
    update(values = {})
    {
        let classname = eval(this.constructor.name);
        let def = $.Deferred();
        let table = classname.table;
        let id = this.id;
        let fields = values === undefined ? {} : (values);
        this.assign(fields);
        fields = this.prepareJsonInsert();
        console.log(fields);
        let data = 
        {
            table: table,
            rowid: id,
            fields: fields
        }
        console.log(data);
        Rest.put(data).done(resp=>
            {
                def.resolve(resp);
            });

        return def.promise();
    }

    deactivate()
    {
        let def = $.Deferred();
        let classname = eval(this.constructor.name);
        let table = classname.table;
        let id = this.id;
        let data = 
        {
            table:table,
            rowid:id,
            soft:true
        }
        Rest.delete(data).done(resp=>
        {
            
            def.resolve(resp);
        });
        return def.promise();
    }

    delete() 
    {
        let def = $.Deferred();
        let classname = eval(this.constructor.name);
        let table = classname.table;
        let id = this.id;
        let data = 
        {
            table:table,
            rowid:id,
            soft:false
        }
        Rest.delete(data).done(resp=>
        {
            
            def.resolve(resp);
        });
        return def.promise();
    }


    static getOne(id){
        let classe = this;
        return classe.list.filter(row => row.id == id)[0];
    }
    static getAll(){
        let classe = this;
        return classe.list;
    }
}