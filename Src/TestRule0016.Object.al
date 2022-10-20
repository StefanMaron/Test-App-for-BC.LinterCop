#pragma warning disable LC0001,LC0002,LC0003,LC0004,LC0005,LC0006,LC0007,LC0008,LC0009,LC0010,LC0011,LC0012,LC0013,LC0014,LC0015,LC0017,LC0018,LC0019,LC0020,LC0021,LC0022
page 50100 TestRule0016 // Should raise warning LC0016
{

}

page 50101 TestRule0016PageTypeAPI // Shoud not raise warning LC0016 (with enableRule0016ForApiObjects: false in LinterCop.json)
{
    PageType = API;
    APIPublisher = 'Publisher';
    APIGroup = 'Group';
    APIVersion = 'v1.0';
    EntityName = 'SomeName';
    EntitySetName = 'SomeName';
    Editable = false;
}