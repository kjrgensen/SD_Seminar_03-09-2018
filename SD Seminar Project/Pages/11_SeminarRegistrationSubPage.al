page 123456711 "CSD Seminar Reg. Subpage"
{
    
    Caption = 'Lines';
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = "CSD Seminar Registration Line";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Bill-to Customer No."; "Bill-to Customer No.")
                {
                }
                field("Participant Contact No."; "Participant Contact No.")
                {
                }
                field("Participant Name"; "Participant Name")
                {
                }
                field(Participated; Participated)
                {
                }
                field("Registration Date"; "Registration Date")
                {
                }
                field("Confirmation Date"; "Confirmation Date")
                {
                }
                field("To Invoice"; "To Invoice")
                {
                }
                field(Registered; Registered)
                {
                }
                field("Seminar Price"; "Seminar Price")
                {
                }
                field("Line Discount %"; "Line Discount %")
                {
                }
                field("Line Discount Amount"; "Line Discount Amount")
                {
                }
                field(Amount; Amount)
                {
                }
            }
        }
    }

    actions
    {
    }
}

