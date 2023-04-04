#pragma warning disable 
#pragma warning restore LC0003
codeunit 50101 "TestRule0003"
{
    // Should not raise warning LC0003
    Permissions = tabledata "Sales Shipment Buffer" = rimd;
    // Should raise warning LC0003
    TableNo = 18;


    var
        Arr: array[8] of Record 18;
        c: Record 18;
        a: Codeunit 80;

    // Should not raise warning LC0003
    procedure TestProcedure(Test: Record LC0003TempTable): Record LC0003TempTable;
    var
        // Should raise warning LC0003
        Customer: Record 19;
        // Should not raise warning LC0003
        RecordLink: Record "Record Link";
        // Should not raise warning LC0003
        v: Record LC0003TempTable;
    begin
    end;

    // Should raise warning LC0003
    procedure TestProcedure2(Test: Record 50100): Record 50100;
    begin

    end;

}