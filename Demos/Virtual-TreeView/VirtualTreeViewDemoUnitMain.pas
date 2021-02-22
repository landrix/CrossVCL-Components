unit VirtualTreeViewDemoUnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VirtualTrees;

type
  TVirtualTreeviewDemoForm = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    VirtualStringTree1: TVirtualStringTree;
    procedure VirtualStringTree1GetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
      TextType: TVSTTextType; var CellText: string);
  end;

var
  VirtualTreeviewDemoForm: TVirtualTreeviewDemoForm;

implementation

{$R *.dfm}

procedure TVirtualTreeviewDemoForm.VirtualStringTree1GetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType; var CellText: string);
begin
  Celltext := 'Test';
end;

procedure TVirtualTreeviewDemoForm.FormCreate(Sender: TObject);
begin
  VirtualStringTree1 := TVirtualStringTree.Create(Self);

  VirtualStringTree1.Name := 'VirtualStringTree1';
  VirtualStringTree1.Parent := Self;
  VirtualStringTree1.Left := 272;
  VirtualStringTree1.Top := 144;
  VirtualStringTree1.Width := 601;
  VirtualStringTree1.Height := 313;
  VirtualStringTree1.RootNodeCount := 8;
  VirtualStringTree1.TabOrder := 0;
  VirtualStringTree1.OnGetText := VirtualStringTree1GetText;
  VirtualStringTree1.Header.Options := VirtualStringTree1.Header.Options + [hoVisible];
  with VirtualStringTree1.Header.Columns.Add do
  begin
    Position := 0;
    Text := 'Col 1';
  end;
  with VirtualStringTree1.Header.Columns.Add do
  begin
    Position := 1;
    Text := 'Col 2';
  end;
  with VirtualStringTree1.Header.Columns.Add do
  begin
    Position := 2;
    Text := 'Col 3';
  end;
end;

end.
