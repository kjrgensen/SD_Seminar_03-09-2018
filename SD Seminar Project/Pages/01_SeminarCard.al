page 123456701 "CSD Seminar Card"

{
    PageType = Card;
    SourceTable = "CSD Seminar";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    AssistEdit=true;
                    trigger OnAssistEdit();
                    begin
                        if AssistEdit then
                            CurrPage.Update;
                    end;
                }
                field(Name; Name)
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field("Seminar Duration";"Seminar Duration")
                {
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                }
                field(Blocked; Blocked)
                {
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                }
                field("Seminar Price"; "Seminar Price")
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
                    Image = Add;
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
                Image=Answers;
                Promoted=true;
                PromotedCategory=New;

            }
        }
        
    }
}
