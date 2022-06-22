page 50102 "Function Test Page"
{
    Caption = 'Function Test Page';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group("FirstTask")
            {
                field(Name; InputText)
                {
                    Caption = 'Input Text';
                    ApplicationArea = All;

                }
            }
            group("FourthTask")
            {
                field(Name1; InputText1)
                {
                    Caption = 'Input fraze';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                Caption = 'Reverse Input';
                ApplicationArea = All;

                trigger OnAction()
                var
                    LearningFunction: Codeunit "TestFunction2";
                begin
                    LearningFunction.ReverseInput(InputText);
                end;
            }
            action("Min and max")
            {
                Caption = 'Min and max';
                ApplicationArea = All;

                trigger OnAction()
                var
                    LearningFunction: Codeunit "TestFunction2";
                begin
                    LearningFunction.MinMaxFunction();
                end;
            }
            action(RepeatingNumbers)
            {
                Caption = 'Numbers which repeats';
                ApplicationArea = All;

                trigger OnAction()
                var
                    LearningFunction: Codeunit "TestFunction2";
                begin
                    LearningFunction.RepeatingNumbers();
                end;
            }
            action("Consonant and vowel")
            {
                Caption = 'Consonant and vowel in text';
                ApplicationArea = All;

                trigger OnAction()
                var
                    LearningFunction: Codeunit "TestFunction2";
                begin
                    LearningFunction.CountLetters(InputText1);
                end;
            }
        }
    }

    var
        myInt: Integer;
        InputText: Text;
        InputText1: Text;
}
