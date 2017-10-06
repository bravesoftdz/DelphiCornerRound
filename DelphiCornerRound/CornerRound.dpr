library CornerRound;

{Author: Halil Han Badem
 Company: Bi'Coder
 Date: 17/06/2017 03:24
 Country: Turkey
      Note: Thank you so much, my family. }

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, psAPI;

{$R *.res}

Procedure KoseKivirma(Control: TWinControl);
var
 R: TRect;
 Rgn: HRGN;
begin
  with control do
  begin
    R := ClientRect;  /// R de�i�kenini ClientRect olarak tanm�l�yoruz.
    Rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20); //20 de�erli�i k�v�rma derecesini ayalar.
    Perform(EM_GETRECT, 0, lParam(@r)); ///Ta��nabilirlik ayarlan�yor.
    InflateRect(r, -4, -4);   /// kesilecek alanlar belirleniyor
    SetWindowRgn(Handle, RGN, True);  ///Windows penceresine gerekli komutlar� RGN de�i�keni ile g�nderiyoruz.
    Invalidate;
  end;
end;


Exports KoseKivirma;


begin
end.
