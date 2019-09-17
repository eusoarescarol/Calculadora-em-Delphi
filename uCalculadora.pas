unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, StrUtils;



type
  TForm1 = class(TForm)
    Visor: TEdit;
    Btn1: TButton;
    Btn2: TButton;
    Btn3: TButton;
    Btn4: TButton;
    Btn5: TButton;
    Btn6: TButton;
    Btn7: TButton;
    Btn8: TButton;
    Btn9: TButton;
    Btn0: TButton;
    BtnPonto: TButton;
    BtnMultiplicar: TButton;
    BtnSubtrair: TButton;
    BtnSomar: TButton;
    BtnLimpar: TButton;
    BtnDividir: TButton;
    BtnCalcular: TButton;
    procedure BtnSomarClick(Sender: TObject);
    procedure BtnSubtrairClick(Sender: TObject);
    procedure BtnMultiplicarClick(Sender: TObject);
    procedure BtnDividirClick(Sender: TObject);
    procedure BtnCalcularClick(Sender: TObject);
    procedure TecladoClick(Sender: TObject);
    procedure BtnPontoClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);


  private
    function FDividir(num1, num2 : real) : real;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Resultado: real;
  num1, num2: real;
  Operacao: Char;
  Igual: boolean;

implementation
 {$r *.dfm}

 procedure TForm1.TecladoClick(Sender: TObject);
 begin
   visor.Text:= visor.Text + TButton(sender).Caption;
   if (Igual = true) then
 begin
  visor.Clear;
  Igual:= false;
  end;

 end;

procedure TForm1.BtnDividirClick(Sender: TObject);
begin

  num1:= StrToFloat(Visor.Text);
  Operacao:= '/';
  Visor.Clear;

end;
procedure TForm1.BtnLimparClick(Sender: TObject);
begin
  visor.Clear;
end;

procedure TForm1.BtnCalcularClick(Sender: TObject);
// cria uma variavel para receber o resultado
var
  Resultado: real;

begin
  num2:= StrToFloat(Visor.Text);
  case Operacao of
  '+' : Resultado:= num1+num2;
  '-' : Resultado:= num1-num2;
  '*' : Resultado:= num1*num2;
  // Chamo a fuñção dividir para tratar divisão por zero
  '/' : Resultado := FDividir(num1, num2);

  end;

  Visor.Text := FloatToStr(Resultado);
  Igual:= true;


end;

procedure TForm1.BtnMultiplicarClick(Sender: TObject);
begin
  num1:= StrToFloat(Visor.Text);
  Operacao:= '*';
  Visor.Clear;
end;

procedure TForm1.BtnPontoClick(Sender: TObject);
begin
  if NOT ContainsText(Visor.Text, ',') then
      visor.Text:= visor.Text + ',';

end;

procedure TForm1.BtnSomarClick(Sender: TObject);
begin
  num1:= StrToFloat(Visor.Text);
  Operacao:= '+';
  Visor.Clear;
end;

procedure TForm1.BtnSubtrairClick(Sender: TObject);
begin
  num1:= StrToFloat(Visor.Text);
  Operacao:= '-';
  Visor.Clear;
end;
// on keypress do formulario

function TForm1.FDividir(num1, num2: real): real;
// função para a divisão
begin
  if (num1 = 0) then
  begin
  result:= 0
  end;
  if (num2 = 0) then
  begin
  result:= 0;
  ShowMessage('Impossível dividr por zero!');
  end

  else
  result:= num1 / num2;
end;


procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if chr(key) = '0' then
    Btn0.Click;
  if chr(key) = '1' then
    Btn1.Click;
  if chr(key) = '2' then
    Btn2.Click;
  if chr(key) = '3' then
    Btn3.Click;
  if chr(key) = '4' then
    Btn4.Click;
  if chr(key) = '5' then
    Btn5.Click;
  if chr(key) = '6' then
    Btn6.Click;
  if chr(key) = '7' then
    Btn7.Click;
  if chr(key) = '8' then
    Btn8.Click;
  if chr(key) = '9' then
    Btn9.Click;

  if Key = VK_NUMPAD1 then
    Btn1.Click;
  if Key = VK_NUMPAD2 then
    Btn2.click;
  if Key = VK_NUMPAD3 then
    Btn3.click;
  if Key = VK_NUMPAD4 then
    Btn4.click;
  if Key = VK_NUMPAD5 then
    Btn5.click;
  if Key = VK_NUMPAD6 then
    Btn6.click;
  if Key = VK_NUMPAD7 then
    Btn7.click;
  if Key = VK_NUMPAD8 then
    Btn8.click;
  if Key = VK_NUMPAD9 then
    Btn9.click;
  if Key = VK_NUMPAD0 then
    Btn0.click;

  if Key = VK_ADD then
    btnSomar.click;

  if Key = VK_SUBTRACT then
    BtnSubtrair.click;

  if Key = VK_MULTIPLY then
    btnmultiplicar.click;

  if Key = VK_DIVIDE then
    btndividir.click;

  if Key = VK_RETURN then
    BtnCalcular.click;

  if Key = VK_DECIMAL then
    BtnPonto.Click;

  if Key = VK_DELETE then
    BtnLimpar.Click;
end;


procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key in[ #45] then

end;




end.









