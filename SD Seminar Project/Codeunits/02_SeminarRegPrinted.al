codeunit 123456702 SeminarRegPrinted

{
    TableNo = "CSD Seminar Reg. Header";

    trigger OnRun();
    begin
        Find;
        "No. Printed" += 1; 
        Modify;
        Commit;
    end;
}
