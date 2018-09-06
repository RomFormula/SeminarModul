table 123456700 "CSD Seminar Setup"
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar Setup';

    fields
    {
        field(10;"Primary Key";Code[10])
        {
            Caption = ' Primary Key';
        }
        field(20;"Seminar Nos.";code[20])
        {
            caption = 'Seminar Registration Nos.';
            TableRelation = "No. series";
        }
        field(30;"Seminar Registration Nos.";code[20])
        {
            Caption = 'Seminar Registration Nos';
            TableRelation = "No. series";
        }
        field(40;"Posted Seminar Reg. Nos.";code[20])
        {
            Caption = 'Posted Seminar Reg. Nos';
            TableRelation = "No. series";
        }
    }
    

    keys
    {
        key(PK;"Primary Key")
        {
            Clustered = true;
        }
    }
}