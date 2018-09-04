codeunit 123456703 "CSD Seminar Document-Print"
{
    trigger OnRun();
    begin
    end;

    procedure PrintSeminarRegistrationHeader(SeminarRegHeader : Record "CSD Seminar Reg. Header");
    var
        ReportSelection : Record "CSD Seminar Report Selections";
    begin
        SeminarRegHeader.SetRecFilter;
        ReportSelection.SetRange(Usage,ReportSelection.Usage::Registration);
        ReportSelection.SetFilter("Report ID",'<>0');
        ReportSelection.Ascending := false;
        ReportSelection.Find('-');
        repeat
          Report.RunModal(ReportSelection."Report ID",true,false,SeminarRegHeader);
        until ReportSelection.NEXT = 0;
    end;
}

