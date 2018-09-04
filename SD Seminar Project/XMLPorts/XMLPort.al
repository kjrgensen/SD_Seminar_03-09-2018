xmlport 123456700 MyXmlport
{
    Caption='XML Port';
    Direction=Export;

    schema
    {
        textelement(Root)
        {
            tableelement(Customer;Customer )
            {
                fieldattribute(No;Customer."No.")
                {
                }
                fieldattribute(Name;Customer.Name)
                {
                }
                fieldattribute(City;Customer.City)
                {
                }
                fieldattribute(BalanceLCY;Customer."Balance (LCY)")
                {
                }
            }
        }
    }

    
}