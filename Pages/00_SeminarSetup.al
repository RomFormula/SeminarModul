page 123456700 "CSD Seminar Setup"
{
    PageType = Card;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = true;
    DeleteAllowed = true;
    UsageCategory = Administration;


    layout
    {
        area(content)
        {
            group(Numbering)
            {
                field("Seminaar Nos.";"Seminar Nos.")
                {
                    
                }
                field("Seminar Registration Nos.";"Seminar Registration Nos.")
                {
                    
                }
                field("Posted Seminar Reg. Nos.";"Posted Seminar Reg. Nos.")
                {
                    
                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        if not Get then begin
            Init;
            Insert;
        end;
    end;
}    