Sub test()Dim ws As WorksheetDim stockTicker As StringDim yearOpen As DoubleDim yearEnd As DoubleDim yearChange As DoubleDim totalVolume As DoubleDim ClosingValue As Double'ticker is row 10 or J'yearly change is row 11 or k'percentage change is row 12 or l'total stock volume is row 13 or m'total stock volume is adding the values in row g, or 7yearOpen = 0yearEnd = 0yearChange = 0totalVolume = 0 For Each ws In WorksheetsFor i = 2 To ws.Cells(Rows.Count, 1).End(xlUp).RowIf ws.Cells(i, 1).Value <> ws.Cells(i - 1, 1).Value Then    'MsgBox ("Card Type:  " + Cells(i, 1).Value)    totalVolume = ws.Cells(Rows.Count, 13).End(xlUp).Row + 1   ws.Cells(totalVolume, 10) = ws.Cells(i, 1).Valuews.Cells(totalVolume, 13) = ws.Cells(i, 7).Value'open value should be copied in row 14 or N'oops ran once by i put the wrong column inws.Cells(totalVolume, 14) = ws.Cells(i, 3).ValueElseIf ws.Cells(i, 1).Value <> ws.Cells(i + 1, 1).Value Thenws.Cells(totalVolume, 15) = ws.Cells(i, 6).ValueElsews.Cells(totalVolume, 13) = ws.Cells(totalVolume, 13) + ws.Cells(i, 7).ValueEnd IfNext iNext ws'now i am trying to use a code to divide column o/column n'that would be i,15/i,14 to column 12End SubSub PercentChange()Dim ws As WorksheetDim YearlyDifference As LongDim PercentChange As LongDim OpeningValue As LongDim ClosingValue As LongFor Each ws In WorksheetsFor i = 2 To ws.Cells(Rows.Count, 1).End(xlUp).RowYearlyDifference = ws.Cells(i, 11)PercentChange = ws.Cells(i, 12)OpeningValue = ws.Cells(i, 14)ClosingValue = ws.Cells(i, 15)ws.Cells(i, 11) = ws.Cells(i, 14).Value - ws.Cells(i, 15).Valuews.Cells(i, 12) = ws.Cells(i, 11).Value / ws.Cells(i, 14).ValueIf ws.Cells(i, 11).Value > 0 Thenws.Cells(i, 12).Interior.ColorIndex = 4ElseIf ws.Cells(i, 11).Value < 0 Thenws.Cells(i, 12).Interior.ColorIndex = 3End IfNext iNext wsEnd Sub'column k or 11 = n- o'column 12 = column 11/column 14'or column 11 = column 14-15'percentchange is'PercentChange = Cells(i, 14).Value / Cells(i, 15).Value'PercentChange = Cells(i, 12).Value'i want to divide column 14/15 in column 12'oops my math is bad. tried to divide the wrong values