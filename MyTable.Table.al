table 50100 MyTable
{
    DataClassification = ToBeClassified;
    LookupPageId = 18;

    fields
    {
        field(1; MyField; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; GoodFlowField; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
        }

        field(3; BadFlowField; Integer)
        {
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; MyField)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        Commit();
        //The first commit raises an warning LC0002 the second should not raise a warning
        Commit();

        Commit(); // This commit should also not raise any warning!
    end;

}