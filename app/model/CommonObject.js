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
                this[key] = Boolean(obj[key]);
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


}