page 86000 "PTE_Go-Live Tool"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "PTE_Go-Live Tool";
    ShowFilter = true;

    layout
    {
        area(Content)
        {
            repeater("")
            {
                field("Delete"; Delete)
                {
                    ApplicationArea = All;
                }
                field("Table ID"; "Table ID")
                {
                    ApplicationArea = All;
                }
                field("Table Name"; "Table Name")
                {
                    ApplicationArea = All;
                }
                field("Table Caption"; "Table Caption")
                {
                    ApplicationArea = All;
                }
                field("Version List"; "Version List")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GetTable)
            {
                Caption = '1. Get Tables';
                ApplicationArea = All;
                Image = GetLines;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    CopyTables;
                end;
            }
            action(ReviewData)
            {
                Caption = '2. Review data';
                ApplicationArea = All;
                Image = ViewCheck;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ShortcutKey = 'Ctrl+L';

                trigger OnAction()
                begin
                    ViewTable;
                end;
            }
            action(DeleteData)
            {
                Caption = '3. Delete data';
                ApplicationArea = All;
                Image = Delete;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Ellipsis = false;

                trigger OnAction()
                begin
                    DeleteTables;
                end;
            }
            action("Select All")
            {
                Caption = 'Select All';
                ApplicationArea = All;

                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;


                trigger OnAction()
                begin
                    CLEAR(AVGoliveTB);
                    AVGoliveTB.SETCURRENTKEY("Table ID");
                    AVGoliveTB.COPYFILTERS(Rec);
                    AVGoliveTB.MODIFYALL(Delete, TRUE);
                end;
            }
            action("Unselect All")
            {
                Caption = 'Unselect All';
                ApplicationArea = All;

                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;


                trigger OnAction()
                begin
                    CLEAR(AVGoliveTB);
                    AVGoliveTB.SETCURRENTKEY("Table ID");
                    AVGoliveTB.COPYFILTERS(Rec);
                    AVGoliveTB.MODIFYALL(Delete, FALSE);
                end;
            }
        }
    }

    var
        AVGoliveTB: Record "PTE_Go-Live Tool";
}