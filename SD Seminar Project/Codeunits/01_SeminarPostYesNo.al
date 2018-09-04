codeunit 123456701 "CSD Seminar-Post (Yes/No)"
{

    TableNo = 123456710;

    trigger OnRun();
    begin
        SeminarRegHeader.COPY(Rec);
        Code;
        Rec := SeminarRegHeader;
    end;

    var
        SeminarRegHeader : Record "CSD Seminar Reg. Header";
        SeminarPost : Codeunit "CSD Seminar-Post";
        Text001 : Label 'Do you want to post the Registration?';

    local procedure "Code"();
    begin
        if not Confirm(Text001,false) then
          exit;
        SeminarPost.RUN(SeminarRegHeader);
        COMMIT;
    end;
}

