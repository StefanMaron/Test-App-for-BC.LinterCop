#pragma warning disable 
#pragma warning restore LC0005
codeunit 50102 "TestRule0005"
{
    // Should not raise warning LC0005
    Permissions = tabledata "Sales Shipment Buffer" = rimd;
    // Should raise warning LC0005
    TableNo = 18;

    // Should not raise warning LC0005
    procedure TestProcedure(Test: Record LC0005TempTable): Record LC0005TempTable;
    var
        // Should raise warning LC0005
        Customer: Record 19;
        // Should not raise warning LC0005
        v: Record LC0005TempTable;
    begin
    end;

    // Should raise warning LC0005
    procedure TestProcedure2(Test: Record 50100): Record 50100;
    begin

    end;

}