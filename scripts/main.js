App.start();
Utils.init();



//TRY ECRITURE
// let item = new Category({});

// let id = item.insert({active:1,title:"POO INSERT"}).done( (resp) =>{
//         console.log(resp);
//     });
// let item2 = new Category({description:"test"});
// item2.title = "test";
// item2.insert();
// console.log(item2);
// let item3 = new Category();
// console.log(item3);
// item3._title = "fuckoff";
// console.log(item3.prepareJsonInsert());
// item3.insert().done(resp=>
//     {

//         console.log(item3);
//         console.log(JSON.parse(resp));

//     });
    



// let tmp = Product.select(1);
// console.log(tmp);

// let tmp = Product.select(null,false, {price: " > 75.00"}).done( data=>
//     {
//         data.forEach(prd => {
//             prd.loadRels(prd.rels);
//             console.log(prd);
//         });
//     })




// tmp = Category.select().done(data=>
//     {
//         console.log(data);
//         data.forEach(categ => {
//             categ.loadRels(categ.rels);
//             console.log(categ );
//         });
//     });

// let tmp = new Product({_active:true,_title:"XBOX 5",_price:499.99,_ord:1});
// console.log(tmp);
// tmp._category_id = 5;
// tmp._onsale = false;
// tmp._description = "Une console fictive"

// let tmp_id;
// console.log(tmp);
// tmp.insert().done(id=>
// {
    
//     console.log(id+" product created");
//     tmp.loadRels(tmp.rels)
//     console.log(tmp);
//     tmp_id = id;
//     tmp._price = 349.99;
//     tmp.update({_description:"Un test de double update"}).done(data=>
//         {
//             let test = Product.select(tmp_id).done(resp=>
//             {
//                 console.log(resp);
//             });
//         });

    

// });


// let test2 = new Product({_title:"Double insert title", _price:35.25});
// console.log(test2);
// test2._description = 'double insert description test';
// test2.insert({_category_id: 5});




let todelete = Product.select(262, false).done(resp=>
    {
        
        resp.loadRels(resp.rels)
        console.log(resp);
        resp.deactivate();
    });
     let todestroy = Product.select(260, false).done(resp=>
        {
            
            resp.loadRels(resp.rels)
            console.log(resp);
            resp.delete();
        });

// //TRY UPDATE 

// Rest.put(
// {

//     table:"product",
//     rowid:2,
//     fields:
//     {
//         title:"titre produit",
//         description: "description produit",
//         price: 55.18
//     }

// }).done( (resp) => 
// {

//     $('main').append("<br>TEST PUT : <br> Nombre de ligne affectées par update : " + resp+"<br>").fadeIn();

// });


// //TRY DELETE
// Rest.delete(
// {
//     table:"product",
//     rowid:6, 
//     soft:true
// }).done( (resp) => 
// {

//     $('main').append("<br>TEST DELETE : <br>Nombre de ligne affectées par la suppression : " + resp + "<br>").fadeIn();

// });
// TRY LECTURE
//  Rest.get(

//             {
//                 table: 'product',
//                 active: true
//                 // rowid: id === null ? null : id,
                 
//                 // where:where
//             }

//         ).done(resp=>
//         {
//             resp = resp.tryJsonParse();
//             resp.forEach(obj=>
//                 {
                    
//                    console.log(obj);
//                 });
//         });
// Rest.get(

//     {
//         table:"product",
//         // ,
//         // rowid: id === null ? null : id,
//          active: true
//         // where:where
//     }

// ).done(resp=>
// {
//     resp = resp.tryJsonParse();
//     resp.forEach(obj=>
//         {
            
//            console.log(obj);

//         });
    
// });

// Rest.get(
// {

//     table:"product",
//     active:true,
//     where:
//     {
        
//         title: " LIKE 'm%' ",
//         price: " > 20.00 "

//     }

// }).done( (resp) => 
// {
//     resp = JSON.parse(resp);
//     $('main').append("<br>Test GET : <br>")
//     resp.forEach(element => 
//     {
//         let tmp = new Product(element);
//         tmp.loadRels(tmp.rels);
//         console.log(tmp);
//         $('main').append(JSON.stringify(element)+"<br>").fadeIn();

//     });

// });


// Rest.get(
// {

//     table:"category",
//     rowid:2,
//     active:true

// }).done( (resp) => 
// {
//     resp = resp.tryJsonParse();
//     $('main').append("<br>Test GET : <br>")
//     resp.forEach(element => 
//     {
//         $('main').append(JSON.stringify(element)+"<br>").fadeIn();
//         let tmp = new Category(element);
//         tmp.loadRels(tmp.rels);
//         console.log(tmp);
//     });
// });