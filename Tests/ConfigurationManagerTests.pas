unit ConfigurationManagerTests;

interface

uses
  DUnitX.TestFramework,
  ConfigurationIntf;

type
  [TestFixture]
  TConfigurationManagerTests = class
  private
    FConfigurationManager: IConfigurationManager;

    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;
  public

    [Test]
    procedure TestConfigurationManagerCreate;

    [Test]
    [TestCase('TestNone', '0')]
    [TestCase('TestPerUserRoaming', '10')]
    [TestCase('TestPerUserRoamingAndLocal', '20')]
    procedure TestConfigurationManagerOpenExeConfig(const UserLevel: Integer);


//    // Test with TestCase Attribute to supply parameters.
//    [Test]
//    [TestCase('TestA','1,2')]
//    [TestCase('TestB','3,4')]
//    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation

uses
  ConfigurationManager;

procedure TConfigurationManagerTests.Setup;
begin

end;

procedure TConfigurationManagerTests.TearDown;
begin
end;

procedure TConfigurationManagerTests.TestConfigurationManagerCreate;
var
  ConfigurationManager: IConfigurationManager;
begin
  ConfigurationManager := TConfigurationManager.Create;
  Assert.IsTrue(Assigned(ConfigurationManager));
end;

procedure TConfigurationManagerTests.TestConfigurationManagerOpenExeConfig(const UserLevel: Integer);
var
  ConfigurationManager: IConfigurationManager;
  Config: IConfiguration;
begin
  ConfigurationManager := TConfigurationManager.Create;
  Config := ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel(UserLevel));
  Assert.IsTrue(Assigned(Config));
end;

//procedure TConfigurationTest.Test2(const AValue1 : Integer;const AValue2 : Integer);
//begin
//end;

initialization
  TDUnitX.RegisterTestFixture(TConfigurationManagerTests);

end.
