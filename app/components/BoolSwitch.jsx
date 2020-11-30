/** @jsx createElement */
/*** @jsxFrag createFragment */


class BoolSwitch
{
    constructor(prop, table, id)
    {
        this.prop = prop;
        this.table = table;
        this.id = id;
    }

    boxValue()
    {
        
        this.value = (Number(this.checked));
        
    }

    

    render()
    {
      let elt = (
          
        <div class="custom-control custom-switch">
            {this.prop === true ? <input type="checkbox" value="1" checked class="custom-control-input"  id={"switch_"+this.table+"_"+this.id} /> : <input onChange={this.boxValue} type="checkbox" class="custom-control-input" value="0" id={"switch_"+this.table+"_"+this.id} /> }
            <label class="custom-control-label" for={"switch_"+this.table+"_"+this.id}>Toggle this switch element</label>
        </div>
            
         );
         
      return elt;  
    }
}

