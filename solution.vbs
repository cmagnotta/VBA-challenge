Sub test()Dim stockTicker As StringDim yearOpen As DoubleDim yearEnd As DoubleDim yearChange As DoubleDim totalVolume As DoubleDim closingValue As Double'ticker is row 10 or J'yearly change is row 11 or k'percentage change is row 12 or l'total stock volume is row 13 or m'total stock volume is adding the values in row g, or 7yearOpen = 0yearEnd = 0yearChange = 0totalVolume = 0For i = 2 To Cells(Rows.Count, 1).End(xlUp).RowIf Cells(i, 1).Value <> Cells(i - 1, 1).Value Then    'MsgBox ("Card Type:  " + Cells(i, 1).Value)    totalVolume = Cells(Rows.Count, 13).End(xlUp).Row + 1   Cells(totalVolume, 10) = Cells(i, 1).ValueCells(totalVolume, 13) = Cells(i, 7).Value'open value should be copied in row 14 or N'oops ran once by i put the wrong column inCells(totalVolume, 14) = Cells(i, 3).ValueElseIf Cells(i, 1).Value <> Cells(i + 1, 1).Value ThenCells(totalVolume, 15) = Cells(i, 6).ValueElseCells(totalVolume, 13) = Cells(totalVolume, 13) + Cells(i, 7).ValueEnd IfNext i'now i am trying to use a code to divide column o/column n'that would be i,15/i,14 to column 12End Sub'Sub PercentChange()'Dim PercentChange As Double'Range("K2:K16").Formula = "=I10/J10"'End Sub