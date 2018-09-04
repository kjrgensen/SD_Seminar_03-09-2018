pageextension 123456743 "Item" extends "Item Card"
{


    actions(GetDatPicture)
 {
    addlast(Approval)
  {
    action(DownloadPicture)
    {
      
      CaptionML = ENU='Download Picture';
      Image = Picture;
           
        trigger OnAction();
        var TempBlob : Record   TempBlob temporary;
        InStr: Instream;
        begin
            DownloadPicture('http://vjeko.com/demo/bicycle.jpg', TempBlob);
            TempBlob.Blob.CreateInStream(inStr);
            rec.Picture.ImportStream(Instr, 'Default image');
            CurrPage.Update(true);
        end;
    }
  } 

procedure DownloadPicture(Url: Text;var TempBlob : Record TempBlob temporary);
    var
      Client : HttpClient;
      Reponse: HttpResponseMessage;
      InStr: Instream;
      OutStr: OutStream;
    begin
     Client.Get(url, Response);
     Response.Content.ReadAs(Instr);
     TempBlob.Blob.CrateOutStream(outStr);
     CopyStream(OutStr,InStr);    
    end;
 }
}

