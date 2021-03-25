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
    }
}
