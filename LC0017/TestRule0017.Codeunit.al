#pragma warning disable 
#pragma warning restore LC0017
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

        // None of those should raise a L0000 Invalid cast exception
        // https://github.com/StefanMaron/BusinessCentral.LinterCop/issues/226
        // Setup.Validate("Allow FA Posting From", "AB Blob Access Tier"::Archive);
        // Setup.Validate("Allow FA Posting From", Text);
        // Setup.Validate("Allow FA Posting From", StrSubstNo('')); 
    end;
}