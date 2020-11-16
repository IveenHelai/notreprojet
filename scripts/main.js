App.start();

Rest.get(
{
    table:"products",
    rowid:1,
    where:"active = true",
    orderby : "ord ASC"
}).done( (resp) => 
{
    $('main').hide().html("TEST GET : " + resp).fadeIn();
});

Rest.post(
{
    table:"products"

}).done( (resp) => 
{

    $('main').append("<br>TEST POST : " + resp).fadeIn();

});

Rest.put(
{

    table:"products",
    rowid:2,
    fields:
    {
        title:"titre produit",
        description: "description produit",
        price: 55.23
    }

}).done( (resp) => 
{

    $('main').append("<br>TEST PUT : " + resp).fadeIn();

});

Rest.delete(
    {
        table:"products",
        rowid:2 
        
    }).done( (resp) => 
    {
    
        $('main').append("<br>TEST DELETE : " + resp).fadeIn();
    
    });