App.start();
Utils.init();

// TRY LECTURE

Rest.get(
{

    table:"product",
    active:true,
    where:
    {
        
        title: " LIKE 'm%' ",
        price: " > 20.00 "

    }

}).done( (resp) => 
{
    resp = JSON.parse(resp);
    $('main').append("<br>Test GET : <br>")
    resp.forEach(element => 
    {
        let tmp = new Product(element);
        tmp.loadRels(tmp.rels);
        console.log(tmp);
        $('main').append(JSON.stringify(element)+"<br>").fadeIn();

    });

});


Rest.get(
{

    table:"category",
    rowid:2,
    active:true

}).done( (resp) => 
{
    resp = resp.tryJsonParse();
    $('main').append("<br>Test GET : <br>")
    resp.forEach(element => 
    {
        $('main').append(JSON.stringify(element)+"<br>").fadeIn();
        let tmp = new Category(element);
        tmp.loadRels(tmp.rels);
        console.log(tmp);
    });
});



//TRY ECRITURE

Rest.post(
{
    table:"product",
    fields:
    {
        title:"testtitle",
        description:"testdescirption",
        price : 22.35
    }

}).done( (resp) => 
{

    $('main').append("<br>TEST POST : <br> product of id : " + resp+" inserted<br>").fadeIn();

});


//TRY UPDATE 

Rest.put(
{

    table:"product",
    rowid:2,
    fields:
    {
        title:"titre produit",
        description: "description produit",
        price: 55.18
    }

}).done( (resp) => 
{

    $('main').append("<br>TEST PUT : <br> Nombre de ligne affectées par update : " + resp+"<br>").fadeIn();

});


//TRY DELETE
Rest.delete(
{
    table:"product",
    rowid:6, 
    soft:true
}).done( (resp) => 
{

    $('main').append("<br>TEST DELETE : <br>Nombre de ligne affectées par la suppression : " + resp + "<br>").fadeIn();

});