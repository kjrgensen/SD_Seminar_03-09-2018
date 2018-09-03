pageextension 123456701 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD rescource Type")
            {
            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
            
             //Visible = ShowMaxField;
                         
            }
        }
    }
    
    trigger OnOpenPage();
    begin
        ShowMaxField := true;
        rec.FILTERGROUP(3);
        ShowType := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(Type)=format(Type::machine));
        rec.FILTERGROUP(0);
    end;

    var
        
        [InDataSet]
        ShowType : Boolean;
        [InDataSet]
        ShowMaxField : Boolean; 

}

