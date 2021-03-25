pageextension 50101 "BSB Customer Card" extends "Customer Card"

{
    layout
    {

        addafter(General)

        {
            group("BSB Bookstore")
            {
                Caption = 'BookStore';

                field("BSB Favorite Book No."; Rec."BSB Favorite Book No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BSB Favorite Book No. field';
                    Importance = Additional;

                }
                field("BSB Favorite Book Description"; Rec."BSB Favorite Book Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the BSB Favorite Book Description field';
                }
            }
        }
        addafter(Control149)
        {

            part(Control1491; "BSB Book Factbox")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "No." = FIELD("BSB Favorite Book No.");
                //Visible = NOT IsOfficeAddin;
            }

        }
    }
}
