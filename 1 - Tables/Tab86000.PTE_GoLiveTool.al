table 86000 "PTE_Go-Live Tool"
{
    DataClassification = ToBeClassified;
    DataCaptionFields = "Table ID", "Table Name";

    fields
    {
        field(1; "Table ID"; Integer)
        {
        }
        field(2; "Table Name"; text[100])
        {
        }
        field(3; "Table Caption"; text[100])
        {
        }
        field(4; "Version List"; text[100])
        {
        }
        field(5; "Delete"; Boolean)
        {
        }
    }

    keys
    {
        key(PK; "Table ID")
        {
            Clustered = true;
        }
    }

    var
        recrefTV: RecordRef;
        fieldrefTV: FieldRef;
        i: Integer;
        maxcol: Integer;
        VData: Record "PTE_GLT - View Data";
        rowcount: Integer;

    procedure CopyTables()
    begin
        IF NOT CONFIRM('Are you sure to copy tables here? If you say yes you will have to tick each table again for deleting') THEN BEGIN
            ERROR('Action cancelled');
        END;
        REPORT.RUNMODAL(86000);
    end;

    procedure DeleteTables()
    var
        tod: Record "PTE_Go-Live Tool";
        recref: RecordRef;
        window: Dialog;
    begin
        IF NOT CONFIRM('Are you sure to delete all tables marked as delete? WARNING! Data will be LOST!') THEN BEGIN
            ERROR('Action cancelled');
        END;

        IF NOT CONFIRM('Are you TOTALLY sure? Data will be LOST!') THEN BEGIN
            ERROR('Action cancelled');
        END;

        window.OPEN('Deleting table: #1######################');

        CLEAR(tod);
        tod.SETCURRENTKEY(Delete);
        tod.SETRANGE(Delete, TRUE);
        IF tod.FIND('-') THEN
            REPEAT
                window.UPDATE(1, tod."Table ID");
                CLEAR(recref);
                recref.OPEN(tod."Table ID");
                recref.DELETEALL;
            UNTIL tod.NEXT = 0;

        window.CLOSE;
    end;

    procedure ViewTable()
    begin
        CLEAR(recrefTV);
        CLEAR(fieldrefTV);
        CLEAR(VData);
        CLEAR(i);
        CLEAR(rowcount);


        // WARNING!!!!
        VData.DELETEALL;


        recrefTV.OPEN("Table ID");
        IF recrefTV.FIELDCOUNT <= 20 THEN BEGIN
            maxcol := recrefTV.FIELDCOUNT;
        END ELSE BEGIN
            maxcol := 20;
        END;

        FOR i := 1 TO maxcol DO BEGIN
            fieldrefTV := recrefTV.FIELDINDEX(i);
            //Captions
            IF i = 1 THEN BEGIN
                VData.Field1 := fieldrefTV.CAPTION;
            END;
            IF i = 2 THEN BEGIN
                VData.Field2 := fieldrefTV.CAPTION;
            END;
            IF i = 3 THEN BEGIN
                VData.Field3 := fieldrefTV.CAPTION;
            END;
            IF i = 4 THEN BEGIN
                VData.Field4 := fieldrefTV.CAPTION;
            END;
            IF i = 5 THEN BEGIN
                VData.Field5 := fieldrefTV.CAPTION;
            END;
            IF i = 6 THEN BEGIN
                VData.Field6 := fieldrefTV.CAPTION;
            END;
            IF i = 7 THEN BEGIN
                VData.Field7 := fieldrefTV.CAPTION;
            END;
            IF i = 8 THEN BEGIN
                VData.Field8 := fieldrefTV.CAPTION;
            END;
            IF i = 9 THEN BEGIN
                VData.Field9 := fieldrefTV.CAPTION;
            END;
            IF i = 10 THEN BEGIN
                VData.Field10 := fieldrefTV.CAPTION;
            END;
            IF i = 11 THEN BEGIN
                VData.Field11 := fieldrefTV.CAPTION;
            END;
            IF i = 12 THEN BEGIN
                VData.Field12 := fieldrefTV.CAPTION;
            END;
            IF i = 13 THEN BEGIN
                VData.Field13 := fieldrefTV.CAPTION;
            END;
            IF i = 14 THEN BEGIN
                VData.Field14 := fieldrefTV.CAPTION;
            END;
            IF i = 15 THEN BEGIN
                VData.Field15 := fieldrefTV.CAPTION;
            END;
            IF i = 16 THEN BEGIN
                VData.Field16 := fieldrefTV.CAPTION;
            END;
            IF i = 17 THEN BEGIN
                VData.Field17 := fieldrefTV.CAPTION;
            END;
            IF i = 18 THEN BEGIN
                VData.Field18 := fieldrefTV.CAPTION;
            END;
            IF i = 19 THEN BEGIN
                VData.Field19 := fieldrefTV.CAPTION;
            END;
            IF i = 20 THEN BEGIN
                VData.Field20 := fieldrefTV.CAPTION;
            END;
        END;
        VData.INSERT(TRUE);
        COMMIT;
        CLEAR(VData);

        //Line
        VData.Field1 := '---------------------';
        VData.Field2 := '---------------------';
        VData.Field3 := '---------------------';
        VData.Field4 := '---------------------';
        VData.Field5 := '---------------------';
        VData.Field6 := '---------------------';
        VData.Field7 := '---------------------';
        VData.Field8 := '---------------------';
        VData.Field9 := '---------------------';
        VData.Field10 := '---------------------';
        VData.Field11 := '---------------------';
        VData.Field12 := '---------------------';
        VData.Field13 := '---------------------';
        VData.Field14 := '---------------------';
        VData.Field15 := '---------------------';
        VData.Field16 := '---------------------';
        VData.Field17 := '---------------------';
        VData.Field18 := '---------------------';
        VData.Field19 := '---------------------';
        VData.Field20 := '---------------------';
        VData.INSERT(TRUE);
        COMMIT;
        IF recrefTV.FIND('-') THEN
            REPEAT
                CLEAR(VData);
                rowcount += 1;
                IF recrefTV.FIELDCOUNT <= 20 THEN BEGIN
                    maxcol := recrefTV.FIELDCOUNT;
                END ELSE BEGIN
                    maxcol := 20;
                END;

                FOR i := 1 TO maxcol DO BEGIN
                    fieldrefTV := recrefTV.FIELDINDEX(i);
                    //Captions
                    IF i = 1 THEN BEGIN
                        VData.Field1 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 2 THEN BEGIN
                        VData.Field2 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 3 THEN BEGIN
                        VData.Field3 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 4 THEN BEGIN
                        VData.Field4 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 5 THEN BEGIN
                        VData.Field5 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 6 THEN BEGIN
                        VData.Field6 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 7 THEN BEGIN
                        VData.Field7 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 8 THEN BEGIN
                        VData.Field8 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 9 THEN BEGIN
                        VData.Field9 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 10 THEN BEGIN
                        VData.Field10 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 11 THEN BEGIN
                        VData.Field11 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 12 THEN BEGIN
                        VData.Field12 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 13 THEN BEGIN
                        VData.Field13 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 14 THEN BEGIN
                        VData.Field14 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 15 THEN BEGIN
                        VData.Field15 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 16 THEN BEGIN
                        VData.Field16 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 17 THEN BEGIN
                        VData.Field17 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 18 THEN BEGIN
                        VData.Field18 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 19 THEN BEGIN
                        VData.Field19 := FORMAT(fieldrefTV.VALUE);
                    END;
                    IF i = 20 THEN BEGIN
                        VData.Field20 := FORMAT(fieldrefTV.VALUE);
                    END;
                END;
                VData.INSERT(TRUE);
                COMMIT;
            UNTIL (recrefTV.NEXT = 0) OR (rowcount >= 100);

        PAGE.RUNMODAL(0, VData);

    end;

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