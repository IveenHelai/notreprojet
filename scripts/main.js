App.start();


// TRY LECTURE

Rest.get(
{

    table:"product",
    active:false,
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
        $('main').append(JSON.stringify(element)+"<br>").fadeIn();
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
        price: 55.25
    }

}).done( (resp) => 
{

    $('main').append("<br>TEST PUT : <br> Nombre de ligne affectées par update : " + resp+"<br>").fadeIn();

});


//TRY DELETE
Rest.delete(
    {
        table:"product",
        rowid:5, 
        soft:false
    }).done( (resp) => 
    {
    
        $('main').append("<br>TEST DELETE : <br>Nombre de ligne affectées par la suppression : " + resp + "<br>").fadeIn();
    
    });