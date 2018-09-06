pageextension 123456700 "CSD ResourceCardExt" extends "Resource Card"
// CSD1.00 - 2018-02-01 - D. E. Veloper
{
    layout
    {
        addlast (General)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day";"CSD Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Visible = showmaxfield;
                field("CSD Maximum Participants";"CSD Maximum Participants")
                {

                }
            }
        }
    }
    [InDataSet]
    var ShowMaxField :Boolean;
        trigger OnAfterGetRecord();
        begin
            ShowMaxField := (Type = type::Machine);
        end;
        
}