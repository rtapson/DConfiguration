unit ConfigurationTests;

interface

uses
  DUnitX.TestFramework,
  ConfigurationIntf;

type
  [TestFixture]
  TConfigurationTests = class
  private
    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;
  public
    [Test]
    procedure TestConfigurationCreate;

  end;

implementation

uses
  Configuration;

{ TConfigurationTests }

procedure TConfigurationTests.Setup;
begin

end;

procedure TConfigurationTests.TearDown;
begin

end;

procedure TConfigurationTests.TestConfigurationCreate;
var
  Configuration: IConfiguration;
begin

end;

initialization
  TDUnitX.RegisterTestFixture(TConfigurationTests);


end.
