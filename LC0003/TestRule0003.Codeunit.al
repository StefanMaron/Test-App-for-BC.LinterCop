#pragma warning disable 
#pragma warning restore LC0003
codeunit 50101 "TestRule0003"
{
    // Should raise warning LC0003
    TableNo = 18;

    trigger OnRun()
    var
        Customer: Record 19;
        // Should not raise warning LC0003
        v: Record LC0003TempTable;
    begin
    end;
}