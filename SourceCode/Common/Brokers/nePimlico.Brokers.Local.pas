unit nePimlico.Brokers.Local;

interface

uses
  nePimlico.Brokers.Base, nePimlico.mService.Types;

type
  TPimlicoBrokerLocal = class (TPimlicoBrokerBase)
  protected
    procedure request(const aService: ImService; const aParameters: string);
      override;
  end;

implementation

{ TPimlicoBrokerLocal }

procedure TPimlicoBrokerLocal.request(const aService: ImService;
  const aParameters: string);
begin
  inherited;
  if aService.&Type = stLocal then
  begin
    aService.invoke(aParameters);
  end
  else
  begin

  end;
end;

end.
