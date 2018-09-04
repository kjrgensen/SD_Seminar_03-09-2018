page 123456702 "CSD Seminar List"

{
    Caption='Seminar List';
    PageType = List;
    SourceTable = "CSD Seminar";
    Editable = false;
    CardPageId = 123456701;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field(Name; Name)
                {
                }
                field("Seminar Duration";"Seminar Duration")
                {
                }
                field("Seminar Price"; "Seminar Price")
                {
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
            {
            }
        }

    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    Caption='Co&mments';
                    RunObject=page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name"=const(Seminar),"No."=field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
                
                action("Ledger Entries")
                {
                    Caption='Ledger Entries';
                    RunObject=page "CSD Seminar Ledger Entries";
                    RunPageLink="Seminar No."=field("No.");
                    Promoted=true;
                    PromotedCategory=Process;
                    ShortcutKey="Ctrl+F7";
                    Image=WarrantyLedger;
                }
                
                action("&Registrations")
                {
                    Caption='&Registrations';
                    RunObject=page "CSD Seminar Registration List";
                    RunPageLink="Seminar No."=field("No.");
                    Image=Timesheet;
                    Promoted=true;
                    PromotedCategory=Process;
                }
            
            }
        }
        
        area(Processing)
        {
            action("Seminar Registration")
            {
                Caption='Seminar Registration';
                RunObject= page "CSD Seminar Registration";
                RunPageLink="Seminar No."=field("No.");
                RunPageMode=Create;
                Image=NewTimesheet;
                Promoted=true;
                PromotedCategory=New;

            }
        }
   }
}
