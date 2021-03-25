tableextension 50100 "BSB Customer" extends Customer
{
    fields
    {
        field(50100; "BSB Favorite Book No."; Code[20])
        {
            Caption = 'BSB Favorite Book No.';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var

            begin
                if ("BSB Favorite Book No." <> xRec."BSB Favorite Book No.") and
                   ("BSB Favorite Book No." <> '')
               then begin
                    BSBBook.Get("BSB Favorite Book No.");
                    BSBBook.TestBlocked();
                end;

            end;
        }
        field(50101; "BSB Favorite Book Description"; Text[100])
        {
            Caption = 'BSB FavoriteBookDescription';
            //DataClassification = ToBeClassified;
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("BSB Book".Description where("No." = field("BSB Favorite Book No.")));
        }
    }
    var
        BookblockedErr: Label 'Book is blocked';
        BSBBook: Record "BSB Book";


}
