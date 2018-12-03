unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.OleCtrls, zkemkeeper_TLB, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    edtNetAddress: TLabeledEdit;
    btnConnect: TButton;
    edtNetPort: TLabeledEdit;
    CZKEM1: TCZKEM;
    Lv1: TListView;
    Lv2: TListView;
    Button4: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  DevID: integer;

implementation

{$R *.dfm}

procedure TForm1.btnConnectClick(Sender: TObject);
var
  ErrorCode, value: integer;
  c: boolean;
  s: widestring;
begin
  if btnConnect.Tag = 1 then
  begin
    CZKEM1.RefreshData(DevId);
    CZKEM1.EnableDevice(DevId, TRUE);
    CZKEM1.Disconnect;
    btnConnect.Tag := 0;
    btnConnect.Caption := 'Connect';
  end
  else
  begin
    devid := strtoint(edtNetPort.Text);
    c := CZKEM1.Connect_net(edtNetAddress.text, Devid);
    Devid := 1;
    if c then
    begin
      CZKEM1.GetProductCode(devid, s);
      ShowMessage('Device Connected.');
      CZKEM1.GetDeviceStatus(devid, 2, value);
      btnConnect.Tag := 1;
      btnConnect.Caption := 'Disconnect';
    end
    else
    begin
      CZKEM1.GetLastError(ErrorCode);
    end;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  dwVerifyMode,dwInOutMode,dwYear,dwMonth,dwDay,dwHour,dwMinute,
  dwSecond,dwWorkCode, Privilege: Integer;
  dwEnrollNumber, UName, Pass : WideString;
  Enabel: WordBool;
begin
  Lv1.Clear;
  Lv2.Clear;
  while CZKEM1.SSR_GetAllUserInfo(DevID,dwEnrollNumber, UName, Pass,
    Privilege, Enabel) do
  begin
    with Lv1.Items.Add do
    begin
      Caption := dwEnrollNumber;
      SubItems.Add(UName);
      SubItems.Add(Pass);
    end;
  end;
  while CZKEM1.SSR_GetGeneralLogData(DevID,dwEnrollNumber,dwVerifyMode,
    dwInOutMode,dwYear,dwMonth,dwDay,dwHour,dwMinute,dwSecond,dwWorkCode) do
  begin
  with Lv2.Items.Add do
    begin
      Caption := dwEnrollNumber;
      if dwInOutMode = 0 then
        SubItems.Add('Masuk')
      else
      if dwInOutMode = 1 then
        SubItems.Add('Pulang')
      else
        SubItems.Add('Gak Tau');
      SubItems.Add(IntToStr(dwDay)+'/'+IntToStr(dwMonth)+'/'+IntToStr(dwYear)+' '+
      IntToStr(dwHour)+':'+IntToStr(dwMinute));
    end;
  end;
end;

end.
