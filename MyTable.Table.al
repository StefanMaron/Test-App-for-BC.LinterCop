table 50100 MyTable
{
    DataClassification = ToBeClassified;

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

}