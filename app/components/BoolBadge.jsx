/** @jsx createElement */
/*** @jsxFrag createFragment */

class BoolBadge
{
    constructor(prop)
    {
        this.prop = prop;
    }

    render()
    {
        const cls = this.prop ? "success" : "danger";
        const txt = this.prop ? "En vente" : "Désactivée";
        let elt = (
            <span class={"badge badge-"+cls}>
                {txt}
            </span>
        );
        return elt;
    }
}
