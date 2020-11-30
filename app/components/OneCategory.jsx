/** @jsx createElement */
/*** @jsxFrag createFragment */


class OneCategory
{

    constructor(obj)
    {
        this.obj = obj;
    }

    render()
    {
        let elt = 
        (
            <div class="row">
                <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <h2>
                            Fiche Catégorie : &nbsp;<span data-toggle="tooltip" data-placement="bottom" title={"Éditer la catégorie "+this.obj.id} class="badge badge-info"><i class="icofont-pencil"></i></span>&nbsp;<span data-toggle="tooltip" data-placement="bottom" title={"Supprimer la catégorie "+this.obj.id} class="badge badge-info"><i class="icofont-trash"></i></span>
                        </h2>
                        
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div>
                                <h3>Nom de la catégorie :</h3>
                                <h4 class="ml-2">{this.obj._title}</h4>
                                <h3>Déscription de la catégorie :</h3>
                                <h4 class="ml-2">{this.obj._description}</h4>
                            </div>
                        </div>
                    </div>
                <div class="col-md-2"></div>
            </div>
        );
        return elt;
    }
}