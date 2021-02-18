program VirtualTreeViewDemo;

uses
  Vcl.Forms,
  VirtualTreeViewDemoUnitMain in 'VirtualTreeViewDemoUnitMain.pas' {VirtualTreeviewDemoForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TVirtualTreeviewDemoForm, VirtualTreeviewDemoForm);
  Application.Run;
end.
