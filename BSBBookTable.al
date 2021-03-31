table 50100 "BSB Book"
{
    Caption = 'BSB Book';
    DataClassification = ToBeClassified;
    DataCaptionFields = "No.", Description;
    LookupPageId = "BSB Book List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;



            trigger OnValidate()
            begin
                if ("Search Description" = UpperCase(xRec.Description)) or ("Search Description" = '') then
                    "Search Description" := CopyStr(Description, 1, MaxStrLen("Search Description"));

            end;
        }
        field(3; "Search Description"; Code[100])
        {
            Caption = 'Search Description';
            DataClassification = ToBeClassified;
        }
        field(4; Blocked; Boolean)
        {
            Caption = 'Blocked';
            DataClassification = ToBeClassified;
        }
        field(5; Type; Enum "BSB Book Type")
        {
            //OptionMembers = " ",Hardcover,Paperback;
            //OptionCaption = ',Hardcover,Paperback';
            Caption = 'Type';
            DataClassification = ToBeClassified;
        }
        field(7; Created; Date)
        {
            Caption = 'Created';
            DataClassification = ToBeClassified;
            Editable = false;

        }
        field(8; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(10; Author; Text[50])
        {
            Caption = 'Author';
            DataClassification = ToBeClassified;
        }
        field(11; "Author Provision %"; Decimal)
        {
            Caption = 'Author Provision %';
            DecimalPlaces = 0 : 2;
            DataClassification = ToBeClassified;
        }
        field(15; ISBN; Code[20])
        {
            Caption = 'ISBN';
            DataClassification = ToBeClassified;
        }
        field(16; "No. of Pages"; Integer)
        {
            Caption = 'No. of Pages';
            DataClassification = ToBeClassified;
        }
        field(17; "Edition No."; Integer)
        {
            Caption = 'Edition No.';
            DataClassification = ToBeClassified;
        }
        field(18; "Date of Publishing"; Date)
        {
            Caption = 'Date of Publishing';
            DataClassification = ToBeClassified;
        }
        field(25; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = ToBeClassified;
        }
        field(26; "Item Description"; Text[100])
        {
            Caption = 'Item Description';
            DataClassification = ToBeClassified;
        }
        field(30; "Recom. Sales Price incl. VAT"; Decimal)
        {
            Caption = 'Recom. Sales Price incl. VAT';
            DataClassification = ToBeClassified;
        }
        field(31; "Sales Price Currency Code"; Code[20])
        {
            Caption = 'Sales Price Currency Code';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, ISBN) { }


    }
    var
        OnDeleteErr: Label '%1 NOT ALLOWED', Comment = '%1 Bemerkung für Platzhalter';

    trigger OnInsert()
    var

    begin
        Created := Today;
    end;

    trigger OnModify()
    var

    begin
        "Last Date Modified" := Today;

    end;

    trigger OnRename()
    var

    begin
        "Last Date Modified" := Today;
    end;

    trigger OnDelete()
    var
        myMessage: Text;
    begin
        myMessage := 'NOT ALLOWED';
        Error(OnDeleteErr, TableCaption());
    end;

    procedure TestBlocked()
    begin
        TestField(Blocked, false);
    end;

}
