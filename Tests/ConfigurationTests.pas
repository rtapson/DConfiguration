unit ConfigurationTests;

interface

uses
  DUnitX.TestFramework,
  ConfigurationIntf;

type
  [TestFixture]
  TConfigurationTest = class
  private
    FConfigurationManager: IConfigurationManager;

    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;
  public


    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestConfigurationManagerCreate;


    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation

uses
  ConfigurationManager;

procedure TConfigurationTest.Setup;
begin

end;

procedure TConfigurationTest.TearDown;
begin
end;

procedure TConfigurationTest.TestConfigurationManagerCreate;
var
  ConfigurationManager: IConfigurationManager;
begin
  ConfigurationManager := TConfigurationManager.Create;
  Assert.IsTrue(Assigned(ConfigurationManager));
end;

procedure TConfigurationTest.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TConfigurationTest);

end.
