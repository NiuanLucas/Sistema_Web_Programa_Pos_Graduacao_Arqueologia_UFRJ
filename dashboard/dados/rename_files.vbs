Set objFso = CreateObject("Scripting.FileSystemObject")
Set Folder = objFSO.GetFolder("C:\xampp\htdocs\localhost\ppgarq-museu\dashboard\dados")

For Each File In Folder.Files
    sNewFile = File.Name
    sNewFile = Replace(sNewFile,"usuarios","usuarios")
    if (sNewFile<>File.Name) then 
        File.Move(File.ParentFolder+"\"+sNewFile)
    end if

Next