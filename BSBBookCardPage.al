page 50100 "BSB Book Card"
{

    Caption = 'BSB Book Card';
    PageType = Card;
    SourceTable = "BSB Book";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field';

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field';
                }
                field("Search Description"; Rec."Search Description")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                    ToolTip = 'Specifies the value of the Search Description field';
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Blocked field';
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                    ToolTip = 'Specifies the value of the Author field';
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                    ToolTip = 'Specifies the value of the Type field';
                }
                field(ISBN; Rec.ISBN)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ISBN field';
                }
            }
            group(Invoicing)
            {

                field("Author Provision %"; Rec."Author Provision %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Author Provision % field';
                }
            }
            group(Publishing)
            {

                field("Edition No."; Rec."Edition No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Edition No. field';
                }
                field("No. of Pages"; Rec."No. of Pages")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. of Pages field';
                }
                field("Date of Publishing"; Rec."Date of Publishing")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Publishing field';
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item No. field';
                }
                field("Item Description"; Rec."Item Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Description field';
                }
            }

        }
        area(FactBoxes)
        {
            systempart(Links; Links) { ApplicationArea = All; }
            systempart(Notes; Notes) { ApplicationArea = All; }
        }



    }

}