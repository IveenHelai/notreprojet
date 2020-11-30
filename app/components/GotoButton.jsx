/** @jsx createElement */
/*** @jsxFrag createFragment */

class GotoButton
{
    constructor(table, item, id)
    {
        this.table= table;
        this.id= id;
        this.item= item;
    }

    clickHandle = () => 
    {
        location.hash = this.table+"/"+this.id
    }

    render()
    {
        let elt = (
            <p class="badge badge-info" data-placement="bottom" data-toggle="tooltip" title={"Accéder à la page "+this.item+" "+this.id} onClick={this.clickHandle}>
                <i class="icofont-eye-alt"></i>
            </p>
        )
        return elt;
    }
}