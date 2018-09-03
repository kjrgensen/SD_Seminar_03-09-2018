pageextension 123456700 "CSD ResourceCardExt" extends "Resource Card"

{
    layout
    {
        addlast(General)
        {
            
            field("CSD Resource Type";"CSD rescource Type")
            {
            }
            field("CSD Quantity Per Day";"CSD Quatity Per Day")
            {
            }
        }

        addafter("Personal Data")
        {

            group("Room")
            {
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {
                    
                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}