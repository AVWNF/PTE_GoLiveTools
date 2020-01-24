page 86001 "PTE_GLT - View Data"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "PTE_GLT - View Data";
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater("")
            {
                field(Field1; Field1)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field2; Field2)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field3; Field3)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field4; Field4)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field5; Field5)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field6; Field6)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field7; Field7)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field8; Field8)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field9; Field9)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field10; Field10)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field11; Field11)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field12; Field12)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field13; Field13)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field14; Field14)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field15; Field15)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field16; Field1)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field17; Field17)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field18; Field18)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field19; Field19)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
                field(Field20; Field20)
                {
                    ApplicationArea = All;
                    Editable = true;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}