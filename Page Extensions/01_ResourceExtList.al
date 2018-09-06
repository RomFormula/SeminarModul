pageextension 123456701 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }
        addafter(type)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {

            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
    

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage();
    var
    begin
        filtergroup(3);
        Showtype := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(type) =format(type::Machine));
        filtergroup(0);
    end;
          
    var
        
        [InDataSet]
            ShowMaxField : Boolean;
        [InDataSet]
            Showtype : Boolean;
}