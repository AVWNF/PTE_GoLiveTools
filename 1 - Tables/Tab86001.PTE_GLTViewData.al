table 86001 "PTE_GLT - View Data"
{
    DataClassification = ToBeClassified;
    LookupPageId = "PTE_GLT - View Data";
    DrillDownPageId = "PTE_GLT - View Data";

    fields
    {
        field(1; Field1; Text[50])
        {
        }
        field(2; Field2; Text[50])
        {
        }
        field(3; Field3; Text[50])
        {
        }
        field(4; Field4; Text[50])
        {
        }
        field(5; Field5; Text[50])
        {
        }
        field(6; Field6; Text[50])
        {
        }
        field(7; Field7; Text[50])
        {
        }
        field(8; Field8; Text[50])
        {
        }
        field(9; Field9; Text[50])
        {
        }
        field(10; Field10; Text[50])
        {
        }
        field(11; Field11; Text[50])
        {
        }
        field(12; Field12; Text[50])
        {
        }
        field(13; Field13; Text[50])
        {
        }
        field(14; Field14; Text[50])
        {
        }
        field(15; Field15; Text[50])
        {
        }
        field(16; Field16; Text[50])
        {
        }
        field(17; Field17; Text[50])
        {
        }
        field(18; Field18; Text[50])
        {
        }
        field(19; Field19; Text[50])
        {
        }
        field(20; Field20; Text[50])
        {
        }
        field(21; "Key"; BigInteger)
        {
        }
    }

    keys
    {
        key(PK; "Key")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}