#pragma warning disable LC0001,LC0002,LC0003,LC0004,LC0005,LC0006,LC0007,LC0008,LC0009,LC0010,LC0011,LC0012,LC0013,LC0014,LC0015,LC0016,LC0017,LC0018,LC0019,LC0020,LC0021
codeunit 50103 TestRule0022
{
    local procedure BuiltInGlobalLanguage()
    var
        GlobalLanguageInteger: Integer;
    begin
        GlobalLanguageInteger := GlobalLanguage;    // Should raise warning LC0022
        GlobalLanguageInteger := GlobalLanguage();  // Should raise warning LC0022
        GlobalLanguage(GlobalLanguageInteger);      // Should raise warning LC0022
    end;

    local procedure CustomGlobalLanguage()
    var
        TestRule0022GlobalLanguage: Codeunit TestRule0022GlobalLanguage;
        GlobalLanguageInteger: Integer;
    begin
        GlobalLanguageInteger := TestRule0022GlobalLanguage.GlobalLanguage();   // Should not raise warning LC0022
        TestRule0022GlobalLanguage.GlobalLanguage(1);                           // Should not raise warning LC0022
    end;
}

codeunit 50104 TestRule0022GlobalLanguage
{
    procedure GlobalLanguage(): Integer
    begin
    end;

    procedure GlobalLanguage(Input: Integer): Integer
    begin
    end;
}