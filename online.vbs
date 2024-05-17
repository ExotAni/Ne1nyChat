On Error Resume Next
Set FSO = CreateObject("Scripting.FileSystemObject")
Set TextStream = FSO.OpenTextFile(WScript.Arguments.Item(0), 8)
x=1
Do While x<>10
    WScript.Sleep 9999999
Loop
TextStream.Close