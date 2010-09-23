Attribute VB_Name = "vbCalcModule"
'VBCalc - made 10.02
'by eric farkas - cus1154 m 630-925

Public doOperation As Boolean 'flags whether or not an operation button has been pressed
Public isDecimal As Boolean 'flags if the number is a decimal
Public posNeg As Boolean 'flags if number is positive or negative
Public isFraction As Boolean 'flags if number is fraction or not
Public operator As String 'string representing the operation to be performed
Public newNumber As Boolean

