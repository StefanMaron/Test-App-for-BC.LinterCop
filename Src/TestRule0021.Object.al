#pragma warning disable LC0001,LC0002,LC0003,LC0004,LC0005,LC0006,LC0007,LC0008,LC0009,LC0010,LC0011,LC0012,LC0013,LC0014,LC0015,LC0016,LC0017,LC0018,LC0019,LC0020,LC0022
codeunit 50101 TestRule0021
{
    var
        AreYouSureQst: Label 'Are You Sure?';

    local procedure BuiltInConfirm()
    begin
        if Confirm(AreYouSureQst) then; // Should raise warning LC0021
    end;

    local procedure CustomConfirm()
    var
        TestRule0021Confirm: Codeunit TestRule0021Confirm;
    begin
        if TestRule0021Confirm.Confirm(AreYouSureQst) then; // Should not raise warning LC0021
    end;
}

codeunit 50102 TestRule0021Confirm
{
    procedure Confirm(Input: Text): Boolean
    begin
    end;
}