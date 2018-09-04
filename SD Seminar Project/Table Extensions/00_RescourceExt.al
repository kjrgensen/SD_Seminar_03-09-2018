tableextension 123456700 "CSD Rescource Extension" extends Resource 
//Table Extension for Rescource to Handle Courses
{
    fields
    {
        modify ("Profit %")
        {
            trigger OnBeforeValidate();
            begin
                rec.TestField("Unit Cost");
            end;
        }

      field(123456701;"CSD rescource Type";Option)
      {
          OptionMembers = "Internal","External";
          Caption ='Rescoure Type';
          OptionCaption = 'Internal/External';
      }
      field(123456702;"CSD Maximum Participants";Integer)
      {
          Caption = 'Maximum Participants';
      }

      field(123456703;"CSD Quantity Per Day";Decimal)
      {
          Caption = 'Quantity Per Day';
      }
    }
}