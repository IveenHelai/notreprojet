/** @jsx createElement */
/*** @jsxFrag createFragment */

class ListCategory
{

    constructor(list)
    {
        this.list = list;
    }

    render()
    {
        let list = this.list;

        let categories = [];
        for (let i = 0; i < list.length; i++) 
        {
            const elt = list[i];
            let category = (
                <tr scope ="row">
                    <td>{elt._title}</td>
                    <td>{elt._description}</td>
                    <td>{elt.onsaleBadge}</td>
                    <td>{new GotoButton("category", "Category", elt.id).render()}</td>
                </tr>
            );
            categories.push(category);
        }
        let elt = (
            <div class="row">
                <div class="col-md-2">

                </div>
                <div class="col-md-8 col-sm-12">
                    <table class="table">
                        <tr>
                            <th scope="col">Catégorie</th>
                            <th scope="col">Description</th>
                            <th scope="col">Etat</th>
                            <th scope="col">Actions</th>
                        </tr>
                        {categories}
                    </table>
                </div>
                
                <div class="col-md-2">

                </div>
            </div>
        );
        return elt;
    }
    
}