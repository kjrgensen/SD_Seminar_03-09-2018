page 123456722 "CSD Seminar Registers"

{
    PageType = List;
    SourceTable = "CSD Seminar Register";
    Caption='Seminar Registers';
    Editable=false;
    UsageCategory=Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                }
                field("Creation Date";"Creation Date")
                {
                }
                field("User ID";"User ID")
                {
                }
                field("Source Code";"Source Code")
                {
                }
                field("Journal Batch Name";"Journal Batch Name")
                {
                }
                field("From Entry No.";"From Entry No.")
                {
                }
                field("To Entry No.";"To Entry No.")
                {
                }
            }
        }
        area(factboxes)
        {
        }
    }

    actions
    {
        area(Navigation)
        {
            action("Seminar Ledgers")
            {
                Image=WarrantyLedger;
                RunObject=codeunit SeminarRegShowLedger;
            }
        }
    }
}
