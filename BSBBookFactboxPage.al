page 50102 "BSB Book Factbox"
{
    SourceTable = "BSB Book";
    Caption = 'BSB Book Factbox';
    PageType = CardPart;

    layout
    {
        area(Content)
        {

            field("No."; Rec."No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the No. field';
                trigger OnDrillDown()
                var

                begin
                    page.Run(Page::"BSB Book Card", Rec);
                end;
            }
            field(Description; Rec.Description)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Description field';
            }
            field("Date of Publishing"; Rec."Date of Publishing")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Date of Publishing field';
            }
            field("No. of Pages"; Rec."No. of Pages")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the No. of Pages field';
            }
            field(Author; Rec.Author)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Author field';
            }
            field("Item No."; Rec."Item No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Item No. field';
                TableRelation = Item."No.";
            }
        }

    }
}