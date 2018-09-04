pageextension 123456702 "CSD SourceCodeExt" extends "Source Code Setup"

{
    layout
    {
        addafter("Cost Accounting")
        {
            group(SeminarGroup)
            {
                Caption='Seminar';
            }
        }
        addfirst(SeminarGroup)
        {
            field(Seminar;"CSD Seminar")
            {
            }
        }
    }
}
