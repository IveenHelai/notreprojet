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
                    <td>{new BoolBadge(elt._onsale).render()}</td>
                </tr>
            );
            categories.push(category);
        }
        let elt = (
            <div class="row">
                <div>
                    <table class="table">
                        <tr>
                            <th scope="col">Catégorie</th>
                            <th scope="col">Description</th>
                            <th scope="col">Etat</th>
                        </tr>
                        {categories}
                    </table>
                </div>
            </div>
        );
        return elt;
    }
    
}