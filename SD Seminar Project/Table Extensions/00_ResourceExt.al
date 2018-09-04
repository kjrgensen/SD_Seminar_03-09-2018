tableextension 123456700 "CSD ResourceExt" extends Resource
// CSD1.00 - 2012-06-15 - D. E. Veloper
// Chapter 5 - Lab 1-1
// -	Added new fields:
// -	Internal/External
// -	Maximum Participants
{
    fields
    {
        modify("Profit %")
        {
        
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(123456701;"CSD Resource Type";Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(123456702;"CSD Maximum Participants";Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(123456703;"CSD Quantity Per Day";Integer)
        {
            Caption = 'Quantity Per Day';
        }        
    }
}


