#pragma warning disable LC0001,LC0002,LC0003,LC0004,LC0005,LC0006,LC0007,LC0008,LC0009,LC0010,LC0011,LC0012,LC0013,LC0014,LC0015,LC0016,LC0018,LC0019,LC0020,LC0021,LC0022
codeunit 50100 TestRule0017
{

    // Should raise warning LC0017
    trigger OnRun()
    var
        Customer: Record Customer;
        Setup: Record "FA Setup";
        Text: Text;
    begin
        Customer.Validate(Comment, true);
        Customer.Comment := true;

        // None of those should raise a L0000 Invalid cast exeption
        // https://github.com/StefanMaron/BusinessCentral.LinterCop/issues/226
        Setup.Validate("Allow FA Posting From", "AB Blob Access Tier"::Archive);
        Setup.Validate("Allow FA Posting From", Text);
        Setup.Validate("Allow FA Posting From", StrSubstNo(''));
    end;
}