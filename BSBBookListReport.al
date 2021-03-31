report 50100 "BSB Book-List"
{
    Caption = 'Book-List';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = 'BSBBookList.rdlc';

    dataset
    {
        dataitem(SigleRowData; Integer)
        {
            DataItemTableView = sorting(Number) where(Number = const(1));
            column(COMPANYNAME; CompanyProperty.DisplayName()) { }
            column(ShowTheNumberOfPages; ShowNumberOfPages) { }

        }
        dataitem("BSB Book"; "BSB Book")
        {
            RequestFilterFields = "No.", Author;

            column(No_BSBook; "No.") { IncludeCaption = true; }
            column(Description_BSBBook; Description) { IncludeCaption = true; }
            column(Author_BSBBook; Author) { IncludeCaption = true; }
            column(NoofPages_BSBBook; "No. of Pages") { IncludeCaption = true; }
        }
    }
    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(ShowTheNumberOfPages; ShowNumberOfPages)
                    {
                        Caption = 'ShopNoOfPages';
                        ApplicationArea = All;
                        ToolTip = 'Specifies the value of the ShowNumberOfPages field';

                    }
                }
            }

        }
    }
    labels
    {
        ReportTitel = 'Book - List', Comment = '"DEU"=Buch - Liste';
        ReportCaption = 'Page {0] of {1}', Comment = '"DEU"=Seite {0} von {1}';

    }

    var
        ShowNumberOfPages: Boolean;

}