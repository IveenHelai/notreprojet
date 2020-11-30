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
            <p class="boolbadge" style="text-align:center;">
                <span style="width:100%;" class={"badge badge-"+cls}>
                    {txt}
                </span>
            </p>
        );
        return elt;
    }
}
