program darkWeiss; //edited by The Harbinger -- darkWeiss version

{$R 'manifest.res' 'manifest.rc'}

uses
  Forms,
  Main in 'Main.pas' {frmMain},
  Common in 'Common.pas',
  Path in 'Path.pas',
  Login in 'Login.pas',
  CharaSel in 'CharaSel.pas',
  Game in 'Game.pas',
  Database in 'Database.pas',
  Script in 'Script.pas',
  List32 in 'List32.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'darkWeiss';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
