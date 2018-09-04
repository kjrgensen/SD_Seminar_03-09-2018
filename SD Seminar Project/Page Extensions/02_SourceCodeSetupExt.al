pageextension 123456702 "CSD SourceCodeExt" extends "Source Code Setup"

{
    layout
    {
        addafter("Cost Accounting")
        {
            group("CSD SeminarGroup")
            {
                Caption='Seminar';
                field(Seminar;"CSD Seminar")
                {
                }
            }
        }
    }
}
