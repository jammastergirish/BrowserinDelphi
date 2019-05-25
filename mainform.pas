unit mainform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, OleCtrls, SHDocVw_TLB, StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TMain = class(TForm)
    StatusBar: TStatusBar;
    URLPanel: TPanel;
    URLLabel: TLabel;
    URLEdit: TEdit;
    GoButton: TButton;
    MainMenu: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    PrintSetup1: TMenuItem;
    Print1: TMenuItem;
    N2: TMenuItem;
    SaveAs1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Edit1: TMenuItem;
    Object1: TMenuItem;
    Links1: TMenuItem;
    N3: TMenuItem;
    GoTo1: TMenuItem;
    Replace1: TMenuItem;
    Find1: TMenuItem;
    N4: TMenuItem;
    PasteSpecial1: TMenuItem;
    Paste1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    N5: TMenuItem;
    Repeatcommand1: TMenuItem;
    Undo1: TMenuItem;
    Window1: TMenuItem;
    Show1: TMenuItem;
    Hide1: TMenuItem;
    N6: TMenuItem;
    ArrangeAll1: TMenuItem;
    Cascade1: TMenuItem;
    Tile1: TMenuItem;
    NewWindow1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    HowtoUseHelp1: TMenuItem;
    Tutorial1: TMenuItem;
    SearchforHelpOn1: TMenuItem;
    Keyboard1: TMenuItem;
    Procedures1: TMenuItem;
    Commands1: TMenuItem;
    Index1: TMenuItem;
    Contents1: TMenuItem;
    Timer1: TTimer;
    WebBrowser: TWebBrowser;
    Button1: TButton;
    ButtonsPanel: TPanel;
    SpeedButton1: TSpeedButton;
    ImageList: TImageList;
    SpeedButton2: TSpeedButton;
    procedure GoButtonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.DFM}

procedure TMain.GoButtonClick(Sender: TObject);
var
nullvar : olevariant;
begin
  WebBrowser.Navigate(URLEdit.Text,
                   NullVAr,NullVar,NullVar,NullVar);
                   WebBrowser.RegisterAsBrowser;
                   WebBrowser.CreateParented(1);

end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
 //Main.Caption := 'Browser - ' + WebBrowser.oleobject.document.Title;
 WebBrowser.Width := Main.ClientWidth - (28 * 2);
 WebBrowser.Height := ((Main.ClientHeight - 49 - 19) - (100)) + 20;
 WebBrowser.Top := 100;
end;

procedure TMain.Button1Click(Sender: TObject);
begin
 Main.Caption := WebBrowser.OleObject.Document.Title;
end;

procedure TMain.SpeedButton1Click(Sender: TObject);
begin
 WebBrowser.GoBack;
end;

procedure TMain.SpeedButton2Click(Sender: TObject);
begin
 WebBrowser.GoForward;
end;

end.
