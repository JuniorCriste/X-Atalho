unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, shellapi;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Image4: TImage;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Image5: TImage;
    Image6: TImage;
    Label4: TLabel;
    Image7: TImage;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    label12: TLabel;
    label13: TLabel;
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure label13Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  
implementation

{$R *.dfm}

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
image2.Proportional:=true;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 cursor:=crsizeall;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 cursor:=crdefault;
image2.Proportional:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);

var
region: hrgn;
begin
application.Title:='Xô Atalho';
region:=createroundrectrgn(0,0,width,height,10,10);
setwindowrgn(handle,region,true);
label1.Top:=image3.Top;
image4.Left:=image3.Left;
image6.Left:=image3.Left;
label2.Left:=label1.Left;
image7.Left:= image6.Left;
image7.Top:=image6.Top;
label9.Top:=label4.Top;
label9.Left:=label4.Left;
end;


procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  const
  sc_dragmove=$F012;
  begin
 if button=mbleft then

 begin
 releasecapture;
form1.Perform(wm_syscommand,sc_dragmove,0);
end;
 end;
procedure TForm1.Image2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
winexec(pchar('cmd /k attrib -h -r -s /s /d C:\*.*'),sw_normal);

end;

procedure TForm1.Label2Click(Sender: TObject);
begin
label3.Visible:=true;
edit1.Visible:=true;

image5.Visible:=true;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
label3.Visible:=true;
edit1.Visible:=true;
image5.Visible:=true;

end;

procedure TForm1.Image5Click(Sender: TObject);
var
unidade: string;
begin
unidade:= edit1.Text;

winexec(pchar( 'cmd /k attrib -h -r -s /s /d '+ unidade+'\*.*'),sw_normal);

end;

procedure TForm1.Image3Click(Sender: TObject);
begin
winexec(pchar('cmd /k attrib -h -r -s /s /d C:\*.*'),sw_normal);

end;

procedure TForm1.Image6Click(Sender: TObject);
begin
label1.visible:=false;
label2.visible:=false;
label3.visible:=false;
edit1.visible:=false;
image3.visible:=false;
image4.visible:=false;
image5.visible:=false;
label4.visible:=false;
image6.visible:=false;

image7.Visible:=true;
label9.Visible:=true;

label10.visible:=true;
label11.visible:=true;
label12.visible:=true;
label13.visible:=true;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin

label1.visible:=false;
label2.visible:=false;
label3.visible:=false;
edit1.visible:=false;
image3.visible:=false;
image4.visible:=false;
image5.visible:=false;
label4.visible:=false;
image6.visible:=false;

image7.Visible:=true;
label9.Visible:=true;

 
label10.visible:=true;
label11.visible:=true;
label12.visible:=true;
label13.visible:=true;
end;

procedure TForm1.Image7Click(Sender: TObject);
begin

label1.visible:=true;
label2.visible:=true;
image4.visible:=true;
image3.visible:=true;
label4.visible:=true;
image6.visible:=true;
image7.Visible:=false;
label9.Visible:=false; 
label10.visible:=false;
label11.visible:=false;
label12.visible:=false;
label13.visible:=false;

end;

procedure TForm1.Label9Click(Sender: TObject);
begin

label1.visible:=true;
label2.visible:=true;
image4.visible:=true;
image3.visible:=true;
label4.visible:=true;
image6.visible:=true;

image7.Visible:=false;
label9.Visible:=false;

label10.visible:=false;
label11.visible:=false;
label12.visible:=false;
label13.visible:=false;
end;

procedure TForm1.label13Click(Sender: TObject);
begin

shellexecute(0,nil,pchar('http://www.informaticode.blogspot.com.br/p/blog-page_20.html'),nil,nil,0);

end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
 var
unidade: string;
begin

unidade:= edit1.Text;
if key =#13 then

winexec(pchar( 'cmd /k attrib -h -r -s /s /d '+ unidade+'\*.*'),sw_normal);

end;

end.
