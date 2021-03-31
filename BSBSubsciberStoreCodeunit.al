codeunit 50100 "BSB Subsciber Store"
{
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    local procedure FavoriteBookHintCustomerOnAfterInsert(var Rec: Record Customer)
    begin
        if rec."BSB Favorite Book No." = '' then
            Message(FavoriteBookHintMsg, rec.FieldCaption("BSB Favorite Book No."), rec.TableCaption(), rec."No.");
    end;

    var
        FavoriteBookHintMsg: Label 'Do not forget to enter %1 in %2 %3', Comment = '"DEU="Vergessen Sie nicht %1 in %2 %3 einzutragen';
}