unit zkemkeeper_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 01/12/2018 11:08:32 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Windows\SysWOW64\zkemkeeper.dll (1)
// LIBID: {FE9DED34-E159-408E-8490-B720A5E632C7}
// LCID: 0
// Helpfile: 
// HelpString: ZKEMKeeper 6.0 Control
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleCtrls, Vcl.OleServer, Winapi.ActiveX;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  zkemkeeperMajorVersion = 1;
  zkemkeeperMinorVersion = 0;

  LIBID_zkemkeeper: TGUID = '{FE9DED34-E159-408E-8490-B720A5E632C7}';

  DIID__IZKEMEvents: TGUID = '{CF83B580-5D32-4C65-B44E-BEDC750CDFA8}';
  IID_IZKEM: TGUID = '{102F4206-E43D-4FC9-BAB0-331CFFE4D25B}';
  CLASS_CZKEM: TGUID = '{00853A19-BD51-419B-9269-2DABE57EB61F}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _IZKEMEvents = dispinterface;
  IZKEM = interface;
  IZKEMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CZKEM = IZKEM;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PShortint1 = ^Shortint; {*}
  PInteger1 = ^Integer; {*}
  PByte1 = ^Byte; {*}


// *********************************************************************//
// DispIntf:  _IZKEMEvents
// Flags:     (4096) Dispatchable
// GUID:      {CF83B580-5D32-4C65-B44E-BEDC750CDFA8}
// *********************************************************************//
  _IZKEMEvents = dispinterface
    ['{CF83B580-5D32-4C65-B44E-BEDC750CDFA8}']
    procedure OnAttTransaction(EnrollNumber: Integer; IsInValid: Integer; AttState: Integer; 
                               VerifyMethod: Integer; Year: Integer; Month: Integer; Day: Integer; 
                               Hour: Integer; Minute: Integer; Second: Integer); dispid 1;
    procedure OnKeyPress(Key: Integer); dispid 2;
    procedure OnEnrollFinger(EnrollNumber: Integer; FingerIndex: Integer; ActionResult: Integer; 
                             TemplateLength: Integer); dispid 3;
    procedure OnNewUser(EnrollNumber: Integer); dispid 4;
    procedure OnEMData(DataType: Integer; DataLen: Integer; var DataBuffer: Shortint); dispid 5;
    procedure OnConnected; dispid 6;
    procedure OnDisConnected; dispid 7;
    procedure OnFinger; dispid 8;
    function OnVerify(UserID: Integer): HResult; dispid 9;
    function OnFingerFeature(Score: Integer): HResult; dispid 10;
    function OnHIDNum(CardNumber: Integer): HResult; dispid 11;
    procedure OnDoor(EventType: Integer); dispid 12;
    procedure OnAlarm(AlarmType: Integer; EnrollNumber: Integer; Verified: Integer); dispid 13;
    function OnWriteCard(EnrollNumber: Integer; ActionResult: Integer; Length: Integer): HResult; dispid 14;
    function OnEmptyCard(ActionResult: Integer): HResult; dispid 15;
    function OnDeleteTemplate(EnrollNumber: Integer; FingerIndex: Integer): HResult; dispid 16;
    procedure OnAttTransactionEx(const EnrollNumber: WideString; IsInValid: Integer; 
                                 AttState: Integer; VerifyMethod: Integer; Year: Integer; 
                                 Month: Integer; Day: Integer; Hour: Integer; Minute: Integer; 
                                 Second: Integer; WorkCode: Integer); dispid 17;
    procedure OnEnrollFingerEx(const EnrollNumber: WideString; FingerIndex: Integer; 
                               ActionResult: Integer; TemplateLength: Integer); dispid 18;
    procedure OnGeneralEvent(const DataStr: WideString); dispid 19;
    procedure OnAttTransactionEx_New(const EnrollNumber: WideString; IsInValid: Integer; 
                                     AttState: Integer; VerifyMethod: Integer; Year: Integer; 
                                     Month: Integer; Day: Integer; Hour: Integer; Minute: Integer; 
                                     Second: Integer; const WorkCode: WideString); dispid 20;
  end;

// *********************************************************************//
// Interface: IZKEM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {102F4206-E43D-4FC9-BAB0-331CFFE4D25B}
// *********************************************************************//
  IZKEM = interface(IDispatch)
    ['{102F4206-E43D-4FC9-BAB0-331CFFE4D25B}']
    function Get_ReadMark: WordBool; safecall;
    procedure Set_ReadMark(pVal: WordBool); safecall;
    function Get_CommPort: Integer; safecall;
    procedure Set_CommPort(pVal: Integer); safecall;
    function ClearAdministrators(dwMachineNumber: Integer): WordBool; safecall;
    function DeleteEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer): WordBool; safecall;
    function ReadSuperLogData(dwMachineNumber: Integer): WordBool; safecall;
    function ReadAllSLogData(dwMachineNumber: Integer): WordBool; safecall;
    function ReadGeneralLogData(dwMachineNumber: Integer): WordBool; safecall;
    function ReadAllGLogData(dwMachineNumber: Integer): WordBool; safecall;
    function EnableUser(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                        dwEMachineNumber: Integer; dwBackupNumber: Integer; bFlag: WordBool): WordBool; safecall;
    function EnableDevice(dwMachineNumber: Integer; bFlag: WordBool): WordBool; safecall;
    function GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool; safecall;
    function GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool; safecall;
    function SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool; safecall;
    function SetDeviceTime(dwMachineNumber: Integer): WordBool; safecall;
    procedure PowerOnAllDevice; safecall;
    function PowerOffDevice(dwMachineNumber: Integer): WordBool; safecall;
    function ModifyPrivilege(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                             dwMachinePrivilege: Integer): WordBool; safecall;
    procedure GetLastError(var dwErrorCode: Integer); safecall;
    function GetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           var dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                           var dwPassWord: Integer): WordBool; safecall;
    function SetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                           dwPassWord: Integer): WordBool; safecall;
    function GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                           var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                           var dwSecond: Integer): WordBool; safecall;
    function GetGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                               var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                               var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMinute: Integer): WordBool; safecall;
    function GetSuperLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                             var dwSEnrollNumber: Integer; var Params4: Integer; 
                             var Params1: Integer; var Params2: Integer; 
                             var dwManipulation: Integer; var Params3: Integer; 
                             var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                             var dwHour: Integer; var dwMinute: Integer): WordBool; safecall;
    function GetAllSLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwSEnrollNumber: Integer; var Params4: Integer; 
                            var Params1: Integer; var Params2: Integer; 
                            var dwManipulation: Integer; var Params3: Integer; var dwYear: Integer; 
                            var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                            var dwMinute: Integer): WordBool; safecall;
    function GetAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                            var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                            var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                            var dwHour: Integer; var dwMinute: Integer): WordBool; safecall;
    procedure ConvertPassword(dwSrcPSW: Integer; var dwDestPSW: Integer; dwLength: Integer); safecall;
    function ReadAllUserID(dwMachineNumber: Integer): WordBool; safecall;
    function GetAllUserID(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                          var dwEMachineNumber: Integer; var dwBackupNumber: Integer; 
                          var dwMachinePrivilege: Integer; var dwEnable: Integer): WordBool; safecall;
    function GetSerialNumber(dwMachineNumber: Integer; out dwSerialNumber: WideString): WordBool; safecall;
    function ClearKeeperData(dwMachineNumber: Integer): WordBool; safecall;
    function GetBackupNumber(dwMachineNumber: Integer): Integer; safecall;
    function GetProductCode(dwMachineNumber: Integer; out lpszProductCode: WideString): WordBool; safecall;
    function GetFirmwareVersion(dwMachineNumber: Integer; var strVersion: WideString): WordBool; safecall;
    function GetSDKVersion(var strVersion: WideString): WordBool; safecall;
    function ClearGLog(dwMachineNumber: Integer): WordBool; safecall;
    function GetFPTempLength(var dwEnrollData: Byte): Integer; safecall;
    function Connect_Com(ComPort: Integer; MachineNumber: Integer; BaudRate: Integer): WordBool; safecall;
    function Connect_Net(const IPAdd: WideString; Port: Integer): WordBool; safecall;
    procedure Disconnect; safecall;
    function SetUserInfo(dwMachineNumber: Integer; dwEnrollNumber: Integer; const Name: WideString; 
                         const Password: WideString; Privilege: Integer; Enabled: WordBool): WordBool; safecall;
    function GetUserInfo(dwMachineNumber: Integer; dwEnrollNumber: Integer; var Name: WideString; 
                         var Password: WideString; var Privilege: Integer; var Enabled: WordBool): WordBool; safecall;
    function SetDeviceIP(dwMachineNumber: Integer; const IPAddr: WideString): WordBool; safecall;
    function GetDeviceIP(dwMachineNumber: Integer; var IPAddr: WideString): WordBool; safecall;
    function GetUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex: Integer; 
                        var TmpData: Byte; var TmpLength: Integer): WordBool; safecall;
    function SetUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex: Integer; 
                        var TmpData: Byte): WordBool; safecall;
    function GetAllUserInfo(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                            var Name: WideString; var Password: WideString; var Privilege: Integer; 
                            var Enabled: WordBool): WordBool; safecall;
    function DelUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex: Integer): WordBool; safecall;
    function RefreshData(dwMachineNumber: Integer): WordBool; safecall;
    function FPTempConvert(var TmpData1: Byte; var TmpData2: Byte; var Size: Integer): WordBool; safecall;
    function SetCommPassword(CommKey: Integer): WordBool; safecall;
    function GetUserGroup(dwMachineNumber: Integer; dwEnrollNumber: Integer; var UserGrp: Integer): WordBool; safecall;
    function SetUserGroup(dwMachineNumber: Integer; dwEnrollNumber: Integer; UserGrp: Integer): WordBool; safecall;
    function GetTZInfo(dwMachineNumber: Integer; TZIndex: Integer; var TZ: WideString): WordBool; safecall;
    function SetTZInfo(dwMachineNumber: Integer; TZIndex: Integer; const TZ: WideString): WordBool; safecall;
    function GetUnlockGroups(dwMachineNumber: Integer; var Grps: WideString): WordBool; safecall;
    function SetUnlockGroups(dwMachineNumber: Integer; const Grps: WideString): WordBool; safecall;
    function GetGroupTZs(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: Integer): WordBool; safecall;
    function SetGroupTZs(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: Integer): WordBool; safecall;
    function GetUserTZs(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: Integer): WordBool; safecall;
    function SetUserTZs(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: Integer): WordBool; safecall;
    function ACUnlock(dwMachineNumber: Integer; Delay: Integer): WordBool; safecall;
    function GetACFun(var ACFun: Integer): WordBool; safecall;
    function Get_ConvertBIG5: Integer; safecall;
    procedure Set_ConvertBIG5(pVal: Integer); safecall;
    function GetGeneralLogDataStr(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                  var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                                  var TimeStr: WideString): WordBool; safecall;
    function GetUserTmpStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwFingerIndex: Integer; var TmpData: WideString; var TmpLength: Integer): WordBool; safecall;
    function SetUserTmpStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwFingerIndex: Integer; const TmpData: WideString): WordBool; safecall;
    function GetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              var dwMachinePrivilege: Integer; var dwEnrollData: WideString; 
                              var dwPassWord: Integer): WordBool; safecall;
    function SetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              dwMachinePrivilege: Integer; const dwEnrollData: WideString; 
                              dwPassWord: Integer): WordBool; safecall;
    function GetGroupTZStr(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: WideString): WordBool; safecall;
    function SetGroupTZStr(dwMachineNumber: Integer; GroupIndex: Integer; const TZs: WideString): WordBool; safecall;
    function GetUserTZStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: WideString): WordBool; safecall;
    function SetUserTZStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; const TZs: WideString): WordBool; safecall;
    function FPTempConvertStr(const TmpData1: WideString; var TmpData2: WideString; 
                              var Size: Integer): WordBool; safecall;
    function GetFPTempLengthStr(const dwEnrollData: WideString): Integer; safecall;
    function Get_BASE64: Integer; safecall;
    procedure Set_BASE64(pVal: Integer); safecall;
    function Get_PIN2: LongWord; safecall;
    procedure Set_PIN2(pVal: LongWord); safecall;
    function Get_AccGroup: Integer; safecall;
    procedure Set_AccGroup(pVal: Integer); safecall;
    function Get_AccTimeZones(Index: Integer): Integer; safecall;
    procedure Set_AccTimeZones(Index: Integer; pVal: Integer); safecall;
    function GetUserInfoByPIN2(dwMachineNumber: Integer; var Name: WideString; 
                               var Password: WideString; var Privilege: Integer; 
                               var Enabled: WordBool): WordBool; safecall;
    function GetUserInfoByCard(dwMachineNumber: Integer; var Name: WideString; 
                               var Password: WideString; var Privilege: Integer; 
                               var Enabled: WordBool): WordBool; safecall;
    function Get_CardNumber(Index: Integer): Integer; safecall;
    procedure Set_CardNumber(Index: Integer; pVal: Integer); safecall;
    function CaptureImage(FullImage: WordBool; var Width: Integer; var Height: Integer; 
                          var Image: Byte; const ImageFile: WideString): WordBool; safecall;
    function UpdateFirmware(const FirmwareFile: WideString): WordBool; safecall;
    function StartEnroll(UserID: Integer; FingerID: Integer): WordBool; safecall;
    function StartVerify(UserID: Integer; FingerID: Integer): WordBool; safecall;
    function StartIdentify: WordBool; safecall;
    function CancelOperation: WordBool; safecall;
    function QueryState(var State: Integer): WordBool; safecall;
    function BackupData(const DataFile: WideString): WordBool; safecall;
    function RestoreData(const DataFile: WideString): WordBool; safecall;
    function WriteLCD(Row: Integer; Col: Integer; const Text: WideString): WordBool; safecall;
    function ClearLCD: WordBool; safecall;
    function Beep(DelayMS: Integer): WordBool; safecall;
    function PlayVoice(Position: Integer; Length: Integer): WordBool; safecall;
    function PlayVoiceByIndex(Index: Integer): WordBool; safecall;
    function EnableClock(Enabled: Integer): WordBool; safecall;
    function GetUserIDByPIN2(PIN2: Integer; var UserID: Integer): WordBool; safecall;
    function Get_PINWidth: Integer; safecall;
    function GetPIN2(UserID: Integer; var PIN2: Integer): WordBool; safecall;
    function FPTempConvertNew(var TmpData1: Byte; var TmpData2: Byte; var Size: Integer): WordBool; safecall;
    function FPTempConvertNewStr(const TmpData1: WideString; var TmpData2: WideString; 
                                 var Size: Integer): WordBool; safecall;
    function ReadAllTemplate(dwMachineNumber: Integer): WordBool; safecall;
    function DisableDeviceWithTimeOut(dwMachineNumber: Integer; TimeOutSec: Integer): WordBool; safecall;
    function SetDeviceTime2(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                            dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool; safecall;
    function ClearSLog(dwMachineNumber: Integer): WordBool; safecall;
    function RestartDevice(dwMachineNumber: Integer): WordBool; safecall;
    function GetDeviceMAC(dwMachineNumber: Integer; var sMAC: WideString): WordBool; safecall;
    function SetDeviceMAC(dwMachineNumber: Integer; const sMAC: WideString): WordBool; safecall;
    function GetWiegandFmt(dwMachineNumber: Integer; var sWiegandFmt: WideString): WordBool; safecall;
    function SetWiegandFmt(dwMachineNumber: Integer; const sWiegandFmt: WideString): WordBool; safecall;
    function ClearSMS(dwMachineNumber: Integer): WordBool; safecall;
    function GetSMS(dwMachineNumber: Integer; ID: Integer; var Tag: Integer; 
                    var ValidMinutes: Integer; var StartTime: WideString; var Content: WideString): WordBool; safecall;
    function SetSMS(dwMachineNumber: Integer; ID: Integer; Tag: Integer; ValidMinutes: Integer; 
                    const StartTime: WideString; const Content: WideString): WordBool; safecall;
    function DeleteSMS(dwMachineNumber: Integer; ID: Integer): WordBool; safecall;
    function SetUserSMS(dwMachineNumber: Integer; dwEnrollNumber: Integer; SMSID: Integer): WordBool; safecall;
    function DeleteUserSMS(dwMachineNumber: Integer; dwEnrollNumber: Integer; SMSID: Integer): WordBool; safecall;
    function GetCardFun(dwMachineNumber: Integer; var CardFun: Integer): WordBool; safecall;
    function ClearUserSMS(dwMachineNumber: Integer): WordBool; safecall;
    function Get_MachineNumber: Integer; safecall;
    procedure Set_MachineNumber(pVal: Integer); safecall;
    function SetDeviceCommPwd(dwMachineNumber: Integer; CommKey: Integer): WordBool; safecall;
    function GetDoorState(MachineNumber: Integer; var State: Integer): WordBool; safecall;
    function GetVendor(var strVendor: WideString): WordBool; safecall;
    function GetSensorSN(dwMachineNumber: Integer; var SensorSN: WideString): WordBool; safecall;
    function ReadCustData(dwMachineNumber: Integer; var CustData: WideString): WordBool; safecall;
    function WriteCustData(dwMachineNumber: Integer; const CustData: WideString): WordBool; safecall;
    function BeginBatchUpdate(dwMachineNumber: Integer; UpdateFlag: Integer): WordBool; safecall;
    function BatchUpdate(dwMachineNumber: Integer): WordBool; safecall;
    function ClearData(dwMachineNumber: Integer; DataFlag: Integer): WordBool; safecall;
    function GetDataFile(dwMachineNumber: Integer; DataFlag: Integer; const FileName: WideString): WordBool; safecall;
    function WriteCard(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex1: Integer; 
                       var TmpData1: Byte; dwFingerIndex2: Integer; var TmpData2: Byte; 
                       dwFingerIndex3: Integer; var TmpData3: Byte; dwFingerIndex4: Integer; 
                       var TmpData4: Byte): WordBool; safecall;
    function GetGeneralExtLogData(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                  var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                                  var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                  var dwHour: Integer; var dwMinute: Integer; 
                                  var dwSecond: Integer; var dwWorkCode: Integer; 
                                  var dwReserved: Integer): WordBool; safecall;
    function EmptyCard(dwMachineNumber: Integer): WordBool; safecall;
    function GetDeviceStrInfo(dwMachineNumber: Integer; dwInfo: Integer; out Value: WideString): WordBool; safecall;
    function GetSysOption(dwMachineNumber: Integer; const Option: WideString; out Value: WideString): WordBool; safecall;
    function SetUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer; VerifyStyle: Integer; 
                           var Reserved: Byte): WordBool; safecall;
    function GetUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           out VerifyStyle: Integer; out Reserved: Byte): WordBool; safecall;
    function DeleteUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer): WordBool; safecall;
    function SSR_GetGeneralLogData(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                   out dwVerifyMode: Integer; out dwInOutMode: Integer; 
                                   out dwYear: Integer; out dwMonth: Integer; out dwDay: Integer; 
                                   out dwHour: Integer; out dwMinute: Integer; 
                                   out dwSecond: Integer; var dwWorkCode: Integer): WordBool; safecall;
    function SSR_GetAllUserInfo(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                out Name: WideString; out Password: WideString; 
                                out Privilege: Integer; out Enabled: WordBool): WordBool; safecall;
    function SSR_GetUserInfo(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             out Name: WideString; out Password: WideString; 
                             out Privilege: Integer; out Enabled: WordBool): WordBool; safecall;
    function SSR_GetUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFingerIndex: Integer; out TmpData: Byte; out TmpLength: Integer): WordBool; safecall;
    function SSR_GetUserTmpStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer; out TmpData: WideString; 
                               out TmpLength: Integer): WordBool; safecall;
    function SSR_DeleteEnrollData(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                  dwBackupNumber: Integer): WordBool; safecall;
    function SSR_SetUserInfo(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             const Name: WideString; const Password: WideString; 
                             Privilege: Integer; Enabled: WordBool): WordBool; safecall;
    function SSR_SetUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFingerIndex: Integer; var TmpData: Byte): WordBool; safecall;
    function SSR_SetUserTmpStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer; const TmpData: WideString): WordBool; safecall;
    function SSR_DelUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFingerIndex: Integer): WordBool; safecall;
    function Get_STR_CardNumber(Index: Integer): WideString; safecall;
    procedure Set_STR_CardNumber(Index: Integer; const pVal: WideString); safecall;
    function SetWorkCode(WorkCodeID: Integer; AWorkCode: Integer): WordBool; safecall;
    function GetWorkCode(WorkCodeID: Integer; out AWorkCode: Integer): WordBool; safecall;
    function DeleteWorkCode(WorkCodeID: Integer): WordBool; safecall;
    function ClearWorkCode: WordBool; safecall;
    function ReadAttRule(dwMachineNumber: Integer): WordBool; safecall;
    function ReadDPTInfo(dwMachineNumber: Integer): WordBool; safecall;
    function SaveTheDataToFile(dwMachineNumber: Integer; const TheFilePath: WideString; 
                               FileFlag: Integer): WordBool; safecall;
    function ReadTurnInfo(dwMachineNumber: Integer): WordBool; safecall;
    function SSR_OutPutHTMLRep(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               const AttFile: WideString; const UserFile: WideString; 
                               const DeptFile: WideString; const TimeClassFile: WideString; 
                               const AttruleFile: WideString; BYear: Integer; BMonth: Integer; 
                               BDay: Integer; BHour: Integer; BMinute: Integer; BSecond: Integer; 
                               EYear: Integer; EMonth: Integer; EDay: Integer; EHour: Integer; 
                               EMinute: Integer; ESecond: Integer; const TempPath: WideString; 
                               const OutFileName: WideString; HTMLFlag: Integer; resv1: Integer; 
                               const resv2: WideString): WordBool; safecall;
    function ReadAOptions(const AOption: WideString; out AValue: WideString): WordBool; safecall;
    function ReadRTLog(dwMachineNumber: Integer): WordBool; safecall;
    function GetRTLog(dwMachineNumber: Integer): WordBool; safecall;
    function GetHIDEventCardNumAsStr(out strHIDEventCardNum: WideString): WordBool; safecall;
    function GetStrCardNumber(out ACardNumber: WideString): WordBool; safecall;
    function SetStrCardNumber(const ACardNumber: WideString): WordBool; safecall;
    function RegEvent(dwMachineNumber: Integer; EventMask: Integer): WordBool; safecall;
    function CancelBatchUpdate(dwMachineNumber: Integer): WordBool; safecall;
    function SetSysOption(dwMachineNumber: Integer; const Option: WideString; 
                          const Value: WideString): WordBool; safecall;
    function Connect_Modem(ComPort: Integer; MachineNumber: Integer; BaudRate: Integer; 
                           const Telephone: WideString): WordBool; safecall;
    function UseGroupTimeZone: WordBool; safecall;
    function SetHoliday(dwMachineNumber: Integer; const Holiday: WideString): WordBool; safecall;
    function GetHoliday(dwMachineNumber: Integer; var Holiday: WideString): WordBool; safecall;
    function SetDaylight(dwMachineNumber: Integer; Support: Integer; const BeginTime: WideString; 
                         const EndTime: WideString): WordBool; safecall;
    function GetDaylight(dwMachineNumber: Integer; var Support: Integer; var BeginTime: WideString; 
                         var EndTime: WideString): WordBool; safecall;
    function SSR_SetUnLockGroup(dwMachineNumber: Integer; CombNo: Integer; Group1: Integer; 
                                Group2: Integer; Group3: Integer; Group4: Integer; Group5: Integer): WordBool; safecall;
    function SSR_GetUnLockGroup(dwMachineNumber: Integer; CombNo: Integer; var Group1: Integer; 
                                var Group2: Integer; var Group3: Integer; var Group4: Integer; 
                                var Group5: Integer): WordBool; safecall;
    function SSR_SetGroupTZ(dwMachineNumber: Integer; GroupNo: Integer; Tz1: Integer; Tz2: Integer; 
                            Tz3: Integer; VaildHoliday: Integer; VerifyStyle: Integer): WordBool; safecall;
    function SSR_GetGroupTZ(dwMachineNumber: Integer; GroupNo: Integer; var Tz1: Integer; 
                            var Tz2: Integer; var Tz3: Integer; var VaildHoliday: Integer; 
                            var VerifyStyle: Integer): WordBool; safecall;
    function SSR_GetHoliday(dwMachineNumber: Integer; HolidayID: Integer; var BeginMonth: Integer; 
                            var BeginDay: Integer; var EndMonth: Integer; var EndDay: Integer; 
                            var TimeZoneID: Integer): WordBool; safecall;
    function SSR_SetHoliday(dwMachineNumber: Integer; HolidayID: Integer; BeginMonth: Integer; 
                            BeginDay: Integer; EndMonth: Integer; EndDay: Integer; 
                            TimeZoneID: Integer): WordBool; safecall;
    function GetPlatform(dwMachineNumber: Integer; var Platform: WideString): WordBool; safecall;
    function SSR_SetUserSMS(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            SMSID: Integer): WordBool; safecall;
    function SSR_DeleteUserSMS(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               SMSID: Integer): WordBool; safecall;
    function IsTFTMachine(dwMachineNumber: Integer): WordBool; safecall;
    function SSR_EnableUser(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            bFlag: WordBool): WordBool; safecall;
    function Get_SSRPin: Integer; safecall;
    function SendCMDMsg(dwMachineNumber: Integer; Param1: Integer; Param2: Integer): WordBool; safecall;
    function SendFile(dwMachineNumber: Integer; const FileName: WideString): WordBool; safecall;
    function SetLanguageByID(dwMachineNumber: Integer; LanguageID: Integer; 
                             const Language: WideString): WordBool; safecall;
    function ReadFile(dwMachineNumber: Integer; const FileName: WideString; 
                      const FilePath: WideString): WordBool; safecall;
    function SetLastCount(count: Integer): WordBool; safecall;
    function SetCustomizeAttState(dwMachineNumber: Integer; StateID: Integer; NewState: Integer): WordBool; safecall;
    function DelCustomizeAttState(dwMachineNumber: Integer; StateID: Integer): WordBool; safecall;
    function EnableCustomizeAttState(dwMachineNumber: Integer; StateID: Integer; Enable: Integer): WordBool; safecall;
    function SetCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer; 
                               const FileName: WideString): WordBool; safecall;
    function DelCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer): WordBool; safecall;
    function EnableCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer; Enable: Integer): WordBool; safecall;
    function StartEnrollEx(const UserID: WideString; FingerID: Integer; Flag: Integer): WordBool; safecall;
    function SSR_SetUserTmpExt(dwMachineNumber: Integer; IsDeleted: Integer; 
                               const dwEnrollNumber: WideString; dwFingerIndex: Integer; 
                               var TmpData: Byte): WordBool; safecall;
    function SSR_DelUserTmpExt(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer): WordBool; safecall;
    function SSR_DeleteEnrollDataExt(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                     dwBackupNumber: Integer): WordBool; safecall;
    function SSR_GetWorkCode(AWorkCode: Integer; out Name: WideString): WordBool; safecall;
    function SSR_SetWorkCode(AWorkCode: Integer; const Name: WideString): WordBool; safecall;
    function SSR_DeleteWorkCode(PIN: Integer): WordBool; safecall;
    function SSR_ClearWorkCode: WordBool; safecall;
    function SSR_GetSuperLogData(MachineNumber: Integer; out Number: Integer; 
                                 out Admin: WideString; out User: WideString; 
                                 out Manipulation: Integer; out Time: WideString; 
                                 out Params1: Integer; out Params2: Integer; out Params3: Integer): WordBool; safecall;
    function SSR_SetShortkey(ShortKeyID: Integer; ShortKeyFun: Integer; StateCode: Integer; 
                             const StateName: WideString; StateAutoChange: Integer; 
                             const StateAutoChangeTime: WideString): WordBool; safecall;
    function SSR_GetShortkey(ShortKeyID: Integer; var ShortKeyFun: Integer; var StateCode: Integer; 
                             var StateName: WideString; var AutoChange: Integer; 
                             var AutoChangeTime: WideString): WordBool; safecall;
    function Connect_USB(MachineNumber: Integer): WordBool; safecall;
    function GetSuperLogData2(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                              var dwSEnrollNumber: Integer; var Params4: Integer; 
                              var Params1: Integer; var Params2: Integer; 
                              var dwManipulation: Integer; var Params3: Integer; 
                              var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                              var dwHour: Integer; var dwMinute: Integer; var dwSecs: Integer): WordBool; safecall;
    function GetUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                         dwFaceIndex: Integer; var TmpData: Byte; var TmpLength: Integer): WordBool; safecall;
    function SetUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                         dwFaceIndex: Integer; var TmpData: Byte; TmpLength: Integer): WordBool; safecall;
    function DelUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                         dwFaceIndex: Integer): WordBool; safecall;
    function GetUserFaceStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFaceIndex: Integer; var TmpData: WideString; var TmpLength: Integer): WordBool; safecall;
    function SetUserFaceStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFaceIndex: Integer; const TmpData: WideString; TmpLength: Integer): WordBool; safecall;
    function GetUserTmpEx(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                          dwFingerIndex: Integer; out Flag: Integer; out TmpData: Byte; 
                          out TmpLength: Integer): WordBool; safecall;
    function GetUserTmpExStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             dwFingerIndex: Integer; out Flag: Integer; out TmpData: WideString; 
                             out TmpLength: Integer): WordBool; safecall;
    function SetUserTmpEx(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                          dwFingerIndex: Integer; Flag: Integer; var TmpData: Byte): WordBool; safecall;
    function SetUserTmpExStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             dwFingerIndex: Integer; Flag: Integer; const TmpData: WideString): WordBool; safecall;
    function MergeTemplate(var Templates: PByte1; FingerCount: Integer; var TemplateDest: Byte; 
                           var FingerSize: Integer): WordBool; safecall;
    function SplitTemplate(var Template: Byte; var Templates: PByte1; var FingerCount: Integer; 
                           var FingerSize: Integer): WordBool; safecall;
    function Get_PullMode: Integer; safecall;
    procedure Set_PullMode(pVal: Integer); safecall;
    function ReadUserAllTemplate(dwMachineNumber: Integer; const dwEnrollNumber: WideString): WordBool; safecall;
    function UpdateFile(const FileName: WideString): WordBool; safecall;
    function ReadLastestLogData(dwMachineNumber: Integer; NewLog: Integer; dwYear: Integer; 
                                dwMonth: Integer; dwDay: Integer; dwHour: Integer; 
                                dwMinute: Integer; dwSecond: Integer): WordBool; safecall;
    function SetOptionCommPwd(dwMachineNumber: Integer; const CommKey: WideString): WordBool; safecall;
    function ReadSuperLogDataEx(dwMachineNumber: Integer; dwYear_S: Integer; dwMonth_S: Integer; 
                                dwDay_S: Integer; dwHour_S: Integer; dwMinute_S: Integer; 
                                dwSecond_S: Integer; dwYear_E: Integer; dwMonth_E: Integer; 
                                dwDay_E: Integer; dwHour_E: Integer; dwMinute_E: Integer; 
                                dwSecond_E: Integer; dwLogIndex: Integer): WordBool; safecall;
    function GetSuperLogDataEx(dwMachineNumber: Integer; var EnrollNumber: WideString; 
                               var Params4: Integer; var Params1: Integer; var Params2: Integer; 
                               var dwManipulation: Integer; var Params3: Integer; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer): WordBool; safecall;
    function GetPhotoByName(dwMachineNumber: Integer; const PhotoName: WideString; 
                            out PhotoData: Byte; out PhotoLength: Integer): WordBool; safecall;
    function GetPhotoNamesByTime(dwMachineNumber: Integer; iFlag: Integer; const sTime: WideString; 
                                 const eTime: WideString; out AllPhotoName: WideString): WordBool; safecall;
    function ClearPhotoByTime(dwMachineNumber: Integer; iFlag: Integer; const sTime: WideString; 
                              const eTime: WideString): WordBool; safecall;
    function GetPhotoCount(dwMachineNumber: Integer; out count: Integer; iFlag: Integer): WordBool; safecall;
    function ClearDataEx(dwMachineNumber: Integer; const TableName: WideString): WordBool; safecall;
    function GetDataFileEx(dwMachineNumber: Integer; const SourceFileName: WideString; 
                           const DestFileName: WideString): WordBool; safecall;
    function SSR_SetDeviceData(dwMachineNumber: Integer; const TableName: WideString; 
                               const Datas: WideString; const Options: WideString): WordBool; safecall;
    function SSR_GetDeviceData(dwMachineNumber: Integer; out Buffer: WideString; 
                               BufferSize: Integer; const TableName: WideString; 
                               const FiledNames: WideString; const Filter: WideString; 
                               const Options: WideString): WordBool; safecall;
    function UpdateLogo(dwMachineNumber: Integer; const FileName: WideString): WordBool; safecall;
    function SetCommuTimeOut(timeOut: Integer): WordBool; safecall;
    function SendFileByType(dwMachineNumber: Integer; const FileName: WideString; iType: Integer): WordBool; safecall;
    function SetCommProType(proType: Integer): WordBool; safecall;
    function SetCompatOldFirmware(nCompatOkdFirmware: Integer): WordBool; safecall;
    function Connect_P4P(const uid: WideString): WordBool; safecall;
    function SetDeviceTableData(dwMachineNumber: Integer; const TableName: WideString; 
                                const Datas: WideString; const Options: WideString; 
                                out count: Integer): WordBool; safecall;
    procedure GetConnectStatus(var dwErrorCode: Integer); safecall;
    function Get_MaxP4PConnect: Integer; safecall;
    function SetManufacturerData(dwMachineNumber: Integer; const Name: WideString; 
                                 const Value: WideString): WordBool; safecall;
    function GetDeviceStatusEx(dwMachineNumber: Integer): Integer; safecall;
    procedure CancelByUser; safecall;
    function SSR_GetDeviceDataCount(const TableName: WideString; const Filter: WideString; 
                                    const Options: WideString): Integer; safecall;
    function SSR_DeleteDeviceData(dwMachineNumber: Integer; const TableName: WideString; 
                                  const Datas: WideString; const Options: WideString): WordBool; safecall;
    function ReadTimeGLogData(dwMachineNumber: Integer; const sTime: WideString; 
                              const eTime: WideString): WordBool; safecall;
    function DeleteAttlogBetweenTheDate(dwMachineNumber: Integer; const sTime: WideString; 
                                        const eTime: WideString): WordBool; safecall;
    function DeleteAttlogByTime(dwMachineNumber: Integer; const sTime: WideString): WordBool; safecall;
    function ReadNewGLogData(dwMachineNumber: Integer): WordBool; safecall;
    function IsNewFirmwareMachine(dwMachineNumber: Integer): WordBool; safecall;
    function UploadUserPhoto(dwMachineNumber: Integer; const FileName: WideString): WordBool; safecall;
    function DownloadUserPhoto(dwMachineNumber: Integer; const FileName: WideString; 
                               const FilePath: WideString): WordBool; safecall;
    function DeleteUserPhoto(dwMachineNumber: Integer; const FileName: WideString): WordBool; safecall;
    function GetAllUserPhoto(dwMachineNumber: Integer; const dlDir: WideString): WordBool; safecall;
    function SetBellSchDataEx(dwMachineNumber: Integer; weekDay: Integer; Index: Integer; 
                              Enable: Integer; Hour: Integer; min: Integer; voice: Integer; 
                              way: Integer; InerBellDelay: Integer; ExtBellDelay: Integer): WordBool; safecall;
    function GetBellSchDataEx(dwMachineNumber: Integer; weekDay: Integer; Index: Integer; 
                              out Enable: Integer; out Hour: Integer; out min: Integer; 
                              out voice: Integer; out way: Integer; out InerBellDelay: Integer; 
                              out ExtBellDelay: Integer): WordBool; safecall;
    function GetDayBellSchCount(dwMachineNumber: Integer; out DayBellCnt: Integer): WordBool; safecall;
    function GetMaxBellIDInBellSchData(dwMachineNumber: Integer; out MaxBellID: Integer): WordBool; safecall;
    function ReadAllBellSchData(dwMachineNumber: Integer): WordBool; safecall;
    function GetEachBellInfo(dwMachineNumber: Integer; out weekDay: Integer; out Index: Integer; 
                             out Enable: Integer; out Hour: Integer; out min: Integer; 
                             out voice: Integer; out way: Integer; out InerBellDelay: Integer; 
                             out ExtBellDelay: Integer): WordBool; safecall;
    function SetUserValidDate(dwMachineNumber: Integer; const UserID: WideString; Expires: Integer; 
                              ValidCount: Integer; const StartDate: WideString; 
                              const EndDate: WideString): WordBool; safecall;
    function GetUserValidDate(dwMachineNumber: Integer; const UserID: WideString; 
                              out Expires: Integer; out ValidCount: Integer; 
                              out StartDate: WideString; out EndDate: WideString): WordBool; safecall;
    function SetUserValidDateBatch(dwMachineNumber: Integer; const Datas: WideString): WordBool; safecall;
    function GetUserValidDateBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                   BufferSize: Integer): WordBool; safecall;
    function SetUserVerifyStyle(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                VerifyStyle: Integer; var Reserved: Byte): WordBool; safecall;
    function GetUserVerifyStyle(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                out VerifyStyle: Integer; out Reserved: Byte): WordBool; safecall;
    function SetUserVerifyStyleBatch(dwMachineNumber: Integer; const Datas: WideString; 
                                     var Reserved: Byte): WordBool; safecall;
    function GetUserVerifyStyleBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                     BufferSize: Integer; out Reserved: Byte): WordBool; safecall;
    function GetDeviceFirmwareVersion(dwMachineNumber: Integer; var strVersion: WideString): WordBool; safecall;
    function SendFileEx(dwMachineNumber: Integer; const FileName: WideString; 
                        const FilePath: WideString): WordBool; safecall;
    function UploadTheme(dwMachineNumber: Integer; const FileName: WideString; 
                         const InDevName: WideString): WordBool; safecall;
    function UploadPicture(dwMachineNumber: Integer; const FileName: WideString; 
                           const InDevName: WideString): WordBool; safecall;
    function DeletePicture(dwMachineNumber: Integer; const FileName: WideString): WordBool; safecall;
    function DownloadPicture(dwMachineNumber: Integer; const FileName: WideString; 
                             const FilePath: WideString): WordBool; safecall;
    function TurnOffAlarm(dwMachineNumber: Integer): WordBool; safecall;
    function CloseAlarm(dwMachineNumber: Integer): WordBool; safecall;
    function SSR_SetWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString; 
                               const Name: WideString): WordBool; safecall;
    function SSR_GetWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString; 
                               out Name: WideString): WordBool; safecall;
    function SSR_DeleteWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString): WordBool; safecall;
    function SSR_GetGeneralLogDataEx(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                     out dwVerifyMode: Integer; out dwInOutMode: Integer; 
                                     out dwYear: Integer; out dwMonth: Integer; out dwDay: Integer; 
                                     out dwHour: Integer; out dwMinute: Integer; 
                                     out dwSecond: Integer; out dwWorkCode: WideString): WordBool; safecall;
    function SSR_SetWorkCodeExBatch(dwMachineNumber: Integer; const Datas: WideString): WordBool; safecall;
    function SSR_GetWorkCodeExBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                    BufferSize: Integer): WordBool; safecall;
    function SSR_GetWorkCodeExByID(dwMachineNumber: Integer; WorkCodeID: Integer; 
                                   out WorkCodeNum: WideString; out Name: WideString): WordBool; safecall;
    function SSR_GetWorkCodeIDByName(dwMachineNumber: Integer; const workcodeName: WideString; 
                                     out WorkCodeID: Integer): WordBool; safecall;
    function Get_BatchDataMode: Integer; safecall;
    procedure Set_BatchDataMode(pVal: Integer); safecall;
    function SetEventMode(nType: Integer): WordBool; safecall;
    function GetAllSFIDName(dwMachineNumber: Integer; out ShortkeyIDName: WideString; 
                            BufferSize1: Integer; out FunctionIDName: WideString; 
                            BufferSize2: Integer): WordBool; safecall;
    function SetShortkey(dwMachineNumber: Integer; ShortKeyID: Integer; 
                         const ShortKeyName: WideString; const FunctionName: WideString; 
                         ShortKeyFun: Integer; StateCode: Integer; const StateName: WideString; 
                         const Description: WideString; StateAutoChange: Integer; 
                         const StateAutoChangeTime: WideString): WordBool; safecall;
    function GetShortkey(dwMachineNumber: Integer; ShortKeyID: Integer; 
                         var ShortKeyName: WideString; var FunctionName: WideString; 
                         var ShortKeyFun: Integer; var StateCode: Integer; 
                         var StateName: WideString; var Description: WideString; 
                         var AutoChange: Integer; var AutoChangeTime: WideString): WordBool; safecall;
    function GetAllAppFun(dwMachineNumber: Integer; out AppName: WideString; 
                          out FunofAppName: WideString): WordBool; safecall;
    function GetAllRole(dwMachineNumber: Integer; out RoleName: WideString): WordBool; safecall;
    function GetAppOfRole(dwMachineNumber: Integer; Permission: Integer; out AppName: WideString): WordBool; safecall;
    function GetFunOfRole(dwMachineNumber: Integer; Permission: Integer; out FunName: WideString): WordBool; safecall;
    function SetPermOfAppFun(dwMachineNumber: Integer; Permission: Integer; 
                             const AppName: WideString; const FunName: WideString): WordBool; safecall;
    function DeletePermOfAppFun(dwMachineNumber: Integer; Permission: Integer; 
                                const AppName: WideString; const FunName: WideString): WordBool; safecall;
    function IsUserDefRoleEnable(dwMachineNumber: Integer; Permission: Integer; out Enable: WordBool): WordBool; safecall;
    function SearchDevice(const commType: WideString; const address: WideString; 
                          out DevBuffer: WideString; DevBufferSize: Integer): WordBool; safecall;
    function SetUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString; 
                               var IDCardData: Byte; DataLen: Integer): WordBool; safecall;
    function GetUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString; 
                               out IDCardData: Byte; var DataLen: Integer): WordBool; safecall;
    function DelUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString): WordBool; safecall;
    property ReadMark: WordBool read Get_ReadMark write Set_ReadMark;
    property CommPort: Integer read Get_CommPort write Set_CommPort;
    property ConvertBIG5: Integer read Get_ConvertBIG5 write Set_ConvertBIG5;
    property BASE64: Integer read Get_BASE64 write Set_BASE64;
    property PIN2: LongWord read Get_PIN2 write Set_PIN2;
    property AccGroup: Integer read Get_AccGroup write Set_AccGroup;
    property AccTimeZones[Index: Integer]: Integer read Get_AccTimeZones write Set_AccTimeZones;
    property CardNumber[Index: Integer]: Integer read Get_CardNumber write Set_CardNumber;
    property PINWidth: Integer read Get_PINWidth;
    property MachineNumber: Integer read Get_MachineNumber write Set_MachineNumber;
    property STR_CardNumber[Index: Integer]: WideString read Get_STR_CardNumber write Set_STR_CardNumber;
    property SSRPin: Integer read Get_SSRPin;
    property PullMode: Integer read Get_PullMode write Set_PullMode;
    property MaxP4PConnect: Integer read Get_MaxP4PConnect;
    property BatchDataMode: Integer read Get_BatchDataMode write Set_BatchDataMode;
  end;

// *********************************************************************//
// DispIntf:  IZKEMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {102F4206-E43D-4FC9-BAB0-331CFFE4D25B}
// *********************************************************************//
  IZKEMDisp = dispinterface
    ['{102F4206-E43D-4FC9-BAB0-331CFFE4D25B}']
    property ReadMark: WordBool dispid 1;
    property CommPort: Integer dispid 2;
    function ClearAdministrators(dwMachineNumber: Integer): WordBool; dispid 3;
    function DeleteEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer): WordBool; dispid 4;
    function ReadSuperLogData(dwMachineNumber: Integer): WordBool; dispid 5;
    function ReadAllSLogData(dwMachineNumber: Integer): WordBool; dispid 6;
    function ReadGeneralLogData(dwMachineNumber: Integer): WordBool; dispid 7;
    function ReadAllGLogData(dwMachineNumber: Integer): WordBool; dispid 8;
    function EnableUser(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                        dwEMachineNumber: Integer; dwBackupNumber: Integer; bFlag: WordBool): WordBool; dispid 9;
    function EnableDevice(dwMachineNumber: Integer; bFlag: WordBool): WordBool; dispid 10;
    function GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool; dispid 11;
    function GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool; dispid 12;
    function SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool; dispid 13;
    function SetDeviceTime(dwMachineNumber: Integer): WordBool; dispid 14;
    procedure PowerOnAllDevice; dispid 15;
    function PowerOffDevice(dwMachineNumber: Integer): WordBool; dispid 16;
    function ModifyPrivilege(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                             dwMachinePrivilege: Integer): WordBool; dispid 17;
    procedure GetLastError(var dwErrorCode: Integer); dispid 18;
    function GetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           var dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                           var dwPassWord: Integer): WordBool; dispid 19;
    function SetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                           dwPassWord: Integer): WordBool; dispid 20;
    function GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                           var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                           var dwSecond: Integer): WordBool; dispid 21;
    function GetGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                               var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                               var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMinute: Integer): WordBool; dispid 22;
    function GetSuperLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                             var dwSEnrollNumber: Integer; var Params4: Integer; 
                             var Params1: Integer; var Params2: Integer; 
                             var dwManipulation: Integer; var Params3: Integer; 
                             var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                             var dwHour: Integer; var dwMinute: Integer): WordBool; dispid 23;
    function GetAllSLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwSEnrollNumber: Integer; var Params4: Integer; 
                            var Params1: Integer; var Params2: Integer; 
                            var dwManipulation: Integer; var Params3: Integer; var dwYear: Integer; 
                            var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                            var dwMinute: Integer): WordBool; dispid 24;
    function GetAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                            var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                            var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                            var dwHour: Integer; var dwMinute: Integer): WordBool; dispid 25;
    procedure ConvertPassword(dwSrcPSW: Integer; var dwDestPSW: Integer; dwLength: Integer); dispid 26;
    function ReadAllUserID(dwMachineNumber: Integer): WordBool; dispid 27;
    function GetAllUserID(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                          var dwEMachineNumber: Integer; var dwBackupNumber: Integer; 
                          var dwMachinePrivilege: Integer; var dwEnable: Integer): WordBool; dispid 28;
    function GetSerialNumber(dwMachineNumber: Integer; out dwSerialNumber: WideString): WordBool; dispid 29;
    function ClearKeeperData(dwMachineNumber: Integer): WordBool; dispid 30;
    function GetBackupNumber(dwMachineNumber: Integer): Integer; dispid 32;
    function GetProductCode(dwMachineNumber: Integer; out lpszProductCode: WideString): WordBool; dispid 33;
    function GetFirmwareVersion(dwMachineNumber: Integer; var strVersion: WideString): WordBool; dispid 34;
    function GetSDKVersion(var strVersion: WideString): WordBool; dispid 35;
    function ClearGLog(dwMachineNumber: Integer): WordBool; dispid 36;
    function GetFPTempLength(var dwEnrollData: Byte): Integer; dispid 37;
    function Connect_Com(ComPort: Integer; MachineNumber: Integer; BaudRate: Integer): WordBool; dispid 38;
    function Connect_Net(const IPAdd: WideString; Port: Integer): WordBool; dispid 39;
    procedure Disconnect; dispid 40;
    function SetUserInfo(dwMachineNumber: Integer; dwEnrollNumber: Integer; const Name: WideString; 
                         const Password: WideString; Privilege: Integer; Enabled: WordBool): WordBool; dispid 41;
    function GetUserInfo(dwMachineNumber: Integer; dwEnrollNumber: Integer; var Name: WideString; 
                         var Password: WideString; var Privilege: Integer; var Enabled: WordBool): WordBool; dispid 42;
    function SetDeviceIP(dwMachineNumber: Integer; const IPAddr: WideString): WordBool; dispid 43;
    function GetDeviceIP(dwMachineNumber: Integer; var IPAddr: WideString): WordBool; dispid 44;
    function GetUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex: Integer; 
                        var TmpData: Byte; var TmpLength: Integer): WordBool; dispid 45;
    function SetUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex: Integer; 
                        var TmpData: Byte): WordBool; dispid 46;
    function GetAllUserInfo(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                            var Name: WideString; var Password: WideString; var Privilege: Integer; 
                            var Enabled: WordBool): WordBool; dispid 47;
    function DelUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex: Integer): WordBool; dispid 48;
    function RefreshData(dwMachineNumber: Integer): WordBool; dispid 49;
    function FPTempConvert(var TmpData1: Byte; var TmpData2: Byte; var Size: Integer): WordBool; dispid 50;
    function SetCommPassword(CommKey: Integer): WordBool; dispid 51;
    function GetUserGroup(dwMachineNumber: Integer; dwEnrollNumber: Integer; var UserGrp: Integer): WordBool; dispid 52;
    function SetUserGroup(dwMachineNumber: Integer; dwEnrollNumber: Integer; UserGrp: Integer): WordBool; dispid 53;
    function GetTZInfo(dwMachineNumber: Integer; TZIndex: Integer; var TZ: WideString): WordBool; dispid 54;
    function SetTZInfo(dwMachineNumber: Integer; TZIndex: Integer; const TZ: WideString): WordBool; dispid 55;
    function GetUnlockGroups(dwMachineNumber: Integer; var Grps: WideString): WordBool; dispid 56;
    function SetUnlockGroups(dwMachineNumber: Integer; const Grps: WideString): WordBool; dispid 57;
    function GetGroupTZs(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: Integer): WordBool; dispid 58;
    function SetGroupTZs(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: Integer): WordBool; dispid 59;
    function GetUserTZs(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: Integer): WordBool; dispid 60;
    function SetUserTZs(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: Integer): WordBool; dispid 61;
    function ACUnlock(dwMachineNumber: Integer; Delay: Integer): WordBool; dispid 62;
    function GetACFun(var ACFun: Integer): WordBool; dispid 63;
    property ConvertBIG5: Integer dispid 64;
    function GetGeneralLogDataStr(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                  var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                                  var TimeStr: WideString): WordBool; dispid 65;
    function GetUserTmpStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwFingerIndex: Integer; var TmpData: WideString; var TmpLength: Integer): WordBool; dispid 66;
    function SetUserTmpStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwFingerIndex: Integer; const TmpData: WideString): WordBool; dispid 67;
    function GetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              var dwMachinePrivilege: Integer; var dwEnrollData: WideString; 
                              var dwPassWord: Integer): WordBool; dispid 68;
    function SetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              dwMachinePrivilege: Integer; const dwEnrollData: WideString; 
                              dwPassWord: Integer): WordBool; dispid 69;
    function GetGroupTZStr(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: WideString): WordBool; dispid 70;
    function SetGroupTZStr(dwMachineNumber: Integer; GroupIndex: Integer; const TZs: WideString): WordBool; dispid 71;
    function GetUserTZStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: WideString): WordBool; dispid 72;
    function SetUserTZStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; const TZs: WideString): WordBool; dispid 73;
    function FPTempConvertStr(const TmpData1: WideString; var TmpData2: WideString; 
                              var Size: Integer): WordBool; dispid 74;
    function GetFPTempLengthStr(const dwEnrollData: WideString): Integer; dispid 75;
    property BASE64: Integer dispid 76;
    property PIN2: LongWord dispid 78;
    property AccGroup: Integer dispid 79;
    property AccTimeZones[Index: Integer]: Integer dispid 80;
    function GetUserInfoByPIN2(dwMachineNumber: Integer; var Name: WideString; 
                               var Password: WideString; var Privilege: Integer; 
                               var Enabled: WordBool): WordBool; dispid 81;
    function GetUserInfoByCard(dwMachineNumber: Integer; var Name: WideString; 
                               var Password: WideString; var Privilege: Integer; 
                               var Enabled: WordBool): WordBool; dispid 82;
    property CardNumber[Index: Integer]: Integer dispid 83;
    function CaptureImage(FullImage: WordBool; var Width: Integer; var Height: Integer; 
                          var Image: Byte; const ImageFile: WideString): WordBool; dispid 86;
    function UpdateFirmware(const FirmwareFile: WideString): WordBool; dispid 87;
    function StartEnroll(UserID: Integer; FingerID: Integer): WordBool; dispid 88;
    function StartVerify(UserID: Integer; FingerID: Integer): WordBool; dispid 89;
    function StartIdentify: WordBool; dispid 90;
    function CancelOperation: WordBool; dispid 91;
    function QueryState(var State: Integer): WordBool; dispid 92;
    function BackupData(const DataFile: WideString): WordBool; dispid 93;
    function RestoreData(const DataFile: WideString): WordBool; dispid 94;
    function WriteLCD(Row: Integer; Col: Integer; const Text: WideString): WordBool; dispid 95;
    function ClearLCD: WordBool; dispid 96;
    function Beep(DelayMS: Integer): WordBool; dispid 97;
    function PlayVoice(Position: Integer; Length: Integer): WordBool; dispid 98;
    function PlayVoiceByIndex(Index: Integer): WordBool; dispid 99;
    function EnableClock(Enabled: Integer): WordBool; dispid 100;
    function GetUserIDByPIN2(PIN2: Integer; var UserID: Integer): WordBool; dispid 101;
    property PINWidth: Integer readonly dispid 102;
    function GetPIN2(UserID: Integer; var PIN2: Integer): WordBool; dispid 103;
    function FPTempConvertNew(var TmpData1: Byte; var TmpData2: Byte; var Size: Integer): WordBool; dispid 104;
    function FPTempConvertNewStr(const TmpData1: WideString; var TmpData2: WideString; 
                                 var Size: Integer): WordBool; dispid 105;
    function ReadAllTemplate(dwMachineNumber: Integer): WordBool; dispid 106;
    function DisableDeviceWithTimeOut(dwMachineNumber: Integer; TimeOutSec: Integer): WordBool; dispid 107;
    function SetDeviceTime2(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                            dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool; dispid 108;
    function ClearSLog(dwMachineNumber: Integer): WordBool; dispid 109;
    function RestartDevice(dwMachineNumber: Integer): WordBool; dispid 110;
    function GetDeviceMAC(dwMachineNumber: Integer; var sMAC: WideString): WordBool; dispid 111;
    function SetDeviceMAC(dwMachineNumber: Integer; const sMAC: WideString): WordBool; dispid 112;
    function GetWiegandFmt(dwMachineNumber: Integer; var sWiegandFmt: WideString): WordBool; dispid 113;
    function SetWiegandFmt(dwMachineNumber: Integer; const sWiegandFmt: WideString): WordBool; dispid 114;
    function ClearSMS(dwMachineNumber: Integer): WordBool; dispid 115;
    function GetSMS(dwMachineNumber: Integer; ID: Integer; var Tag: Integer; 
                    var ValidMinutes: Integer; var StartTime: WideString; var Content: WideString): WordBool; dispid 116;
    function SetSMS(dwMachineNumber: Integer; ID: Integer; Tag: Integer; ValidMinutes: Integer; 
                    const StartTime: WideString; const Content: WideString): WordBool; dispid 117;
    function DeleteSMS(dwMachineNumber: Integer; ID: Integer): WordBool; dispid 118;
    function SetUserSMS(dwMachineNumber: Integer; dwEnrollNumber: Integer; SMSID: Integer): WordBool; dispid 119;
    function DeleteUserSMS(dwMachineNumber: Integer; dwEnrollNumber: Integer; SMSID: Integer): WordBool; dispid 120;
    function GetCardFun(dwMachineNumber: Integer; var CardFun: Integer): WordBool; dispid 121;
    function ClearUserSMS(dwMachineNumber: Integer): WordBool; dispid 122;
    property MachineNumber: Integer dispid 123;
    function SetDeviceCommPwd(dwMachineNumber: Integer; CommKey: Integer): WordBool; dispid 124;
    function GetDoorState(MachineNumber: Integer; var State: Integer): WordBool; dispid 128;
    function GetVendor(var strVendor: WideString): WordBool; dispid 129;
    function GetSensorSN(dwMachineNumber: Integer; var SensorSN: WideString): WordBool; dispid 130;
    function ReadCustData(dwMachineNumber: Integer; var CustData: WideString): WordBool; dispid 131;
    function WriteCustData(dwMachineNumber: Integer; const CustData: WideString): WordBool; dispid 132;
    function BeginBatchUpdate(dwMachineNumber: Integer; UpdateFlag: Integer): WordBool; dispid 133;
    function BatchUpdate(dwMachineNumber: Integer): WordBool; dispid 134;
    function ClearData(dwMachineNumber: Integer; DataFlag: Integer): WordBool; dispid 135;
    function GetDataFile(dwMachineNumber: Integer; DataFlag: Integer; const FileName: WideString): WordBool; dispid 136;
    function WriteCard(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex1: Integer; 
                       var TmpData1: Byte; dwFingerIndex2: Integer; var TmpData2: Byte; 
                       dwFingerIndex3: Integer; var TmpData3: Byte; dwFingerIndex4: Integer; 
                       var TmpData4: Byte): WordBool; dispid 137;
    function GetGeneralExtLogData(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                  var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                                  var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                  var dwHour: Integer; var dwMinute: Integer; 
                                  var dwSecond: Integer; var dwWorkCode: Integer; 
                                  var dwReserved: Integer): WordBool; dispid 138;
    function EmptyCard(dwMachineNumber: Integer): WordBool; dispid 139;
    function GetDeviceStrInfo(dwMachineNumber: Integer; dwInfo: Integer; out Value: WideString): WordBool; dispid 140;
    function GetSysOption(dwMachineNumber: Integer; const Option: WideString; out Value: WideString): WordBool; dispid 141;
    function SetUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer; VerifyStyle: Integer; 
                           var Reserved: Byte): WordBool; dispid 142;
    function GetUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           out VerifyStyle: Integer; out Reserved: Byte): WordBool; dispid 143;
    function DeleteUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer): WordBool; dispid 144;
    function SSR_GetGeneralLogData(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                   out dwVerifyMode: Integer; out dwInOutMode: Integer; 
                                   out dwYear: Integer; out dwMonth: Integer; out dwDay: Integer; 
                                   out dwHour: Integer; out dwMinute: Integer; 
                                   out dwSecond: Integer; var dwWorkCode: Integer): WordBool; dispid 145;
    function SSR_GetAllUserInfo(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                out Name: WideString; out Password: WideString; 
                                out Privilege: Integer; out Enabled: WordBool): WordBool; dispid 146;
    function SSR_GetUserInfo(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             out Name: WideString; out Password: WideString; 
                             out Privilege: Integer; out Enabled: WordBool): WordBool; dispid 147;
    function SSR_GetUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFingerIndex: Integer; out TmpData: Byte; out TmpLength: Integer): WordBool; dispid 148;
    function SSR_GetUserTmpStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer; out TmpData: WideString; 
                               out TmpLength: Integer): WordBool; dispid 149;
    function SSR_DeleteEnrollData(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                  dwBackupNumber: Integer): WordBool; dispid 150;
    function SSR_SetUserInfo(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             const Name: WideString; const Password: WideString; 
                             Privilege: Integer; Enabled: WordBool): WordBool; dispid 151;
    function SSR_SetUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFingerIndex: Integer; var TmpData: Byte): WordBool; dispid 152;
    function SSR_SetUserTmpStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer; const TmpData: WideString): WordBool; dispid 153;
    function SSR_DelUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFingerIndex: Integer): WordBool; dispid 154;
    property STR_CardNumber[Index: Integer]: WideString dispid 155;
    function SetWorkCode(WorkCodeID: Integer; AWorkCode: Integer): WordBool; dispid 156;
    function GetWorkCode(WorkCodeID: Integer; out AWorkCode: Integer): WordBool; dispid 157;
    function DeleteWorkCode(WorkCodeID: Integer): WordBool; dispid 158;
    function ClearWorkCode: WordBool; dispid 159;
    function ReadAttRule(dwMachineNumber: Integer): WordBool; dispid 160;
    function ReadDPTInfo(dwMachineNumber: Integer): WordBool; dispid 161;
    function SaveTheDataToFile(dwMachineNumber: Integer; const TheFilePath: WideString; 
                               FileFlag: Integer): WordBool; dispid 162;
    function ReadTurnInfo(dwMachineNumber: Integer): WordBool; dispid 163;
    function SSR_OutPutHTMLRep(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               const AttFile: WideString; const UserFile: WideString; 
                               const DeptFile: WideString; const TimeClassFile: WideString; 
                               const AttruleFile: WideString; BYear: Integer; BMonth: Integer; 
                               BDay: Integer; BHour: Integer; BMinute: Integer; BSecond: Integer; 
                               EYear: Integer; EMonth: Integer; EDay: Integer; EHour: Integer; 
                               EMinute: Integer; ESecond: Integer; const TempPath: WideString; 
                               const OutFileName: WideString; HTMLFlag: Integer; resv1: Integer; 
                               const resv2: WideString): WordBool; dispid 164;
    function ReadAOptions(const AOption: WideString; out AValue: WideString): WordBool; dispid 165;
    function ReadRTLog(dwMachineNumber: Integer): WordBool; dispid 166;
    function GetRTLog(dwMachineNumber: Integer): WordBool; dispid 167;
    function GetHIDEventCardNumAsStr(out strHIDEventCardNum: WideString): WordBool; dispid 168;
    function GetStrCardNumber(out ACardNumber: WideString): WordBool; dispid 169;
    function SetStrCardNumber(const ACardNumber: WideString): WordBool; dispid 170;
    function RegEvent(dwMachineNumber: Integer; EventMask: Integer): WordBool; dispid 171;
    function CancelBatchUpdate(dwMachineNumber: Integer): WordBool; dispid 172;
    function SetSysOption(dwMachineNumber: Integer; const Option: WideString; 
                          const Value: WideString): WordBool; dispid 173;
    function Connect_Modem(ComPort: Integer; MachineNumber: Integer; BaudRate: Integer; 
                           const Telephone: WideString): WordBool; dispid 174;
    function UseGroupTimeZone: WordBool; dispid 175;
    function SetHoliday(dwMachineNumber: Integer; const Holiday: WideString): WordBool; dispid 176;
    function GetHoliday(dwMachineNumber: Integer; var Holiday: WideString): WordBool; dispid 177;
    function SetDaylight(dwMachineNumber: Integer; Support: Integer; const BeginTime: WideString; 
                         const EndTime: WideString): WordBool; dispid 178;
    function GetDaylight(dwMachineNumber: Integer; var Support: Integer; var BeginTime: WideString; 
                         var EndTime: WideString): WordBool; dispid 179;
    function SSR_SetUnLockGroup(dwMachineNumber: Integer; CombNo: Integer; Group1: Integer; 
                                Group2: Integer; Group3: Integer; Group4: Integer; Group5: Integer): WordBool; dispid 180;
    function SSR_GetUnLockGroup(dwMachineNumber: Integer; CombNo: Integer; var Group1: Integer; 
                                var Group2: Integer; var Group3: Integer; var Group4: Integer; 
                                var Group5: Integer): WordBool; dispid 181;
    function SSR_SetGroupTZ(dwMachineNumber: Integer; GroupNo: Integer; Tz1: Integer; Tz2: Integer; 
                            Tz3: Integer; VaildHoliday: Integer; VerifyStyle: Integer): WordBool; dispid 182;
    function SSR_GetGroupTZ(dwMachineNumber: Integer; GroupNo: Integer; var Tz1: Integer; 
                            var Tz2: Integer; var Tz3: Integer; var VaildHoliday: Integer; 
                            var VerifyStyle: Integer): WordBool; dispid 183;
    function SSR_GetHoliday(dwMachineNumber: Integer; HolidayID: Integer; var BeginMonth: Integer; 
                            var BeginDay: Integer; var EndMonth: Integer; var EndDay: Integer; 
                            var TimeZoneID: Integer): WordBool; dispid 184;
    function SSR_SetHoliday(dwMachineNumber: Integer; HolidayID: Integer; BeginMonth: Integer; 
                            BeginDay: Integer; EndMonth: Integer; EndDay: Integer; 
                            TimeZoneID: Integer): WordBool; dispid 185;
    function GetPlatform(dwMachineNumber: Integer; var Platform: WideString): WordBool; dispid 186;
    function SSR_SetUserSMS(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            SMSID: Integer): WordBool; dispid 187;
    function SSR_DeleteUserSMS(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               SMSID: Integer): WordBool; dispid 188;
    function IsTFTMachine(dwMachineNumber: Integer): WordBool; dispid 189;
    function SSR_EnableUser(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            bFlag: WordBool): WordBool; dispid 190;
    property SSRPin: Integer readonly dispid 191;
    function SendCMDMsg(dwMachineNumber: Integer; Param1: Integer; Param2: Integer): WordBool; dispid 192;
    function SendFile(dwMachineNumber: Integer; const FileName: WideString): WordBool; dispid 193;
    function SetLanguageByID(dwMachineNumber: Integer; LanguageID: Integer; 
                             const Language: WideString): WordBool; dispid 194;
    function ReadFile(dwMachineNumber: Integer; const FileName: WideString; 
                      const FilePath: WideString): WordBool; dispid 195;
    function SetLastCount(count: Integer): WordBool; dispid 196;
    function SetCustomizeAttState(dwMachineNumber: Integer; StateID: Integer; NewState: Integer): WordBool; dispid 197;
    function DelCustomizeAttState(dwMachineNumber: Integer; StateID: Integer): WordBool; dispid 198;
    function EnableCustomizeAttState(dwMachineNumber: Integer; StateID: Integer; Enable: Integer): WordBool; dispid 199;
    function SetCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer; 
                               const FileName: WideString): WordBool; dispid 200;
    function DelCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer): WordBool; dispid 201;
    function EnableCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer; Enable: Integer): WordBool; dispid 202;
    function StartEnrollEx(const UserID: WideString; FingerID: Integer; Flag: Integer): WordBool; dispid 203;
    function SSR_SetUserTmpExt(dwMachineNumber: Integer; IsDeleted: Integer; 
                               const dwEnrollNumber: WideString; dwFingerIndex: Integer; 
                               var TmpData: Byte): WordBool; dispid 215;
    function SSR_DelUserTmpExt(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer): WordBool; dispid 216;
    function SSR_DeleteEnrollDataExt(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                     dwBackupNumber: Integer): WordBool; dispid 217;
    function SSR_GetWorkCode(AWorkCode: Integer; out Name: WideString): WordBool; dispid 218;
    function SSR_SetWorkCode(AWorkCode: Integer; const Name: WideString): WordBool; dispid 219;
    function SSR_DeleteWorkCode(PIN: Integer): WordBool; dispid 220;
    function SSR_ClearWorkCode: WordBool; dispid 221;
    function SSR_GetSuperLogData(MachineNumber: Integer; out Number: Integer; 
                                 out Admin: WideString; out User: WideString; 
                                 out Manipulation: Integer; out Time: WideString; 
                                 out Params1: Integer; out Params2: Integer; out Params3: Integer): WordBool; dispid 222;
    function SSR_SetShortkey(ShortKeyID: Integer; ShortKeyFun: Integer; StateCode: Integer; 
                             const StateName: WideString; StateAutoChange: Integer; 
                             const StateAutoChangeTime: WideString): WordBool; dispid 223;
    function SSR_GetShortkey(ShortKeyID: Integer; var ShortKeyFun: Integer; var StateCode: Integer; 
                             var StateName: WideString; var AutoChange: Integer; 
                             var AutoChangeTime: WideString): WordBool; dispid 224;
    function Connect_USB(MachineNumber: Integer): WordBool; dispid 225;
    function GetSuperLogData2(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                              var dwSEnrollNumber: Integer; var Params4: Integer; 
                              var Params1: Integer; var Params2: Integer; 
                              var dwManipulation: Integer; var Params3: Integer; 
                              var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                              var dwHour: Integer; var dwMinute: Integer; var dwSecs: Integer): WordBool; dispid 226;
    function GetUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                         dwFaceIndex: Integer; var TmpData: Byte; var TmpLength: Integer): WordBool; dispid 230;
    function SetUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                         dwFaceIndex: Integer; var TmpData: Byte; TmpLength: Integer): WordBool; dispid 231;
    function DelUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                         dwFaceIndex: Integer): WordBool; dispid 232;
    function GetUserFaceStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFaceIndex: Integer; var TmpData: WideString; var TmpLength: Integer): WordBool; dispid 233;
    function SetUserFaceStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFaceIndex: Integer; const TmpData: WideString; TmpLength: Integer): WordBool; dispid 234;
    function GetUserTmpEx(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                          dwFingerIndex: Integer; out Flag: Integer; out TmpData: Byte; 
                          out TmpLength: Integer): WordBool; dispid 235;
    function GetUserTmpExStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             dwFingerIndex: Integer; out Flag: Integer; out TmpData: WideString; 
                             out TmpLength: Integer): WordBool; dispid 236;
    function SetUserTmpEx(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                          dwFingerIndex: Integer; Flag: Integer; var TmpData: Byte): WordBool; dispid 237;
    function SetUserTmpExStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             dwFingerIndex: Integer; Flag: Integer; const TmpData: WideString): WordBool; dispid 238;
    function MergeTemplate(var Templates: {NOT_OLEAUTO(PByte1)}OleVariant; FingerCount: Integer; 
                           var TemplateDest: Byte; var FingerSize: Integer): WordBool; dispid 239;
    function SplitTemplate(var Template: Byte; var Templates: {NOT_OLEAUTO(PByte1)}OleVariant; 
                           var FingerCount: Integer; var FingerSize: Integer): WordBool; dispid 240;
    property PullMode: Integer dispid 241;
    function ReadUserAllTemplate(dwMachineNumber: Integer; const dwEnrollNumber: WideString): WordBool; dispid 242;
    function UpdateFile(const FileName: WideString): WordBool; dispid 243;
    function ReadLastestLogData(dwMachineNumber: Integer; NewLog: Integer; dwYear: Integer; 
                                dwMonth: Integer; dwDay: Integer; dwHour: Integer; 
                                dwMinute: Integer; dwSecond: Integer): WordBool; dispid 244;
    function SetOptionCommPwd(dwMachineNumber: Integer; const CommKey: WideString): WordBool; dispid 245;
    function ReadSuperLogDataEx(dwMachineNumber: Integer; dwYear_S: Integer; dwMonth_S: Integer; 
                                dwDay_S: Integer; dwHour_S: Integer; dwMinute_S: Integer; 
                                dwSecond_S: Integer; dwYear_E: Integer; dwMonth_E: Integer; 
                                dwDay_E: Integer; dwHour_E: Integer; dwMinute_E: Integer; 
                                dwSecond_E: Integer; dwLogIndex: Integer): WordBool; dispid 246;
    function GetSuperLogDataEx(dwMachineNumber: Integer; var EnrollNumber: WideString; 
                               var Params4: Integer; var Params1: Integer; var Params2: Integer; 
                               var dwManipulation: Integer; var Params3: Integer; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer): WordBool; dispid 247;
    function GetPhotoByName(dwMachineNumber: Integer; const PhotoName: WideString; 
                            out PhotoData: Byte; out PhotoLength: Integer): WordBool; dispid 248;
    function GetPhotoNamesByTime(dwMachineNumber: Integer; iFlag: Integer; const sTime: WideString; 
                                 const eTime: WideString; out AllPhotoName: WideString): WordBool; dispid 249;
    function ClearPhotoByTime(dwMachineNumber: Integer; iFlag: Integer; const sTime: WideString; 
                              const eTime: WideString): WordBool; dispid 250;
    function GetPhotoCount(dwMachineNumber: Integer; out count: Integer; iFlag: Integer): WordBool; dispid 251;
    function ClearDataEx(dwMachineNumber: Integer; const TableName: WideString): WordBool; dispid 252;
    function GetDataFileEx(dwMachineNumber: Integer; const SourceFileName: WideString; 
                           const DestFileName: WideString): WordBool; dispid 253;
    function SSR_SetDeviceData(dwMachineNumber: Integer; const TableName: WideString; 
                               const Datas: WideString; const Options: WideString): WordBool; dispid 254;
    function SSR_GetDeviceData(dwMachineNumber: Integer; out Buffer: WideString; 
                               BufferSize: Integer; const TableName: WideString; 
                               const FiledNames: WideString; const Filter: WideString; 
                               const Options: WideString): WordBool; dispid 255;
    function UpdateLogo(dwMachineNumber: Integer; const FileName: WideString): WordBool; dispid 256;
    function SetCommuTimeOut(timeOut: Integer): WordBool; dispid 257;
    function SendFileByType(dwMachineNumber: Integer; const FileName: WideString; iType: Integer): WordBool; dispid 258;
    function SetCommProType(proType: Integer): WordBool; dispid 259;
    function SetCompatOldFirmware(nCompatOkdFirmware: Integer): WordBool; dispid 270;
    function Connect_P4P(const uid: WideString): WordBool; dispid 271;
    function SetDeviceTableData(dwMachineNumber: Integer; const TableName: WideString; 
                                const Datas: WideString; const Options: WideString; 
                                out count: Integer): WordBool; dispid 272;
    procedure GetConnectStatus(var dwErrorCode: Integer); dispid 273;
    property MaxP4PConnect: Integer readonly dispid 274;
    function SetManufacturerData(dwMachineNumber: Integer; const Name: WideString; 
                                 const Value: WideString): WordBool; dispid 275;
    function GetDeviceStatusEx(dwMachineNumber: Integer): Integer; dispid 276;
    procedure CancelByUser; dispid 277;
    function SSR_GetDeviceDataCount(const TableName: WideString; const Filter: WideString; 
                                    const Options: WideString): Integer; dispid 278;
    function SSR_DeleteDeviceData(dwMachineNumber: Integer; const TableName: WideString; 
                                  const Datas: WideString; const Options: WideString): WordBool; dispid 279;
    function ReadTimeGLogData(dwMachineNumber: Integer; const sTime: WideString; 
                              const eTime: WideString): WordBool; dispid 500;
    function DeleteAttlogBetweenTheDate(dwMachineNumber: Integer; const sTime: WideString; 
                                        const eTime: WideString): WordBool; dispid 501;
    function DeleteAttlogByTime(dwMachineNumber: Integer; const sTime: WideString): WordBool; dispid 502;
    function ReadNewGLogData(dwMachineNumber: Integer): WordBool; dispid 503;
    function IsNewFirmwareMachine(dwMachineNumber: Integer): WordBool; dispid 506;
    function UploadUserPhoto(dwMachineNumber: Integer; const FileName: WideString): WordBool; dispid 520;
    function DownloadUserPhoto(dwMachineNumber: Integer; const FileName: WideString; 
                               const FilePath: WideString): WordBool; dispid 521;
    function DeleteUserPhoto(dwMachineNumber: Integer; const FileName: WideString): WordBool; dispid 522;
    function GetAllUserPhoto(dwMachineNumber: Integer; const dlDir: WideString): WordBool; dispid 523;
    function SetBellSchDataEx(dwMachineNumber: Integer; weekDay: Integer; Index: Integer; 
                              Enable: Integer; Hour: Integer; min: Integer; voice: Integer; 
                              way: Integer; InerBellDelay: Integer; ExtBellDelay: Integer): WordBool; dispid 540;
    function GetBellSchDataEx(dwMachineNumber: Integer; weekDay: Integer; Index: Integer; 
                              out Enable: Integer; out Hour: Integer; out min: Integer; 
                              out voice: Integer; out way: Integer; out InerBellDelay: Integer; 
                              out ExtBellDelay: Integer): WordBool; dispid 541;
    function GetDayBellSchCount(dwMachineNumber: Integer; out DayBellCnt: Integer): WordBool; dispid 542;
    function GetMaxBellIDInBellSchData(dwMachineNumber: Integer; out MaxBellID: Integer): WordBool; dispid 543;
    function ReadAllBellSchData(dwMachineNumber: Integer): WordBool; dispid 544;
    function GetEachBellInfo(dwMachineNumber: Integer; out weekDay: Integer; out Index: Integer; 
                             out Enable: Integer; out Hour: Integer; out min: Integer; 
                             out voice: Integer; out way: Integer; out InerBellDelay: Integer; 
                             out ExtBellDelay: Integer): WordBool; dispid 545;
    function SetUserValidDate(dwMachineNumber: Integer; const UserID: WideString; Expires: Integer; 
                              ValidCount: Integer; const StartDate: WideString; 
                              const EndDate: WideString): WordBool; dispid 560;
    function GetUserValidDate(dwMachineNumber: Integer; const UserID: WideString; 
                              out Expires: Integer; out ValidCount: Integer; 
                              out StartDate: WideString; out EndDate: WideString): WordBool; dispid 561;
    function SetUserValidDateBatch(dwMachineNumber: Integer; const Datas: WideString): WordBool; dispid 564;
    function GetUserValidDateBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                   BufferSize: Integer): WordBool; dispid 565;
    function SetUserVerifyStyle(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                VerifyStyle: Integer; var Reserved: Byte): WordBool; dispid 570;
    function GetUserVerifyStyle(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                out VerifyStyle: Integer; out Reserved: Byte): WordBool; dispid 571;
    function SetUserVerifyStyleBatch(dwMachineNumber: Integer; const Datas: WideString; 
                                     var Reserved: Byte): WordBool; dispid 574;
    function GetUserVerifyStyleBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                     BufferSize: Integer; out Reserved: Byte): WordBool; dispid 575;
    function GetDeviceFirmwareVersion(dwMachineNumber: Integer; var strVersion: WideString): WordBool; dispid 580;
    function SendFileEx(dwMachineNumber: Integer; const FileName: WideString; 
                        const FilePath: WideString): WordBool; dispid 280;
    function UploadTheme(dwMachineNumber: Integer; const FileName: WideString; 
                         const InDevName: WideString): WordBool; dispid 590;
    function UploadPicture(dwMachineNumber: Integer; const FileName: WideString; 
                           const InDevName: WideString): WordBool; dispid 591;
    function DeletePicture(dwMachineNumber: Integer; const FileName: WideString): WordBool; dispid 592;
    function DownloadPicture(dwMachineNumber: Integer; const FileName: WideString; 
                             const FilePath: WideString): WordBool; dispid 593;
    function TurnOffAlarm(dwMachineNumber: Integer): WordBool; dispid 595;
    function CloseAlarm(dwMachineNumber: Integer): WordBool; dispid 596;
    function SSR_SetWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString; 
                               const Name: WideString): WordBool; dispid 600;
    function SSR_GetWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString; 
                               out Name: WideString): WordBool; dispid 601;
    function SSR_DeleteWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString): WordBool; dispid 602;
    function SSR_GetGeneralLogDataEx(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                     out dwVerifyMode: Integer; out dwInOutMode: Integer; 
                                     out dwYear: Integer; out dwMonth: Integer; out dwDay: Integer; 
                                     out dwHour: Integer; out dwMinute: Integer; 
                                     out dwSecond: Integer; out dwWorkCode: WideString): WordBool; dispid 603;
    function SSR_SetWorkCodeExBatch(dwMachineNumber: Integer; const Datas: WideString): WordBool; dispid 604;
    function SSR_GetWorkCodeExBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                    BufferSize: Integer): WordBool; dispid 605;
    function SSR_GetWorkCodeExByID(dwMachineNumber: Integer; WorkCodeID: Integer; 
                                   out WorkCodeNum: WideString; out Name: WideString): WordBool; dispid 606;
    function SSR_GetWorkCodeIDByName(dwMachineNumber: Integer; const workcodeName: WideString; 
                                     out WorkCodeID: Integer): WordBool; dispid 607;
    property BatchDataMode: Integer dispid 610;
    function SetEventMode(nType: Integer): WordBool; dispid 620;
    function GetAllSFIDName(dwMachineNumber: Integer; out ShortkeyIDName: WideString; 
                            BufferSize1: Integer; out FunctionIDName: WideString; 
                            BufferSize2: Integer): WordBool; dispid 625;
    function SetShortkey(dwMachineNumber: Integer; ShortKeyID: Integer; 
                         const ShortKeyName: WideString; const FunctionName: WideString; 
                         ShortKeyFun: Integer; StateCode: Integer; const StateName: WideString; 
                         const Description: WideString; StateAutoChange: Integer; 
                         const StateAutoChangeTime: WideString): WordBool; dispid 626;
    function GetShortkey(dwMachineNumber: Integer; ShortKeyID: Integer; 
                         var ShortKeyName: WideString; var FunctionName: WideString; 
                         var ShortKeyFun: Integer; var StateCode: Integer; 
                         var StateName: WideString; var Description: WideString; 
                         var AutoChange: Integer; var AutoChangeTime: WideString): WordBool; dispid 627;
    function GetAllAppFun(dwMachineNumber: Integer; out AppName: WideString; 
                          out FunofAppName: WideString): WordBool; dispid 630;
    function GetAllRole(dwMachineNumber: Integer; out RoleName: WideString): WordBool; dispid 631;
    function GetAppOfRole(dwMachineNumber: Integer; Permission: Integer; out AppName: WideString): WordBool; dispid 632;
    function GetFunOfRole(dwMachineNumber: Integer; Permission: Integer; out FunName: WideString): WordBool; dispid 633;
    function SetPermOfAppFun(dwMachineNumber: Integer; Permission: Integer; 
                             const AppName: WideString; const FunName: WideString): WordBool; dispid 634;
    function DeletePermOfAppFun(dwMachineNumber: Integer; Permission: Integer; 
                                const AppName: WideString; const FunName: WideString): WordBool; dispid 635;
    function IsUserDefRoleEnable(dwMachineNumber: Integer; Permission: Integer; out Enable: WordBool): WordBool; dispid 636;
    function SearchDevice(const commType: WideString; const address: WideString; 
                          out DevBuffer: WideString; DevBufferSize: Integer): WordBool; dispid 281;
    function SetUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString; 
                               var IDCardData: Byte; DataLen: Integer): WordBool; dispid 641;
    function GetUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString; 
                               out IDCardData: Byte; var DataLen: Integer): WordBool; dispid 642;
    function DelUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString): WordBool; dispid 643;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TCZKEM
// Help String      : ZKEM Class
// Default Interface: IZKEM
// Def. Intf. DISP? : No
// Event   Interface: _IZKEMEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCZKEMOnAttTransaction = procedure(ASender: TObject; EnrollNumber: Integer; IsInValid: Integer; 
                                                       AttState: Integer; VerifyMethod: Integer; 
                                                       Year: Integer; Month: Integer; Day: Integer; 
                                                       Hour: Integer; Minute: Integer; 
                                                       Second: Integer) of object;
  TCZKEMOnKeyPress = procedure(ASender: TObject; Key: Integer) of object;
  TCZKEMOnEnrollFinger = procedure(ASender: TObject; EnrollNumber: Integer; FingerIndex: Integer; 
                                                     ActionResult: Integer; TemplateLength: Integer) of object;
  TCZKEMOnNewUser = procedure(ASender: TObject; EnrollNumber: Integer) of object;
  TCZKEMOnEMData = procedure(ASender: TObject; DataType: Integer; DataLen: Integer; 
                                               var DataBuffer: Shortint) of object;
  TCZKEMOnVerify = procedure(ASender: TObject; UserID: Integer) of object;
  TCZKEMOnFingerFeature = procedure(ASender: TObject; Score: Integer) of object;
  TCZKEMOnHIDNum = procedure(ASender: TObject; CardNumber: Integer) of object;
  TCZKEMOnDoor = procedure(ASender: TObject; EventType: Integer) of object;
  TCZKEMOnAlarm = procedure(ASender: TObject; AlarmType: Integer; EnrollNumber: Integer; 
                                              Verified: Integer) of object;
  TCZKEMOnWriteCard = procedure(ASender: TObject; EnrollNumber: Integer; ActionResult: Integer; 
                                                  Length: Integer) of object;
  TCZKEMOnEmptyCard = procedure(ASender: TObject; ActionResult: Integer) of object;
  TCZKEMOnDeleteTemplate = procedure(ASender: TObject; EnrollNumber: Integer; FingerIndex: Integer) of object;
  TCZKEMOnAttTransactionEx = procedure(ASender: TObject; const EnrollNumber: WideString; 
                                                         IsInValid: Integer; AttState: Integer; 
                                                         VerifyMethod: Integer; Year: Integer; 
                                                         Month: Integer; Day: Integer; 
                                                         Hour: Integer; Minute: Integer; 
                                                         Second: Integer; WorkCode: Integer) of object;
  TCZKEMOnEnrollFingerEx = procedure(ASender: TObject; const EnrollNumber: WideString; 
                                                       FingerIndex: Integer; ActionResult: Integer; 
                                                       TemplateLength: Integer) of object;
  TCZKEMOnGeneralEvent = procedure(ASender: TObject; const DataStr: WideString) of object;
  TCZKEMOnAttTransactionEx_New = procedure(ASender: TObject; const EnrollNumber: WideString; 
                                                             IsInValid: Integer; AttState: Integer; 
                                                             VerifyMethod: Integer; Year: Integer; 
                                                             Month: Integer; Day: Integer; 
                                                             Hour: Integer; Minute: Integer; 
                                                             Second: Integer; 
                                                             const WorkCode: WideString) of object;

  TCZKEM = class(TOleControl)
  private
    FOnAttTransaction: TCZKEMOnAttTransaction;
    FOnKeyPress: TCZKEMOnKeyPress;
    FOnEnrollFinger: TCZKEMOnEnrollFinger;
    FOnNewUser: TCZKEMOnNewUser;
    FOnEMData: TCZKEMOnEMData;
    FOnConnected: TNotifyEvent;
    FOnDisConnected: TNotifyEvent;
    FOnFinger: TNotifyEvent;
    FOnVerify: TCZKEMOnVerify;
    FOnFingerFeature: TCZKEMOnFingerFeature;
    FOnHIDNum: TCZKEMOnHIDNum;
    FOnDoor: TCZKEMOnDoor;
    FOnAlarm: TCZKEMOnAlarm;
    FOnWriteCard: TCZKEMOnWriteCard;
    FOnEmptyCard: TCZKEMOnEmptyCard;
    FOnDeleteTemplate: TCZKEMOnDeleteTemplate;
    FOnAttTransactionEx: TCZKEMOnAttTransactionEx;
    FOnEnrollFingerEx: TCZKEMOnEnrollFingerEx;
    FOnGeneralEvent: TCZKEMOnGeneralEvent;
    FOnAttTransactionEx_New: TCZKEMOnAttTransactionEx_New;
    FIntf: IZKEM;
    function  GetControlInterface: IZKEM;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_AccTimeZones(Index: Integer): Integer;
    procedure Set_AccTimeZones(Index: Integer; pVal: Integer);
    function Get_CardNumber(Index: Integer): Integer;
    procedure Set_CardNumber(Index: Integer; pVal: Integer);
    function Get_STR_CardNumber(Index: Integer): WideString;
    procedure Set_STR_CardNumber(Index: Integer; const pVal: WideString);
  public
    function ClearAdministrators(dwMachineNumber: Integer): WordBool;
    function DeleteEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer): WordBool;
    function ReadSuperLogData(dwMachineNumber: Integer): WordBool;
    function ReadAllSLogData(dwMachineNumber: Integer): WordBool;
    function ReadGeneralLogData(dwMachineNumber: Integer): WordBool;
    function ReadAllGLogData(dwMachineNumber: Integer): WordBool;
    function EnableUser(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                        dwEMachineNumber: Integer; dwBackupNumber: Integer; bFlag: WordBool): WordBool;
    function EnableDevice(dwMachineNumber: Integer; bFlag: WordBool): WordBool;
    function GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool;
    function GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
    function SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
    function SetDeviceTime(dwMachineNumber: Integer): WordBool;
    procedure PowerOnAllDevice;
    function PowerOffDevice(dwMachineNumber: Integer): WordBool;
    function ModifyPrivilege(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                             dwMachinePrivilege: Integer): WordBool;
    procedure GetLastError(var dwErrorCode: Integer);
    function GetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           var dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                           var dwPassWord: Integer): WordBool;
    function SetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                           dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                           dwPassWord: Integer): WordBool;
    function GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                           var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                           var dwSecond: Integer): WordBool;
    function GetGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                               var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                               var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMinute: Integer): WordBool;
    function GetSuperLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                             var dwSEnrollNumber: Integer; var Params4: Integer; 
                             var Params1: Integer; var Params2: Integer; 
                             var dwManipulation: Integer; var Params3: Integer; 
                             var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                             var dwHour: Integer; var dwMinute: Integer): WordBool;
    function GetAllSLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwSEnrollNumber: Integer; var Params4: Integer; 
                            var Params1: Integer; var Params2: Integer; 
                            var dwManipulation: Integer; var Params3: Integer; var dwYear: Integer; 
                            var dwMonth: Integer; var dwDay: Integer; var dwHour: Integer; 
                            var dwMinute: Integer): WordBool;
    function GetAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                            var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                            var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                            var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                            var dwHour: Integer; var dwMinute: Integer): WordBool;
    procedure ConvertPassword(dwSrcPSW: Integer; var dwDestPSW: Integer; dwLength: Integer);
    function ReadAllUserID(dwMachineNumber: Integer): WordBool;
    function GetAllUserID(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                          var dwEMachineNumber: Integer; var dwBackupNumber: Integer; 
                          var dwMachinePrivilege: Integer; var dwEnable: Integer): WordBool;
    function GetSerialNumber(dwMachineNumber: Integer; out dwSerialNumber: WideString): WordBool;
    function ClearKeeperData(dwMachineNumber: Integer): WordBool;
    function GetBackupNumber(dwMachineNumber: Integer): Integer;
    function GetProductCode(dwMachineNumber: Integer; out lpszProductCode: WideString): WordBool;
    function GetFirmwareVersion(dwMachineNumber: Integer; var strVersion: WideString): WordBool;
    function GetSDKVersion(var strVersion: WideString): WordBool;
    function ClearGLog(dwMachineNumber: Integer): WordBool;
    function GetFPTempLength(var dwEnrollData: Byte): Integer;
    function Connect_Com(ComPort: Integer; MachineNumber: Integer; BaudRate: Integer): WordBool;
    function Connect_Net(const IPAdd: WideString; Port: Integer): WordBool;
    procedure Disconnect;
    function SetUserInfo(dwMachineNumber: Integer; dwEnrollNumber: Integer; const Name: WideString; 
                         const Password: WideString; Privilege: Integer; Enabled: WordBool): WordBool;
    function GetUserInfo(dwMachineNumber: Integer; dwEnrollNumber: Integer; var Name: WideString; 
                         var Password: WideString; var Privilege: Integer; var Enabled: WordBool): WordBool;
    function SetDeviceIP(dwMachineNumber: Integer; const IPAddr: WideString): WordBool;
    function GetDeviceIP(dwMachineNumber: Integer; var IPAddr: WideString): WordBool;
    function GetUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex: Integer; 
                        var TmpData: Byte; var TmpLength: Integer): WordBool;
    function SetUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex: Integer; 
                        var TmpData: Byte): WordBool;
    function GetAllUserInfo(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                            var Name: WideString; var Password: WideString; var Privilege: Integer; 
                            var Enabled: WordBool): WordBool;
    function DelUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex: Integer): WordBool;
    function RefreshData(dwMachineNumber: Integer): WordBool;
    function FPTempConvert(var TmpData1: Byte; var TmpData2: Byte; var Size: Integer): WordBool;
    function SetCommPassword(CommKey: Integer): WordBool;
    function GetUserGroup(dwMachineNumber: Integer; dwEnrollNumber: Integer; var UserGrp: Integer): WordBool;
    function SetUserGroup(dwMachineNumber: Integer; dwEnrollNumber: Integer; UserGrp: Integer): WordBool;
    function GetTZInfo(dwMachineNumber: Integer; TZIndex: Integer; var TZ: WideString): WordBool;
    function SetTZInfo(dwMachineNumber: Integer; TZIndex: Integer; const TZ: WideString): WordBool;
    function GetUnlockGroups(dwMachineNumber: Integer; var Grps: WideString): WordBool;
    function SetUnlockGroups(dwMachineNumber: Integer; const Grps: WideString): WordBool;
    function GetGroupTZs(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: Integer): WordBool;
    function SetGroupTZs(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: Integer): WordBool;
    function GetUserTZs(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: Integer): WordBool;
    function SetUserTZs(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: Integer): WordBool;
    function ACUnlock(dwMachineNumber: Integer; Delay: Integer): WordBool;
    function GetACFun(var ACFun: Integer): WordBool;
    function GetGeneralLogDataStr(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                  var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                                  var TimeStr: WideString): WordBool;
    function GetUserTmpStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwFingerIndex: Integer; var TmpData: WideString; var TmpLength: Integer): WordBool;
    function SetUserTmpStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwFingerIndex: Integer; const TmpData: WideString): WordBool;
    function GetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              var dwMachinePrivilege: Integer; var dwEnrollData: WideString; 
                              var dwPassWord: Integer): WordBool;
    function SetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              dwMachinePrivilege: Integer; const dwEnrollData: WideString; 
                              dwPassWord: Integer): WordBool;
    function GetGroupTZStr(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: WideString): WordBool;
    function SetGroupTZStr(dwMachineNumber: Integer; GroupIndex: Integer; const TZs: WideString): WordBool;
    function GetUserTZStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: WideString): WordBool;
    function SetUserTZStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; const TZs: WideString): WordBool;
    function FPTempConvertStr(const TmpData1: WideString; var TmpData2: WideString; 
                              var Size: Integer): WordBool;
    function GetFPTempLengthStr(const dwEnrollData: WideString): Integer;
    function GetUserInfoByPIN2(dwMachineNumber: Integer; var Name: WideString; 
                               var Password: WideString; var Privilege: Integer; 
                               var Enabled: WordBool): WordBool;
    function GetUserInfoByCard(dwMachineNumber: Integer; var Name: WideString; 
                               var Password: WideString; var Privilege: Integer; 
                               var Enabled: WordBool): WordBool;
    function CaptureImage(FullImage: WordBool; var Width: Integer; var Height: Integer; 
                          var Image: Byte; const ImageFile: WideString): WordBool;
    function UpdateFirmware(const FirmwareFile: WideString): WordBool;
    function StartEnroll(UserID: Integer; FingerID: Integer): WordBool;
    function StartVerify(UserID: Integer; FingerID: Integer): WordBool;
    function StartIdentify: WordBool;
    function CancelOperation: WordBool;
    function QueryState(var State: Integer): WordBool;
    function BackupData(const DataFile: WideString): WordBool;
    function RestoreData(const DataFile: WideString): WordBool;
    function WriteLCD(Row: Integer; Col: Integer; const Text: WideString): WordBool;
    function ClearLCD: WordBool;
    function Beep(DelayMS: Integer): WordBool;
    function PlayVoice(Position: Integer; Length: Integer): WordBool;
    function PlayVoiceByIndex(Index: Integer): WordBool;
    function EnableClock(Enabled: Integer): WordBool;
    function GetUserIDByPIN2(PIN2: Integer; var UserID: Integer): WordBool;
    function GetPIN2(UserID: Integer; var PIN2: Integer): WordBool;
    function FPTempConvertNew(var TmpData1: Byte; var TmpData2: Byte; var Size: Integer): WordBool;
    function FPTempConvertNewStr(const TmpData1: WideString; var TmpData2: WideString; 
                                 var Size: Integer): WordBool;
    function ReadAllTemplate(dwMachineNumber: Integer): WordBool;
    function DisableDeviceWithTimeOut(dwMachineNumber: Integer; TimeOutSec: Integer): WordBool;
    function SetDeviceTime2(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                            dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool;
    function ClearSLog(dwMachineNumber: Integer): WordBool;
    function RestartDevice(dwMachineNumber: Integer): WordBool;
    function GetDeviceMAC(dwMachineNumber: Integer; var sMAC: WideString): WordBool;
    function SetDeviceMAC(dwMachineNumber: Integer; const sMAC: WideString): WordBool;
    function GetWiegandFmt(dwMachineNumber: Integer; var sWiegandFmt: WideString): WordBool;
    function SetWiegandFmt(dwMachineNumber: Integer; const sWiegandFmt: WideString): WordBool;
    function ClearSMS(dwMachineNumber: Integer): WordBool;
    function GetSMS(dwMachineNumber: Integer; ID: Integer; var Tag: Integer; 
                    var ValidMinutes: Integer; var StartTime: WideString; var Content: WideString): WordBool;
    function SetSMS(dwMachineNumber: Integer; ID: Integer; Tag: Integer; ValidMinutes: Integer; 
                    const StartTime: WideString; const Content: WideString): WordBool;
    function DeleteSMS(dwMachineNumber: Integer; ID: Integer): WordBool;
    function SetUserSMS(dwMachineNumber: Integer; dwEnrollNumber: Integer; SMSID: Integer): WordBool;
    function DeleteUserSMS(dwMachineNumber: Integer; dwEnrollNumber: Integer; SMSID: Integer): WordBool;
    function GetCardFun(dwMachineNumber: Integer; var CardFun: Integer): WordBool;
    function ClearUserSMS(dwMachineNumber: Integer): WordBool;
    function SetDeviceCommPwd(dwMachineNumber: Integer; CommKey: Integer): WordBool;
    function GetDoorState(MachineNumber: Integer; var State: Integer): WordBool;
    function GetVendor(var strVendor: WideString): WordBool;
    function GetSensorSN(dwMachineNumber: Integer; var SensorSN: WideString): WordBool;
    function ReadCustData(dwMachineNumber: Integer; var CustData: WideString): WordBool;
    function WriteCustData(dwMachineNumber: Integer; const CustData: WideString): WordBool;
    function BeginBatchUpdate(dwMachineNumber: Integer; UpdateFlag: Integer): WordBool;
    function BatchUpdate(dwMachineNumber: Integer): WordBool;
    function ClearData(dwMachineNumber: Integer; DataFlag: Integer): WordBool;
    function GetDataFile(dwMachineNumber: Integer; DataFlag: Integer; const FileName: WideString): WordBool;
    function WriteCard(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex1: Integer; 
                       var TmpData1: Byte; dwFingerIndex2: Integer; var TmpData2: Byte; 
                       dwFingerIndex3: Integer; var TmpData3: Byte; dwFingerIndex4: Integer; 
                       var TmpData4: Byte): WordBool;
    function GetGeneralExtLogData(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                  var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                                  var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                  var dwHour: Integer; var dwMinute: Integer; 
                                  var dwSecond: Integer; var dwWorkCode: Integer; 
                                  var dwReserved: Integer): WordBool;
    function EmptyCard(dwMachineNumber: Integer): WordBool;
    function GetDeviceStrInfo(dwMachineNumber: Integer; dwInfo: Integer; out Value: WideString): WordBool;
    function GetSysOption(dwMachineNumber: Integer; const Option: WideString; out Value: WideString): WordBool;
    function SetUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer; VerifyStyle: Integer; 
                           var Reserved: Byte): WordBool;
    function GetUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           out VerifyStyle: Integer; out Reserved: Byte): WordBool;
    function DeleteUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer): WordBool;
    function SSR_GetGeneralLogData(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                   out dwVerifyMode: Integer; out dwInOutMode: Integer; 
                                   out dwYear: Integer; out dwMonth: Integer; out dwDay: Integer; 
                                   out dwHour: Integer; out dwMinute: Integer; 
                                   out dwSecond: Integer; var dwWorkCode: Integer): WordBool;
    function SSR_GetAllUserInfo(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                out Name: WideString; out Password: WideString; 
                                out Privilege: Integer; out Enabled: WordBool): WordBool;
    function SSR_GetUserInfo(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             out Name: WideString; out Password: WideString; 
                             out Privilege: Integer; out Enabled: WordBool): WordBool;
    function SSR_GetUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFingerIndex: Integer; out TmpData: Byte; out TmpLength: Integer): WordBool;
    function SSR_GetUserTmpStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer; out TmpData: WideString; 
                               out TmpLength: Integer): WordBool;
    function SSR_DeleteEnrollData(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                  dwBackupNumber: Integer): WordBool;
    function SSR_SetUserInfo(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             const Name: WideString; const Password: WideString; 
                             Privilege: Integer; Enabled: WordBool): WordBool;
    function SSR_SetUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFingerIndex: Integer; var TmpData: Byte): WordBool;
    function SSR_SetUserTmpStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer; const TmpData: WideString): WordBool;
    function SSR_DelUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFingerIndex: Integer): WordBool;
    function SetWorkCode(WorkCodeID: Integer; AWorkCode: Integer): WordBool;
    function GetWorkCode(WorkCodeID: Integer; out AWorkCode: Integer): WordBool;
    function DeleteWorkCode(WorkCodeID: Integer): WordBool;
    function ClearWorkCode: WordBool;
    function ReadAttRule(dwMachineNumber: Integer): WordBool;
    function ReadDPTInfo(dwMachineNumber: Integer): WordBool;
    function SaveTheDataToFile(dwMachineNumber: Integer; const TheFilePath: WideString; 
                               FileFlag: Integer): WordBool;
    function ReadTurnInfo(dwMachineNumber: Integer): WordBool;
    function SSR_OutPutHTMLRep(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               const AttFile: WideString; const UserFile: WideString; 
                               const DeptFile: WideString; const TimeClassFile: WideString; 
                               const AttruleFile: WideString; BYear: Integer; BMonth: Integer; 
                               BDay: Integer; BHour: Integer; BMinute: Integer; BSecond: Integer; 
                               EYear: Integer; EMonth: Integer; EDay: Integer; EHour: Integer; 
                               EMinute: Integer; ESecond: Integer; const TempPath: WideString; 
                               const OutFileName: WideString; HTMLFlag: Integer; resv1: Integer; 
                               const resv2: WideString): WordBool;
    function ReadAOptions(const AOption: WideString; out AValue: WideString): WordBool;
    function ReadRTLog(dwMachineNumber: Integer): WordBool;
    function GetRTLog(dwMachineNumber: Integer): WordBool;
    function GetHIDEventCardNumAsStr(out strHIDEventCardNum: WideString): WordBool;
    function GetStrCardNumber(out ACardNumber: WideString): WordBool;
    function SetStrCardNumber(const ACardNumber: WideString): WordBool;
    function RegEvent(dwMachineNumber: Integer; EventMask: Integer): WordBool;
    function CancelBatchUpdate(dwMachineNumber: Integer): WordBool;
    function SetSysOption(dwMachineNumber: Integer; const Option: WideString; 
                          const Value: WideString): WordBool;
    function Connect_Modem(ComPort: Integer; MachineNumber: Integer; BaudRate: Integer; 
                           const Telephone: WideString): WordBool;
    function UseGroupTimeZone: WordBool;
    function SetHoliday(dwMachineNumber: Integer; const Holiday: WideString): WordBool;
    function GetHoliday(dwMachineNumber: Integer; var Holiday: WideString): WordBool;
    function SetDaylight(dwMachineNumber: Integer; Support: Integer; const BeginTime: WideString; 
                         const EndTime: WideString): WordBool;
    function GetDaylight(dwMachineNumber: Integer; var Support: Integer; var BeginTime: WideString; 
                         var EndTime: WideString): WordBool;
    function SSR_SetUnLockGroup(dwMachineNumber: Integer; CombNo: Integer; Group1: Integer; 
                                Group2: Integer; Group3: Integer; Group4: Integer; Group5: Integer): WordBool;
    function SSR_GetUnLockGroup(dwMachineNumber: Integer; CombNo: Integer; var Group1: Integer; 
                                var Group2: Integer; var Group3: Integer; var Group4: Integer; 
                                var Group5: Integer): WordBool;
    function SSR_SetGroupTZ(dwMachineNumber: Integer; GroupNo: Integer; Tz1: Integer; Tz2: Integer; 
                            Tz3: Integer; VaildHoliday: Integer; VerifyStyle: Integer): WordBool;
    function SSR_GetGroupTZ(dwMachineNumber: Integer; GroupNo: Integer; var Tz1: Integer; 
                            var Tz2: Integer; var Tz3: Integer; var VaildHoliday: Integer; 
                            var VerifyStyle: Integer): WordBool;
    function SSR_GetHoliday(dwMachineNumber: Integer; HolidayID: Integer; var BeginMonth: Integer; 
                            var BeginDay: Integer; var EndMonth: Integer; var EndDay: Integer; 
                            var TimeZoneID: Integer): WordBool;
    function SSR_SetHoliday(dwMachineNumber: Integer; HolidayID: Integer; BeginMonth: Integer; 
                            BeginDay: Integer; EndMonth: Integer; EndDay: Integer; 
                            TimeZoneID: Integer): WordBool;
    function GetPlatform(dwMachineNumber: Integer; var Platform: WideString): WordBool;
    function SSR_SetUserSMS(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            SMSID: Integer): WordBool;
    function SSR_DeleteUserSMS(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               SMSID: Integer): WordBool;
    function IsTFTMachine(dwMachineNumber: Integer): WordBool;
    function SSR_EnableUser(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            bFlag: WordBool): WordBool;
    function SendCMDMsg(dwMachineNumber: Integer; Param1: Integer; Param2: Integer): WordBool;
    function SendFile(dwMachineNumber: Integer; const FileName: WideString): WordBool;
    function SetLanguageByID(dwMachineNumber: Integer; LanguageID: Integer; 
                             const Language: WideString): WordBool;
    function ReadFile(dwMachineNumber: Integer; const FileName: WideString; 
                      const FilePath: WideString): WordBool;
    function SetLastCount(count: Integer): WordBool;
    function SetCustomizeAttState(dwMachineNumber: Integer; StateID: Integer; NewState: Integer): WordBool;
    function DelCustomizeAttState(dwMachineNumber: Integer; StateID: Integer): WordBool;
    function EnableCustomizeAttState(dwMachineNumber: Integer; StateID: Integer; Enable: Integer): WordBool;
    function SetCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer; 
                               const FileName: WideString): WordBool;
    function DelCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer): WordBool;
    function EnableCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer; Enable: Integer): WordBool;
    function StartEnrollEx(const UserID: WideString; FingerID: Integer; Flag: Integer): WordBool;
    function SSR_SetUserTmpExt(dwMachineNumber: Integer; IsDeleted: Integer; 
                               const dwEnrollNumber: WideString; dwFingerIndex: Integer; 
                               var TmpData: Byte): WordBool;
    function SSR_DelUserTmpExt(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer): WordBool;
    function SSR_DeleteEnrollDataExt(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                     dwBackupNumber: Integer): WordBool;
    function SSR_GetWorkCode(AWorkCode: Integer; out Name: WideString): WordBool;
    function SSR_SetWorkCode(AWorkCode: Integer; const Name: WideString): WordBool;
    function SSR_DeleteWorkCode(PIN: Integer): WordBool;
    function SSR_ClearWorkCode: WordBool;
    function SSR_GetSuperLogData(MachineNumber: Integer; out Number: Integer; 
                                 out Admin: WideString; out User: WideString; 
                                 out Manipulation: Integer; out Time: WideString; 
                                 out Params1: Integer; out Params2: Integer; out Params3: Integer): WordBool;
    function SSR_SetShortkey(ShortKeyID: Integer; ShortKeyFun: Integer; StateCode: Integer; 
                             const StateName: WideString; StateAutoChange: Integer; 
                             const StateAutoChangeTime: WideString): WordBool;
    function SSR_GetShortkey(ShortKeyID: Integer; var ShortKeyFun: Integer; var StateCode: Integer; 
                             var StateName: WideString; var AutoChange: Integer; 
                             var AutoChangeTime: WideString): WordBool;
    function Connect_USB(MachineNumber: Integer): WordBool;
    function GetSuperLogData2(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                              var dwSEnrollNumber: Integer; var Params4: Integer; 
                              var Params1: Integer; var Params2: Integer; 
                              var dwManipulation: Integer; var Params3: Integer; 
                              var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                              var dwHour: Integer; var dwMinute: Integer; var dwSecs: Integer): WordBool;
    function GetUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                         dwFaceIndex: Integer; var TmpData: Byte; var TmpLength: Integer): WordBool;
    function SetUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                         dwFaceIndex: Integer; var TmpData: Byte; TmpLength: Integer): WordBool;
    function DelUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                         dwFaceIndex: Integer): WordBool;
    function GetUserFaceStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFaceIndex: Integer; var TmpData: WideString; var TmpLength: Integer): WordBool;
    function SetUserFaceStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFaceIndex: Integer; const TmpData: WideString; TmpLength: Integer): WordBool;
    function GetUserTmpEx(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                          dwFingerIndex: Integer; out Flag: Integer; out TmpData: Byte; 
                          out TmpLength: Integer): WordBool;
    function GetUserTmpExStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             dwFingerIndex: Integer; out Flag: Integer; out TmpData: WideString; 
                             out TmpLength: Integer): WordBool;
    function SetUserTmpEx(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                          dwFingerIndex: Integer; Flag: Integer; var TmpData: Byte): WordBool;
    function SetUserTmpExStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             dwFingerIndex: Integer; Flag: Integer; const TmpData: WideString): WordBool;
    function MergeTemplate(var Templates: PByte1; FingerCount: Integer; var TemplateDest: Byte; 
                           var FingerSize: Integer): WordBool;
    function SplitTemplate(var Template: Byte; var Templates: PByte1; var FingerCount: Integer; 
                           var FingerSize: Integer): WordBool;
    function ReadUserAllTemplate(dwMachineNumber: Integer; const dwEnrollNumber: WideString): WordBool;
    function UpdateFile(const FileName: WideString): WordBool;
    function ReadLastestLogData(dwMachineNumber: Integer; NewLog: Integer; dwYear: Integer; 
                                dwMonth: Integer; dwDay: Integer; dwHour: Integer; 
                                dwMinute: Integer; dwSecond: Integer): WordBool;
    function SetOptionCommPwd(dwMachineNumber: Integer; const CommKey: WideString): WordBool;
    function ReadSuperLogDataEx(dwMachineNumber: Integer; dwYear_S: Integer; dwMonth_S: Integer; 
                                dwDay_S: Integer; dwHour_S: Integer; dwMinute_S: Integer; 
                                dwSecond_S: Integer; dwYear_E: Integer; dwMonth_E: Integer; 
                                dwDay_E: Integer; dwHour_E: Integer; dwMinute_E: Integer; 
                                dwSecond_E: Integer; dwLogIndex: Integer): WordBool;
    function GetSuperLogDataEx(dwMachineNumber: Integer; var EnrollNumber: WideString; 
                               var Params4: Integer; var Params1: Integer; var Params2: Integer; 
                               var dwManipulation: Integer; var Params3: Integer; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer): WordBool;
    function GetPhotoByName(dwMachineNumber: Integer; const PhotoName: WideString; 
                            out PhotoData: Byte; out PhotoLength: Integer): WordBool;
    function GetPhotoNamesByTime(dwMachineNumber: Integer; iFlag: Integer; const sTime: WideString; 
                                 const eTime: WideString; out AllPhotoName: WideString): WordBool;
    function ClearPhotoByTime(dwMachineNumber: Integer; iFlag: Integer; const sTime: WideString; 
                              const eTime: WideString): WordBool;
    function GetPhotoCount(dwMachineNumber: Integer; out count: Integer; iFlag: Integer): WordBool;
    function ClearDataEx(dwMachineNumber: Integer; const TableName: WideString): WordBool;
    function GetDataFileEx(dwMachineNumber: Integer; const SourceFileName: WideString; 
                           const DestFileName: WideString): WordBool;
    function SSR_SetDeviceData(dwMachineNumber: Integer; const TableName: WideString; 
                               const Datas: WideString; const Options: WideString): WordBool;
    function SSR_GetDeviceData(dwMachineNumber: Integer; out Buffer: WideString; 
                               BufferSize: Integer; const TableName: WideString; 
                               const FiledNames: WideString; const Filter: WideString; 
                               const Options: WideString): WordBool;
    function UpdateLogo(dwMachineNumber: Integer; const FileName: WideString): WordBool;
    function SetCommuTimeOut(timeOut: Integer): WordBool;
    function SendFileByType(dwMachineNumber: Integer; const FileName: WideString; iType: Integer): WordBool;
    function SetCommProType(proType: Integer): WordBool;
    function SetCompatOldFirmware(nCompatOkdFirmware: Integer): WordBool;
    function Connect_P4P(const uid: WideString): WordBool;
    function SetDeviceTableData(dwMachineNumber: Integer; const TableName: WideString; 
                                const Datas: WideString; const Options: WideString; 
                                out count: Integer): WordBool;
    procedure GetConnectStatus(var dwErrorCode: Integer);
    function SetManufacturerData(dwMachineNumber: Integer; const Name: WideString; 
                                 const Value: WideString): WordBool;
    function GetDeviceStatusEx(dwMachineNumber: Integer): Integer;
    procedure CancelByUser;
    function SSR_GetDeviceDataCount(const TableName: WideString; const Filter: WideString; 
                                    const Options: WideString): Integer;
    function SSR_DeleteDeviceData(dwMachineNumber: Integer; const TableName: WideString; 
                                  const Datas: WideString; const Options: WideString): WordBool;
    function ReadTimeGLogData(dwMachineNumber: Integer; const sTime: WideString; 
                              const eTime: WideString): WordBool;
    function DeleteAttlogBetweenTheDate(dwMachineNumber: Integer; const sTime: WideString; 
                                        const eTime: WideString): WordBool;
    function DeleteAttlogByTime(dwMachineNumber: Integer; const sTime: WideString): WordBool;
    function ReadNewGLogData(dwMachineNumber: Integer): WordBool;
    function IsNewFirmwareMachine(dwMachineNumber: Integer): WordBool;
    function UploadUserPhoto(dwMachineNumber: Integer; const FileName: WideString): WordBool;
    function DownloadUserPhoto(dwMachineNumber: Integer; const FileName: WideString; 
                               const FilePath: WideString): WordBool;
    function DeleteUserPhoto(dwMachineNumber: Integer; const FileName: WideString): WordBool;
    function GetAllUserPhoto(dwMachineNumber: Integer; const dlDir: WideString): WordBool;
    function SetBellSchDataEx(dwMachineNumber: Integer; weekDay: Integer; Index: Integer; 
                              Enable: Integer; Hour: Integer; min: Integer; voice: Integer; 
                              way: Integer; InerBellDelay: Integer; ExtBellDelay: Integer): WordBool;
    function GetBellSchDataEx(dwMachineNumber: Integer; weekDay: Integer; Index: Integer; 
                              out Enable: Integer; out Hour: Integer; out min: Integer; 
                              out voice: Integer; out way: Integer; out InerBellDelay: Integer; 
                              out ExtBellDelay: Integer): WordBool;
    function GetDayBellSchCount(dwMachineNumber: Integer; out DayBellCnt: Integer): WordBool;
    function GetMaxBellIDInBellSchData(dwMachineNumber: Integer; out MaxBellID: Integer): WordBool;
    function ReadAllBellSchData(dwMachineNumber: Integer): WordBool;
    function GetEachBellInfo(dwMachineNumber: Integer; out weekDay: Integer; out Index: Integer; 
                             out Enable: Integer; out Hour: Integer; out min: Integer; 
                             out voice: Integer; out way: Integer; out InerBellDelay: Integer; 
                             out ExtBellDelay: Integer): WordBool;
    function SetUserValidDate(dwMachineNumber: Integer; const UserID: WideString; Expires: Integer; 
                              ValidCount: Integer; const StartDate: WideString; 
                              const EndDate: WideString): WordBool;
    function GetUserValidDate(dwMachineNumber: Integer; const UserID: WideString; 
                              out Expires: Integer; out ValidCount: Integer; 
                              out StartDate: WideString; out EndDate: WideString): WordBool;
    function SetUserValidDateBatch(dwMachineNumber: Integer; const Datas: WideString): WordBool;
    function GetUserValidDateBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                   BufferSize: Integer): WordBool;
    function SetUserVerifyStyle(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                VerifyStyle: Integer; var Reserved: Byte): WordBool;
    function GetUserVerifyStyle(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                out VerifyStyle: Integer; out Reserved: Byte): WordBool;
    function SetUserVerifyStyleBatch(dwMachineNumber: Integer; const Datas: WideString; 
                                     var Reserved: Byte): WordBool;
    function GetUserVerifyStyleBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                     BufferSize: Integer; out Reserved: Byte): WordBool;
    function GetDeviceFirmwareVersion(dwMachineNumber: Integer; var strVersion: WideString): WordBool;
    function SendFileEx(dwMachineNumber: Integer; const FileName: WideString; 
                        const FilePath: WideString): WordBool;
    function UploadTheme(dwMachineNumber: Integer; const FileName: WideString; 
                         const InDevName: WideString): WordBool;
    function UploadPicture(dwMachineNumber: Integer; const FileName: WideString; 
                           const InDevName: WideString): WordBool;
    function DeletePicture(dwMachineNumber: Integer; const FileName: WideString): WordBool;
    function DownloadPicture(dwMachineNumber: Integer; const FileName: WideString; 
                             const FilePath: WideString): WordBool;
    function TurnOffAlarm(dwMachineNumber: Integer): WordBool;
    function CloseAlarm(dwMachineNumber: Integer): WordBool;
    function SSR_SetWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString; 
                               const Name: WideString): WordBool;
    function SSR_GetWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString; 
                               out Name: WideString): WordBool;
    function SSR_DeleteWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString): WordBool;
    function SSR_GetGeneralLogDataEx(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                     out dwVerifyMode: Integer; out dwInOutMode: Integer; 
                                     out dwYear: Integer; out dwMonth: Integer; out dwDay: Integer; 
                                     out dwHour: Integer; out dwMinute: Integer; 
                                     out dwSecond: Integer; out dwWorkCode: WideString): WordBool;
    function SSR_SetWorkCodeExBatch(dwMachineNumber: Integer; const Datas: WideString): WordBool;
    function SSR_GetWorkCodeExBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                    BufferSize: Integer): WordBool;
    function SSR_GetWorkCodeExByID(dwMachineNumber: Integer; WorkCodeID: Integer; 
                                   out WorkCodeNum: WideString; out Name: WideString): WordBool;
    function SSR_GetWorkCodeIDByName(dwMachineNumber: Integer; const workcodeName: WideString; 
                                     out WorkCodeID: Integer): WordBool;
    function SetEventMode(nType: Integer): WordBool;
    function GetAllSFIDName(dwMachineNumber: Integer; out ShortkeyIDName: WideString; 
                            BufferSize1: Integer; out FunctionIDName: WideString; 
                            BufferSize2: Integer): WordBool;
    function SetShortkey(dwMachineNumber: Integer; ShortKeyID: Integer; 
                         const ShortKeyName: WideString; const FunctionName: WideString; 
                         ShortKeyFun: Integer; StateCode: Integer; const StateName: WideString; 
                         const Description: WideString; StateAutoChange: Integer; 
                         const StateAutoChangeTime: WideString): WordBool;
    function GetShortkey(dwMachineNumber: Integer; ShortKeyID: Integer; 
                         var ShortKeyName: WideString; var FunctionName: WideString; 
                         var ShortKeyFun: Integer; var StateCode: Integer; 
                         var StateName: WideString; var Description: WideString; 
                         var AutoChange: Integer; var AutoChangeTime: WideString): WordBool;
    function GetAllAppFun(dwMachineNumber: Integer; out AppName: WideString; 
                          out FunofAppName: WideString): WordBool;
    function GetAllRole(dwMachineNumber: Integer; out RoleName: WideString): WordBool;
    function GetAppOfRole(dwMachineNumber: Integer; Permission: Integer; out AppName: WideString): WordBool;
    function GetFunOfRole(dwMachineNumber: Integer; Permission: Integer; out FunName: WideString): WordBool;
    function SetPermOfAppFun(dwMachineNumber: Integer; Permission: Integer; 
                             const AppName: WideString; const FunName: WideString): WordBool;
    function DeletePermOfAppFun(dwMachineNumber: Integer; Permission: Integer; 
                                const AppName: WideString; const FunName: WideString): WordBool;
    function IsUserDefRoleEnable(dwMachineNumber: Integer; Permission: Integer; out Enable: WordBool): WordBool;
    function SearchDevice(const commType: WideString; const address: WideString; 
                          out DevBuffer: WideString; DevBufferSize: Integer): WordBool;
    function SetUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString; 
                               var IDCardData: Byte; DataLen: Integer): WordBool;
    function GetUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString; 
                               out IDCardData: Byte; var DataLen: Integer): WordBool;
    function DelUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString): WordBool;
    property  ControlInterface: IZKEM read GetControlInterface;
    property  DefaultInterface: IZKEM read GetControlInterface;
    property AccTimeZones[Index: Integer]: Integer read Get_AccTimeZones write Set_AccTimeZones;
    property CardNumber[Index: Integer]: Integer read Get_CardNumber write Set_CardNumber;
    property PINWidth: Integer index 102 read GetIntegerProp;
    property STR_CardNumber[Index: Integer]: WideString read Get_STR_CardNumber write Set_STR_CardNumber;
    property SSRPin: Integer index 191 read GetIntegerProp;
    property MaxP4PConnect: Integer index 274 read GetIntegerProp;
  published
    property Anchors;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property ReadMark: WordBool index 1 read GetWordBoolProp write SetWordBoolProp stored False;
    property CommPort: Integer index 2 read GetIntegerProp write SetIntegerProp stored False;
    property ConvertBIG5: Integer index 64 read GetIntegerProp write SetIntegerProp stored False;
    property BASE64: Integer index 76 read GetIntegerProp write SetIntegerProp stored False;
    property PIN2: Integer index 78 read GetIntegerProp write SetIntegerProp stored False;
    property AccGroup: Integer index 79 read GetIntegerProp write SetIntegerProp stored False;
    property MachineNumber: Integer index 123 read GetIntegerProp write SetIntegerProp stored False;
    property PullMode: Integer index 241 read GetIntegerProp write SetIntegerProp stored False;
    property BatchDataMode: Integer index 610 read GetIntegerProp write SetIntegerProp stored False;
    property OnAttTransaction: TCZKEMOnAttTransaction read FOnAttTransaction write FOnAttTransaction;
    property OnKeyPress: TCZKEMOnKeyPress read FOnKeyPress write FOnKeyPress;
    property OnEnrollFinger: TCZKEMOnEnrollFinger read FOnEnrollFinger write FOnEnrollFinger;
    property OnNewUser: TCZKEMOnNewUser read FOnNewUser write FOnNewUser;
    property OnEMData: TCZKEMOnEMData read FOnEMData write FOnEMData;
    property OnConnected: TNotifyEvent read FOnConnected write FOnConnected;
    property OnDisConnected: TNotifyEvent read FOnDisConnected write FOnDisConnected;
    property OnFinger: TNotifyEvent read FOnFinger write FOnFinger;
    property OnVerify: TCZKEMOnVerify read FOnVerify write FOnVerify;
    property OnFingerFeature: TCZKEMOnFingerFeature read FOnFingerFeature write FOnFingerFeature;
    property OnHIDNum: TCZKEMOnHIDNum read FOnHIDNum write FOnHIDNum;
    property OnDoor: TCZKEMOnDoor read FOnDoor write FOnDoor;
    property OnAlarm: TCZKEMOnAlarm read FOnAlarm write FOnAlarm;
    property OnWriteCard: TCZKEMOnWriteCard read FOnWriteCard write FOnWriteCard;
    property OnEmptyCard: TCZKEMOnEmptyCard read FOnEmptyCard write FOnEmptyCard;
    property OnDeleteTemplate: TCZKEMOnDeleteTemplate read FOnDeleteTemplate write FOnDeleteTemplate;
    property OnAttTransactionEx: TCZKEMOnAttTransactionEx read FOnAttTransactionEx write FOnAttTransactionEx;
    property OnEnrollFingerEx: TCZKEMOnEnrollFingerEx read FOnEnrollFingerEx write FOnEnrollFingerEx;
    property OnGeneralEvent: TCZKEMOnGeneralEvent read FOnGeneralEvent write FOnGeneralEvent;
    property OnAttTransactionEx_New: TCZKEMOnAttTransactionEx_New read FOnAttTransactionEx_New write FOnAttTransactionEx_New;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'X100C';

  dtlOcxPage = 'X100C';

implementation

uses System.Win.ComObj;

procedure TCZKEM.InitControlData;
const
  CEventDispIDs: array [0..19] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000005, $00000006,
    $00000007, $00000008, $00000009, $0000000A, $0000000B, $0000000C,
    $0000000D, $0000000E, $0000000F, $00000010, $00000011, $00000012,
    $00000013, $00000014);
  CControlData: TControlData2 = (
    ClassID:      '{00853A19-BD51-419B-9269-2DABE57EB61F}';
    EventIID:     '{CF83B580-5D32-4C65-B44E-BEDC750CDFA8}';
    EventCount:   20;
    EventDispIDs: @CEventDispIDs;
    LicenseKey:   nil (*HR:$80004002*);
    Flags:        $00000000;
    Version:      500);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := UIntPtr(@@FOnAttTransaction) - UIntPtr(Self);
end;

procedure TCZKEM.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IZKEM;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TCZKEM.GetControlInterface: IZKEM;
begin
  CreateControl;
  Result := FIntf;
end;

function TCZKEM.Get_AccTimeZones(Index: Integer): Integer;
begin
  Result := DefaultInterface.AccTimeZones[Index];
end;

procedure TCZKEM.Set_AccTimeZones(Index: Integer; pVal: Integer);
begin
  DefaultInterface.AccTimeZones[Index] := pVal;
end;

function TCZKEM.Get_CardNumber(Index: Integer): Integer;
begin
  Result := DefaultInterface.CardNumber[Index];
end;

procedure TCZKEM.Set_CardNumber(Index: Integer; pVal: Integer);
begin
  DefaultInterface.CardNumber[Index] := pVal;
end;

function TCZKEM.Get_STR_CardNumber(Index: Integer): WideString;
begin
  Result := DefaultInterface.STR_CardNumber[Index];
end;

procedure TCZKEM.Set_STR_CardNumber(Index: Integer; const pVal: WideString);
begin
  DefaultInterface.STR_CardNumber[Index] := pVal;
end;

function TCZKEM.ClearAdministrators(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ClearAdministrators(dwMachineNumber);
end;

function TCZKEM.DeleteEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                 dwEMachineNumber: Integer; dwBackupNumber: Integer): WordBool;
begin
  Result := DefaultInterface.DeleteEnrollData(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                              dwBackupNumber);
end;

function TCZKEM.ReadSuperLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadSuperLogData(dwMachineNumber);
end;

function TCZKEM.ReadAllSLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllSLogData(dwMachineNumber);
end;

function TCZKEM.ReadGeneralLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadGeneralLogData(dwMachineNumber);
end;

function TCZKEM.ReadAllGLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllGLogData(dwMachineNumber);
end;

function TCZKEM.EnableUser(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwEMachineNumber: Integer; dwBackupNumber: Integer; bFlag: WordBool): WordBool;
begin
  Result := DefaultInterface.EnableUser(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                        dwBackupNumber, bFlag);
end;

function TCZKEM.EnableDevice(dwMachineNumber: Integer; bFlag: WordBool): WordBool;
begin
  Result := DefaultInterface.EnableDevice(dwMachineNumber, bFlag);
end;

function TCZKEM.GetDeviceStatus(dwMachineNumber: Integer; dwStatus: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceStatus(dwMachineNumber, dwStatus, dwValue);
end;

function TCZKEM.GetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; var dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceInfo(dwMachineNumber, dwInfo, dwValue);
end;

function TCZKEM.SetDeviceInfo(dwMachineNumber: Integer; dwInfo: Integer; dwValue: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceInfo(dwMachineNumber, dwInfo, dwValue);
end;

function TCZKEM.SetDeviceTime(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceTime(dwMachineNumber);
end;

procedure TCZKEM.PowerOnAllDevice;
begin
  DefaultInterface.PowerOnAllDevice;
end;

function TCZKEM.PowerOffDevice(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.PowerOffDevice(dwMachineNumber);
end;

function TCZKEM.ModifyPrivilege(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                dwMachinePrivilege: Integer): WordBool;
begin
  Result := DefaultInterface.ModifyPrivilege(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                             dwBackupNumber, dwMachinePrivilege);
end;

procedure TCZKEM.GetLastError(var dwErrorCode: Integer);
begin
  DefaultInterface.GetLastError(dwErrorCode);
end;

function TCZKEM.GetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              var dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                              var dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.GetEnrollData(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                           dwBackupNumber, dwMachinePrivilege, dwEnrollData, 
                                           dwPassWord);
end;

function TCZKEM.SetEnrollData(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                              dwMachinePrivilege: Integer; var dwEnrollData: Integer; 
                              dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.SetEnrollData(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                           dwBackupNumber, dwMachinePrivilege, dwEnrollData, 
                                           dwPassWord);
end;

function TCZKEM.GetDeviceTime(dwMachineNumber: Integer; var dwYear: Integer; var dwMonth: Integer; 
                              var dwDay: Integer; var dwHour: Integer; var dwMinute: Integer; 
                              var dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.GetDeviceTime(dwMachineNumber, dwYear, dwMonth, dwDay, dwHour, 
                                           dwMinute, dwSecond);
end;

function TCZKEM.GetGeneralLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                  var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                                  var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                                  var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                  var dwHour: Integer; var dwMinute: Integer): WordBool;
begin
  Result := DefaultInterface.GetGeneralLogData(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                               dwEMachineNumber, dwVerifyMode, dwInOutMode, dwYear, 
                                               dwMonth, dwDay, dwHour, dwMinute);
end;

function TCZKEM.GetSuperLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                var dwSEnrollNumber: Integer; var Params4: Integer; 
                                var Params1: Integer; var Params2: Integer; 
                                var dwManipulation: Integer; var Params3: Integer; 
                                var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                var dwHour: Integer; var dwMinute: Integer): WordBool;
begin
  Result := DefaultInterface.GetSuperLogData(dwMachineNumber, dwTMachineNumber, dwSEnrollNumber, 
                                             Params4, Params1, Params2, dwManipulation, Params3, 
                                             dwYear, dwMonth, dwDay, dwHour, dwMinute);
end;

function TCZKEM.GetAllSLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                               var dwSEnrollNumber: Integer; var Params4: Integer; 
                               var Params1: Integer; var Params2: Integer; 
                               var dwManipulation: Integer; var Params3: Integer; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMinute: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllSLogData(dwMachineNumber, dwTMachineNumber, dwSEnrollNumber, 
                                            Params4, Params1, Params2, dwManipulation, Params3, 
                                            dwYear, dwMonth, dwDay, dwHour, dwMinute);
end;

function TCZKEM.GetAllGLogData(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                               var dwEnrollNumber: Integer; var dwEMachineNumber: Integer; 
                               var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                               var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                               var dwHour: Integer; var dwMinute: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllGLogData(dwMachineNumber, dwTMachineNumber, dwEnrollNumber, 
                                            dwEMachineNumber, dwVerifyMode, dwInOutMode, dwYear, 
                                            dwMonth, dwDay, dwHour, dwMinute);
end;

procedure TCZKEM.ConvertPassword(dwSrcPSW: Integer; var dwDestPSW: Integer; dwLength: Integer);
begin
  DefaultInterface.ConvertPassword(dwSrcPSW, dwDestPSW, dwLength);
end;

function TCZKEM.ReadAllUserID(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllUserID(dwMachineNumber);
end;

function TCZKEM.GetAllUserID(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                             var dwEMachineNumber: Integer; var dwBackupNumber: Integer; 
                             var dwMachinePrivilege: Integer; var dwEnable: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllUserID(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                          dwBackupNumber, dwMachinePrivilege, dwEnable);
end;

function TCZKEM.GetSerialNumber(dwMachineNumber: Integer; out dwSerialNumber: WideString): WordBool;
begin
  Result := DefaultInterface.GetSerialNumber(dwMachineNumber, dwSerialNumber);
end;

function TCZKEM.ClearKeeperData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ClearKeeperData(dwMachineNumber);
end;

function TCZKEM.GetBackupNumber(dwMachineNumber: Integer): Integer;
begin
  Result := DefaultInterface.GetBackupNumber(dwMachineNumber);
end;

function TCZKEM.GetProductCode(dwMachineNumber: Integer; out lpszProductCode: WideString): WordBool;
begin
  Result := DefaultInterface.GetProductCode(dwMachineNumber, lpszProductCode);
end;

function TCZKEM.GetFirmwareVersion(dwMachineNumber: Integer; var strVersion: WideString): WordBool;
begin
  Result := DefaultInterface.GetFirmwareVersion(dwMachineNumber, strVersion);
end;

function TCZKEM.GetSDKVersion(var strVersion: WideString): WordBool;
begin
  Result := DefaultInterface.GetSDKVersion(strVersion);
end;

function TCZKEM.ClearGLog(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ClearGLog(dwMachineNumber);
end;

function TCZKEM.GetFPTempLength(var dwEnrollData: Byte): Integer;
begin
  Result := DefaultInterface.GetFPTempLength(dwEnrollData);
end;

function TCZKEM.Connect_Com(ComPort: Integer; MachineNumber: Integer; BaudRate: Integer): WordBool;
begin
  Result := DefaultInterface.Connect_Com(ComPort, MachineNumber, BaudRate);
end;

function TCZKEM.Connect_Net(const IPAdd: WideString; Port: Integer): WordBool;
begin
  Result := DefaultInterface.Connect_Net(IPAdd, Port);
end;

procedure TCZKEM.Disconnect;
begin
  DefaultInterface.Disconnect;
end;

function TCZKEM.SetUserInfo(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            const Name: WideString; const Password: WideString; Privilege: Integer; 
                            Enabled: WordBool): WordBool;
begin
  Result := DefaultInterface.SetUserInfo(dwMachineNumber, dwEnrollNumber, Name, Password, 
                                         Privilege, Enabled);
end;

function TCZKEM.GetUserInfo(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                            var Name: WideString; var Password: WideString; var Privilege: Integer; 
                            var Enabled: WordBool): WordBool;
begin
  Result := DefaultInterface.GetUserInfo(dwMachineNumber, dwEnrollNumber, Name, Password, 
                                         Privilege, Enabled);
end;

function TCZKEM.SetDeviceIP(dwMachineNumber: Integer; const IPAddr: WideString): WordBool;
begin
  Result := DefaultInterface.SetDeviceIP(dwMachineNumber, IPAddr);
end;

function TCZKEM.GetDeviceIP(dwMachineNumber: Integer; var IPAddr: WideString): WordBool;
begin
  Result := DefaultInterface.GetDeviceIP(dwMachineNumber, IPAddr);
end;

function TCZKEM.GetUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwFingerIndex: Integer; var TmpData: Byte; var TmpLength: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserTmp(dwMachineNumber, dwEnrollNumber, dwFingerIndex, TmpData, 
                                        TmpLength);
end;

function TCZKEM.SetUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                           dwFingerIndex: Integer; var TmpData: Byte): WordBool;
begin
  Result := DefaultInterface.SetUserTmp(dwMachineNumber, dwEnrollNumber, dwFingerIndex, TmpData);
end;

function TCZKEM.GetAllUserInfo(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                               var Name: WideString; var Password: WideString; 
                               var Privilege: Integer; var Enabled: WordBool): WordBool;
begin
  Result := DefaultInterface.GetAllUserInfo(dwMachineNumber, dwEnrollNumber, Name, Password, 
                                            Privilege, Enabled);
end;

function TCZKEM.DelUserTmp(dwMachineNumber: Integer; dwEnrollNumber: Integer; dwFingerIndex: Integer): WordBool;
begin
  Result := DefaultInterface.DelUserTmp(dwMachineNumber, dwEnrollNumber, dwFingerIndex);
end;

function TCZKEM.RefreshData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.RefreshData(dwMachineNumber);
end;

function TCZKEM.FPTempConvert(var TmpData1: Byte; var TmpData2: Byte; var Size: Integer): WordBool;
begin
  Result := DefaultInterface.FPTempConvert(TmpData1, TmpData2, Size);
end;

function TCZKEM.SetCommPassword(CommKey: Integer): WordBool;
begin
  Result := DefaultInterface.SetCommPassword(CommKey);
end;

function TCZKEM.GetUserGroup(dwMachineNumber: Integer; dwEnrollNumber: Integer; var UserGrp: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserGroup(dwMachineNumber, dwEnrollNumber, UserGrp);
end;

function TCZKEM.SetUserGroup(dwMachineNumber: Integer; dwEnrollNumber: Integer; UserGrp: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserGroup(dwMachineNumber, dwEnrollNumber, UserGrp);
end;

function TCZKEM.GetTZInfo(dwMachineNumber: Integer; TZIndex: Integer; var TZ: WideString): WordBool;
begin
  Result := DefaultInterface.GetTZInfo(dwMachineNumber, TZIndex, TZ);
end;

function TCZKEM.SetTZInfo(dwMachineNumber: Integer; TZIndex: Integer; const TZ: WideString): WordBool;
begin
  Result := DefaultInterface.SetTZInfo(dwMachineNumber, TZIndex, TZ);
end;

function TCZKEM.GetUnlockGroups(dwMachineNumber: Integer; var Grps: WideString): WordBool;
begin
  Result := DefaultInterface.GetUnlockGroups(dwMachineNumber, Grps);
end;

function TCZKEM.SetUnlockGroups(dwMachineNumber: Integer; const Grps: WideString): WordBool;
begin
  Result := DefaultInterface.SetUnlockGroups(dwMachineNumber, Grps);
end;

function TCZKEM.GetGroupTZs(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: Integer): WordBool;
begin
  Result := DefaultInterface.GetGroupTZs(dwMachineNumber, GroupIndex, TZs);
end;

function TCZKEM.SetGroupTZs(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: Integer): WordBool;
begin
  Result := DefaultInterface.SetGroupTZs(dwMachineNumber, GroupIndex, TZs);
end;

function TCZKEM.GetUserTZs(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserTZs(dwMachineNumber, dwEnrollNumber, TZs);
end;

function TCZKEM.SetUserTZs(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserTZs(dwMachineNumber, dwEnrollNumber, TZs);
end;

function TCZKEM.ACUnlock(dwMachineNumber: Integer; Delay: Integer): WordBool;
begin
  Result := DefaultInterface.ACUnlock(dwMachineNumber, Delay);
end;

function TCZKEM.GetACFun(var ACFun: Integer): WordBool;
begin
  Result := DefaultInterface.GetACFun(ACFun);
end;

function TCZKEM.GetGeneralLogDataStr(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                     var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                                     var TimeStr: WideString): WordBool;
begin
  Result := DefaultInterface.GetGeneralLogDataStr(dwMachineNumber, dwEnrollNumber, dwVerifyMode, 
                                                  dwInOutMode, TimeStr);
end;

function TCZKEM.GetUserTmpStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwFingerIndex: Integer; var TmpData: WideString; 
                              var TmpLength: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserTmpStr(dwMachineNumber, dwEnrollNumber, dwFingerIndex, TmpData, 
                                           TmpLength);
end;

function TCZKEM.SetUserTmpStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              dwFingerIndex: Integer; const TmpData: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserTmpStr(dwMachineNumber, dwEnrollNumber, dwFingerIndex, TmpData);
end;

function TCZKEM.GetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                 dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                 var dwMachinePrivilege: Integer; var dwEnrollData: WideString; 
                                 var dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.GetEnrollDataStr(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                              dwBackupNumber, dwMachinePrivilege, dwEnrollData, 
                                              dwPassWord);
end;

function TCZKEM.SetEnrollDataStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                                 dwEMachineNumber: Integer; dwBackupNumber: Integer; 
                                 dwMachinePrivilege: Integer; const dwEnrollData: WideString; 
                                 dwPassWord: Integer): WordBool;
begin
  Result := DefaultInterface.SetEnrollDataStr(dwMachineNumber, dwEnrollNumber, dwEMachineNumber, 
                                              dwBackupNumber, dwMachinePrivilege, dwEnrollData, 
                                              dwPassWord);
end;

function TCZKEM.GetGroupTZStr(dwMachineNumber: Integer; GroupIndex: Integer; var TZs: WideString): WordBool;
begin
  Result := DefaultInterface.GetGroupTZStr(dwMachineNumber, GroupIndex, TZs);
end;

function TCZKEM.SetGroupTZStr(dwMachineNumber: Integer; GroupIndex: Integer; const TZs: WideString): WordBool;
begin
  Result := DefaultInterface.SetGroupTZStr(dwMachineNumber, GroupIndex, TZs);
end;

function TCZKEM.GetUserTZStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; var TZs: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserTZStr(dwMachineNumber, dwEnrollNumber, TZs);
end;

function TCZKEM.SetUserTZStr(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                             const TZs: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserTZStr(dwMachineNumber, dwEnrollNumber, TZs);
end;

function TCZKEM.FPTempConvertStr(const TmpData1: WideString; var TmpData2: WideString; 
                                 var Size: Integer): WordBool;
begin
  Result := DefaultInterface.FPTempConvertStr(TmpData1, TmpData2, Size);
end;

function TCZKEM.GetFPTempLengthStr(const dwEnrollData: WideString): Integer;
begin
  Result := DefaultInterface.GetFPTempLengthStr(dwEnrollData);
end;

function TCZKEM.GetUserInfoByPIN2(dwMachineNumber: Integer; var Name: WideString; 
                                  var Password: WideString; var Privilege: Integer; 
                                  var Enabled: WordBool): WordBool;
begin
  Result := DefaultInterface.GetUserInfoByPIN2(dwMachineNumber, Name, Password, Privilege, Enabled);
end;

function TCZKEM.GetUserInfoByCard(dwMachineNumber: Integer; var Name: WideString; 
                                  var Password: WideString; var Privilege: Integer; 
                                  var Enabled: WordBool): WordBool;
begin
  Result := DefaultInterface.GetUserInfoByCard(dwMachineNumber, Name, Password, Privilege, Enabled);
end;

function TCZKEM.CaptureImage(FullImage: WordBool; var Width: Integer; var Height: Integer; 
                             var Image: Byte; const ImageFile: WideString): WordBool;
begin
  Result := DefaultInterface.CaptureImage(FullImage, Width, Height, Image, ImageFile);
end;

function TCZKEM.UpdateFirmware(const FirmwareFile: WideString): WordBool;
begin
  Result := DefaultInterface.UpdateFirmware(FirmwareFile);
end;

function TCZKEM.StartEnroll(UserID: Integer; FingerID: Integer): WordBool;
begin
  Result := DefaultInterface.StartEnroll(UserID, FingerID);
end;

function TCZKEM.StartVerify(UserID: Integer; FingerID: Integer): WordBool;
begin
  Result := DefaultInterface.StartVerify(UserID, FingerID);
end;

function TCZKEM.StartIdentify: WordBool;
begin
  Result := DefaultInterface.StartIdentify;
end;

function TCZKEM.CancelOperation: WordBool;
begin
  Result := DefaultInterface.CancelOperation;
end;

function TCZKEM.QueryState(var State: Integer): WordBool;
begin
  Result := DefaultInterface.QueryState(State);
end;

function TCZKEM.BackupData(const DataFile: WideString): WordBool;
begin
  Result := DefaultInterface.BackupData(DataFile);
end;

function TCZKEM.RestoreData(const DataFile: WideString): WordBool;
begin
  Result := DefaultInterface.RestoreData(DataFile);
end;

function TCZKEM.WriteLCD(Row: Integer; Col: Integer; const Text: WideString): WordBool;
begin
  Result := DefaultInterface.WriteLCD(Row, Col, Text);
end;

function TCZKEM.ClearLCD: WordBool;
begin
  Result := DefaultInterface.ClearLCD;
end;

function TCZKEM.Beep(DelayMS: Integer): WordBool;
begin
  Result := DefaultInterface.Beep(DelayMS);
end;

function TCZKEM.PlayVoice(Position: Integer; Length: Integer): WordBool;
begin
  Result := DefaultInterface.PlayVoice(Position, Length);
end;

function TCZKEM.PlayVoiceByIndex(Index: Integer): WordBool;
begin
  Result := DefaultInterface.PlayVoiceByIndex(Index);
end;

function TCZKEM.EnableClock(Enabled: Integer): WordBool;
begin
  Result := DefaultInterface.EnableClock(Enabled);
end;

function TCZKEM.GetUserIDByPIN2(PIN2: Integer; var UserID: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserIDByPIN2(PIN2, UserID);
end;

function TCZKEM.GetPIN2(UserID: Integer; var PIN2: Integer): WordBool;
begin
  Result := DefaultInterface.GetPIN2(UserID, PIN2);
end;

function TCZKEM.FPTempConvertNew(var TmpData1: Byte; var TmpData2: Byte; var Size: Integer): WordBool;
begin
  Result := DefaultInterface.FPTempConvertNew(TmpData1, TmpData2, Size);
end;

function TCZKEM.FPTempConvertNewStr(const TmpData1: WideString; var TmpData2: WideString; 
                                    var Size: Integer): WordBool;
begin
  Result := DefaultInterface.FPTempConvertNewStr(TmpData1, TmpData2, Size);
end;

function TCZKEM.ReadAllTemplate(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllTemplate(dwMachineNumber);
end;

function TCZKEM.DisableDeviceWithTimeOut(dwMachineNumber: Integer; TimeOutSec: Integer): WordBool;
begin
  Result := DefaultInterface.DisableDeviceWithTimeOut(dwMachineNumber, TimeOutSec);
end;

function TCZKEM.SetDeviceTime2(dwMachineNumber: Integer; dwYear: Integer; dwMonth: Integer; 
                               dwDay: Integer; dwHour: Integer; dwMinute: Integer; dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceTime2(dwMachineNumber, dwYear, dwMonth, dwDay, dwHour, 
                                            dwMinute, dwSecond);
end;

function TCZKEM.ClearSLog(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ClearSLog(dwMachineNumber);
end;

function TCZKEM.RestartDevice(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.RestartDevice(dwMachineNumber);
end;

function TCZKEM.GetDeviceMAC(dwMachineNumber: Integer; var sMAC: WideString): WordBool;
begin
  Result := DefaultInterface.GetDeviceMAC(dwMachineNumber, sMAC);
end;

function TCZKEM.SetDeviceMAC(dwMachineNumber: Integer; const sMAC: WideString): WordBool;
begin
  Result := DefaultInterface.SetDeviceMAC(dwMachineNumber, sMAC);
end;

function TCZKEM.GetWiegandFmt(dwMachineNumber: Integer; var sWiegandFmt: WideString): WordBool;
begin
  Result := DefaultInterface.GetWiegandFmt(dwMachineNumber, sWiegandFmt);
end;

function TCZKEM.SetWiegandFmt(dwMachineNumber: Integer; const sWiegandFmt: WideString): WordBool;
begin
  Result := DefaultInterface.SetWiegandFmt(dwMachineNumber, sWiegandFmt);
end;

function TCZKEM.ClearSMS(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ClearSMS(dwMachineNumber);
end;

function TCZKEM.GetSMS(dwMachineNumber: Integer; ID: Integer; var Tag: Integer; 
                       var ValidMinutes: Integer; var StartTime: WideString; var Content: WideString): WordBool;
begin
  Result := DefaultInterface.GetSMS(dwMachineNumber, ID, Tag, ValidMinutes, StartTime, Content);
end;

function TCZKEM.SetSMS(dwMachineNumber: Integer; ID: Integer; Tag: Integer; ValidMinutes: Integer; 
                       const StartTime: WideString; const Content: WideString): WordBool;
begin
  Result := DefaultInterface.SetSMS(dwMachineNumber, ID, Tag, ValidMinutes, StartTime, Content);
end;

function TCZKEM.DeleteSMS(dwMachineNumber: Integer; ID: Integer): WordBool;
begin
  Result := DefaultInterface.DeleteSMS(dwMachineNumber, ID);
end;

function TCZKEM.SetUserSMS(dwMachineNumber: Integer; dwEnrollNumber: Integer; SMSID: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserSMS(dwMachineNumber, dwEnrollNumber, SMSID);
end;

function TCZKEM.DeleteUserSMS(dwMachineNumber: Integer; dwEnrollNumber: Integer; SMSID: Integer): WordBool;
begin
  Result := DefaultInterface.DeleteUserSMS(dwMachineNumber, dwEnrollNumber, SMSID);
end;

function TCZKEM.GetCardFun(dwMachineNumber: Integer; var CardFun: Integer): WordBool;
begin
  Result := DefaultInterface.GetCardFun(dwMachineNumber, CardFun);
end;

function TCZKEM.ClearUserSMS(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ClearUserSMS(dwMachineNumber);
end;

function TCZKEM.SetDeviceCommPwd(dwMachineNumber: Integer; CommKey: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceCommPwd(dwMachineNumber, CommKey);
end;

function TCZKEM.GetDoorState(MachineNumber: Integer; var State: Integer): WordBool;
begin
  Result := DefaultInterface.GetDoorState(MachineNumber, State);
end;

function TCZKEM.GetVendor(var strVendor: WideString): WordBool;
begin
  Result := DefaultInterface.GetVendor(strVendor);
end;

function TCZKEM.GetSensorSN(dwMachineNumber: Integer; var SensorSN: WideString): WordBool;
begin
  Result := DefaultInterface.GetSensorSN(dwMachineNumber, SensorSN);
end;

function TCZKEM.ReadCustData(dwMachineNumber: Integer; var CustData: WideString): WordBool;
begin
  Result := DefaultInterface.ReadCustData(dwMachineNumber, CustData);
end;

function TCZKEM.WriteCustData(dwMachineNumber: Integer; const CustData: WideString): WordBool;
begin
  Result := DefaultInterface.WriteCustData(dwMachineNumber, CustData);
end;

function TCZKEM.BeginBatchUpdate(dwMachineNumber: Integer; UpdateFlag: Integer): WordBool;
begin
  Result := DefaultInterface.BeginBatchUpdate(dwMachineNumber, UpdateFlag);
end;

function TCZKEM.BatchUpdate(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.BatchUpdate(dwMachineNumber);
end;

function TCZKEM.ClearData(dwMachineNumber: Integer; DataFlag: Integer): WordBool;
begin
  Result := DefaultInterface.ClearData(dwMachineNumber, DataFlag);
end;

function TCZKEM.GetDataFile(dwMachineNumber: Integer; DataFlag: Integer; const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.GetDataFile(dwMachineNumber, DataFlag, FileName);
end;

function TCZKEM.WriteCard(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                          dwFingerIndex1: Integer; var TmpData1: Byte; dwFingerIndex2: Integer; 
                          var TmpData2: Byte; dwFingerIndex3: Integer; var TmpData3: Byte; 
                          dwFingerIndex4: Integer; var TmpData4: Byte): WordBool;
begin
  Result := DefaultInterface.WriteCard(dwMachineNumber, dwEnrollNumber, dwFingerIndex1, TmpData1, 
                                       dwFingerIndex2, TmpData2, dwFingerIndex3, TmpData3, 
                                       dwFingerIndex4, TmpData4);
end;

function TCZKEM.GetGeneralExtLogData(dwMachineNumber: Integer; var dwEnrollNumber: Integer; 
                                     var dwVerifyMode: Integer; var dwInOutMode: Integer; 
                                     var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                     var dwHour: Integer; var dwMinute: Integer; 
                                     var dwSecond: Integer; var dwWorkCode: Integer; 
                                     var dwReserved: Integer): WordBool;
begin
  Result := DefaultInterface.GetGeneralExtLogData(dwMachineNumber, dwEnrollNumber, dwVerifyMode, 
                                                  dwInOutMode, dwYear, dwMonth, dwDay, dwHour, 
                                                  dwMinute, dwSecond, dwWorkCode, dwReserved);
end;

function TCZKEM.EmptyCard(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.EmptyCard(dwMachineNumber);
end;

function TCZKEM.GetDeviceStrInfo(dwMachineNumber: Integer; dwInfo: Integer; out Value: WideString): WordBool;
begin
  Result := DefaultInterface.GetDeviceStrInfo(dwMachineNumber, dwInfo, Value);
end;

function TCZKEM.GetSysOption(dwMachineNumber: Integer; const Option: WideString; 
                             out Value: WideString): WordBool;
begin
  Result := DefaultInterface.GetSysOption(dwMachineNumber, Option, Value);
end;

function TCZKEM.SetUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              VerifyStyle: Integer; var Reserved: Byte): WordBool;
begin
  Result := DefaultInterface.SetUserInfoEx(dwMachineNumber, dwEnrollNumber, VerifyStyle, Reserved);
end;

function TCZKEM.GetUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer; 
                              out VerifyStyle: Integer; out Reserved: Byte): WordBool;
begin
  Result := DefaultInterface.GetUserInfoEx(dwMachineNumber, dwEnrollNumber, VerifyStyle, Reserved);
end;

function TCZKEM.DeleteUserInfoEx(dwMachineNumber: Integer; dwEnrollNumber: Integer): WordBool;
begin
  Result := DefaultInterface.DeleteUserInfoEx(dwMachineNumber, dwEnrollNumber);
end;

function TCZKEM.SSR_GetGeneralLogData(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                      out dwVerifyMode: Integer; out dwInOutMode: Integer; 
                                      out dwYear: Integer; out dwMonth: Integer; 
                                      out dwDay: Integer; out dwHour: Integer; 
                                      out dwMinute: Integer; out dwSecond: Integer; 
                                      var dwWorkCode: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_GetGeneralLogData(dwMachineNumber, dwEnrollNumber, dwVerifyMode, 
                                                   dwInOutMode, dwYear, dwMonth, dwDay, dwHour, 
                                                   dwMinute, dwSecond, dwWorkCode);
end;

function TCZKEM.SSR_GetAllUserInfo(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                   out Name: WideString; out Password: WideString; 
                                   out Privilege: Integer; out Enabled: WordBool): WordBool;
begin
  Result := DefaultInterface.SSR_GetAllUserInfo(dwMachineNumber, dwEnrollNumber, Name, Password, 
                                                Privilege, Enabled);
end;

function TCZKEM.SSR_GetUserInfo(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                out Name: WideString; out Password: WideString; 
                                out Privilege: Integer; out Enabled: WordBool): WordBool;
begin
  Result := DefaultInterface.SSR_GetUserInfo(dwMachineNumber, dwEnrollNumber, Name, Password, 
                                             Privilege, Enabled);
end;

function TCZKEM.SSR_GetUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer; out TmpData: Byte; out TmpLength: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_GetUserTmp(dwMachineNumber, dwEnrollNumber, dwFingerIndex, 
                                            TmpData, TmpLength);
end;

function TCZKEM.SSR_GetUserTmpStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                  dwFingerIndex: Integer; out TmpData: WideString; 
                                  out TmpLength: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_GetUserTmpStr(dwMachineNumber, dwEnrollNumber, dwFingerIndex, 
                                               TmpData, TmpLength);
end;

function TCZKEM.SSR_DeleteEnrollData(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                     dwBackupNumber: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_DeleteEnrollData(dwMachineNumber, dwEnrollNumber, dwBackupNumber);
end;

function TCZKEM.SSR_SetUserInfo(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                const Name: WideString; const Password: WideString; 
                                Privilege: Integer; Enabled: WordBool): WordBool;
begin
  Result := DefaultInterface.SSR_SetUserInfo(dwMachineNumber, dwEnrollNumber, Name, Password, 
                                             Privilege, Enabled);
end;

function TCZKEM.SSR_SetUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer; var TmpData: Byte): WordBool;
begin
  Result := DefaultInterface.SSR_SetUserTmp(dwMachineNumber, dwEnrollNumber, dwFingerIndex, TmpData);
end;

function TCZKEM.SSR_SetUserTmpStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                  dwFingerIndex: Integer; const TmpData: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_SetUserTmpStr(dwMachineNumber, dwEnrollNumber, dwFingerIndex, 
                                               TmpData);
end;

function TCZKEM.SSR_DelUserTmp(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFingerIndex: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_DelUserTmp(dwMachineNumber, dwEnrollNumber, dwFingerIndex);
end;

function TCZKEM.SetWorkCode(WorkCodeID: Integer; AWorkCode: Integer): WordBool;
begin
  Result := DefaultInterface.SetWorkCode(WorkCodeID, AWorkCode);
end;

function TCZKEM.GetWorkCode(WorkCodeID: Integer; out AWorkCode: Integer): WordBool;
begin
  Result := DefaultInterface.GetWorkCode(WorkCodeID, AWorkCode);
end;

function TCZKEM.DeleteWorkCode(WorkCodeID: Integer): WordBool;
begin
  Result := DefaultInterface.DeleteWorkCode(WorkCodeID);
end;

function TCZKEM.ClearWorkCode: WordBool;
begin
  Result := DefaultInterface.ClearWorkCode;
end;

function TCZKEM.ReadAttRule(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAttRule(dwMachineNumber);
end;

function TCZKEM.ReadDPTInfo(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadDPTInfo(dwMachineNumber);
end;

function TCZKEM.SaveTheDataToFile(dwMachineNumber: Integer; const TheFilePath: WideString; 
                                  FileFlag: Integer): WordBool;
begin
  Result := DefaultInterface.SaveTheDataToFile(dwMachineNumber, TheFilePath, FileFlag);
end;

function TCZKEM.ReadTurnInfo(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadTurnInfo(dwMachineNumber);
end;

function TCZKEM.SSR_OutPutHTMLRep(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                  const AttFile: WideString; const UserFile: WideString; 
                                  const DeptFile: WideString; const TimeClassFile: WideString; 
                                  const AttruleFile: WideString; BYear: Integer; BMonth: Integer; 
                                  BDay: Integer; BHour: Integer; BMinute: Integer; 
                                  BSecond: Integer; EYear: Integer; EMonth: Integer; EDay: Integer; 
                                  EHour: Integer; EMinute: Integer; ESecond: Integer; 
                                  const TempPath: WideString; const OutFileName: WideString; 
                                  HTMLFlag: Integer; resv1: Integer; const resv2: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_OutPutHTMLRep(dwMachineNumber, dwEnrollNumber, AttFile, UserFile, 
                                               DeptFile, TimeClassFile, AttruleFile, BYear, BMonth, 
                                               BDay, BHour, BMinute, BSecond, EYear, EMonth, EDay, 
                                               EHour, EMinute, ESecond, TempPath, OutFileName, 
                                               HTMLFlag, resv1, resv2);
end;

function TCZKEM.ReadAOptions(const AOption: WideString; out AValue: WideString): WordBool;
begin
  Result := DefaultInterface.ReadAOptions(AOption, AValue);
end;

function TCZKEM.ReadRTLog(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadRTLog(dwMachineNumber);
end;

function TCZKEM.GetRTLog(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.GetRTLog(dwMachineNumber);
end;

function TCZKEM.GetHIDEventCardNumAsStr(out strHIDEventCardNum: WideString): WordBool;
begin
  Result := DefaultInterface.GetHIDEventCardNumAsStr(strHIDEventCardNum);
end;

function TCZKEM.GetStrCardNumber(out ACardNumber: WideString): WordBool;
begin
  Result := DefaultInterface.GetStrCardNumber(ACardNumber);
end;

function TCZKEM.SetStrCardNumber(const ACardNumber: WideString): WordBool;
begin
  Result := DefaultInterface.SetStrCardNumber(ACardNumber);
end;

function TCZKEM.RegEvent(dwMachineNumber: Integer; EventMask: Integer): WordBool;
begin
  Result := DefaultInterface.RegEvent(dwMachineNumber, EventMask);
end;

function TCZKEM.CancelBatchUpdate(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.CancelBatchUpdate(dwMachineNumber);
end;

function TCZKEM.SetSysOption(dwMachineNumber: Integer; const Option: WideString; 
                             const Value: WideString): WordBool;
begin
  Result := DefaultInterface.SetSysOption(dwMachineNumber, Option, Value);
end;

function TCZKEM.Connect_Modem(ComPort: Integer; MachineNumber: Integer; BaudRate: Integer; 
                              const Telephone: WideString): WordBool;
begin
  Result := DefaultInterface.Connect_Modem(ComPort, MachineNumber, BaudRate, Telephone);
end;

function TCZKEM.UseGroupTimeZone: WordBool;
begin
  Result := DefaultInterface.UseGroupTimeZone;
end;

function TCZKEM.SetHoliday(dwMachineNumber: Integer; const Holiday: WideString): WordBool;
begin
  Result := DefaultInterface.SetHoliday(dwMachineNumber, Holiday);
end;

function TCZKEM.GetHoliday(dwMachineNumber: Integer; var Holiday: WideString): WordBool;
begin
  Result := DefaultInterface.GetHoliday(dwMachineNumber, Holiday);
end;

function TCZKEM.SetDaylight(dwMachineNumber: Integer; Support: Integer; 
                            const BeginTime: WideString; const EndTime: WideString): WordBool;
begin
  Result := DefaultInterface.SetDaylight(dwMachineNumber, Support, BeginTime, EndTime);
end;

function TCZKEM.GetDaylight(dwMachineNumber: Integer; var Support: Integer; 
                            var BeginTime: WideString; var EndTime: WideString): WordBool;
begin
  Result := DefaultInterface.GetDaylight(dwMachineNumber, Support, BeginTime, EndTime);
end;

function TCZKEM.SSR_SetUnLockGroup(dwMachineNumber: Integer; CombNo: Integer; Group1: Integer; 
                                   Group2: Integer; Group3: Integer; Group4: Integer; 
                                   Group5: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_SetUnLockGroup(dwMachineNumber, CombNo, Group1, Group2, Group3, 
                                                Group4, Group5);
end;

function TCZKEM.SSR_GetUnLockGroup(dwMachineNumber: Integer; CombNo: Integer; var Group1: Integer; 
                                   var Group2: Integer; var Group3: Integer; var Group4: Integer; 
                                   var Group5: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_GetUnLockGroup(dwMachineNumber, CombNo, Group1, Group2, Group3, 
                                                Group4, Group5);
end;

function TCZKEM.SSR_SetGroupTZ(dwMachineNumber: Integer; GroupNo: Integer; Tz1: Integer; 
                               Tz2: Integer; Tz3: Integer; VaildHoliday: Integer; 
                               VerifyStyle: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_SetGroupTZ(dwMachineNumber, GroupNo, Tz1, Tz2, Tz3, VaildHoliday, 
                                            VerifyStyle);
end;

function TCZKEM.SSR_GetGroupTZ(dwMachineNumber: Integer; GroupNo: Integer; var Tz1: Integer; 
                               var Tz2: Integer; var Tz3: Integer; var VaildHoliday: Integer; 
                               var VerifyStyle: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_GetGroupTZ(dwMachineNumber, GroupNo, Tz1, Tz2, Tz3, VaildHoliday, 
                                            VerifyStyle);
end;

function TCZKEM.SSR_GetHoliday(dwMachineNumber: Integer; HolidayID: Integer; 
                               var BeginMonth: Integer; var BeginDay: Integer; 
                               var EndMonth: Integer; var EndDay: Integer; var TimeZoneID: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_GetHoliday(dwMachineNumber, HolidayID, BeginMonth, BeginDay, 
                                            EndMonth, EndDay, TimeZoneID);
end;

function TCZKEM.SSR_SetHoliday(dwMachineNumber: Integer; HolidayID: Integer; BeginMonth: Integer; 
                               BeginDay: Integer; EndMonth: Integer; EndDay: Integer; 
                               TimeZoneID: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_SetHoliday(dwMachineNumber, HolidayID, BeginMonth, BeginDay, 
                                            EndMonth, EndDay, TimeZoneID);
end;

function TCZKEM.GetPlatform(dwMachineNumber: Integer; var Platform: WideString): WordBool;
begin
  Result := DefaultInterface.GetPlatform(dwMachineNumber, Platform);
end;

function TCZKEM.SSR_SetUserSMS(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               SMSID: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_SetUserSMS(dwMachineNumber, dwEnrollNumber, SMSID);
end;

function TCZKEM.SSR_DeleteUserSMS(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                  SMSID: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_DeleteUserSMS(dwMachineNumber, dwEnrollNumber, SMSID);
end;

function TCZKEM.IsTFTMachine(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.IsTFTMachine(dwMachineNumber);
end;

function TCZKEM.SSR_EnableUser(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               bFlag: WordBool): WordBool;
begin
  Result := DefaultInterface.SSR_EnableUser(dwMachineNumber, dwEnrollNumber, bFlag);
end;

function TCZKEM.SendCMDMsg(dwMachineNumber: Integer; Param1: Integer; Param2: Integer): WordBool;
begin
  Result := DefaultInterface.SendCMDMsg(dwMachineNumber, Param1, Param2);
end;

function TCZKEM.SendFile(dwMachineNumber: Integer; const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.SendFile(dwMachineNumber, FileName);
end;

function TCZKEM.SetLanguageByID(dwMachineNumber: Integer; LanguageID: Integer; 
                                const Language: WideString): WordBool;
begin
  Result := DefaultInterface.SetLanguageByID(dwMachineNumber, LanguageID, Language);
end;

function TCZKEM.ReadFile(dwMachineNumber: Integer; const FileName: WideString; 
                         const FilePath: WideString): WordBool;
begin
  Result := DefaultInterface.ReadFile(dwMachineNumber, FileName, FilePath);
end;

function TCZKEM.SetLastCount(count: Integer): WordBool;
begin
  Result := DefaultInterface.SetLastCount(count);
end;

function TCZKEM.SetCustomizeAttState(dwMachineNumber: Integer; StateID: Integer; NewState: Integer): WordBool;
begin
  Result := DefaultInterface.SetCustomizeAttState(dwMachineNumber, StateID, NewState);
end;

function TCZKEM.DelCustomizeAttState(dwMachineNumber: Integer; StateID: Integer): WordBool;
begin
  Result := DefaultInterface.DelCustomizeAttState(dwMachineNumber, StateID);
end;

function TCZKEM.EnableCustomizeAttState(dwMachineNumber: Integer; StateID: Integer; Enable: Integer): WordBool;
begin
  Result := DefaultInterface.EnableCustomizeAttState(dwMachineNumber, StateID, Enable);
end;

function TCZKEM.SetCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer; 
                                  const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.SetCustomizeVoice(dwMachineNumber, VoiceID, FileName);
end;

function TCZKEM.DelCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer): WordBool;
begin
  Result := DefaultInterface.DelCustomizeVoice(dwMachineNumber, VoiceID);
end;

function TCZKEM.EnableCustomizeVoice(dwMachineNumber: Integer; VoiceID: Integer; Enable: Integer): WordBool;
begin
  Result := DefaultInterface.EnableCustomizeVoice(dwMachineNumber, VoiceID, Enable);
end;

function TCZKEM.StartEnrollEx(const UserID: WideString; FingerID: Integer; Flag: Integer): WordBool;
begin
  Result := DefaultInterface.StartEnrollEx(UserID, FingerID, Flag);
end;

function TCZKEM.SSR_SetUserTmpExt(dwMachineNumber: Integer; IsDeleted: Integer; 
                                  const dwEnrollNumber: WideString; dwFingerIndex: Integer; 
                                  var TmpData: Byte): WordBool;
begin
  Result := DefaultInterface.SSR_SetUserTmpExt(dwMachineNumber, IsDeleted, dwEnrollNumber, 
                                               dwFingerIndex, TmpData);
end;

function TCZKEM.SSR_DelUserTmpExt(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                  dwFingerIndex: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_DelUserTmpExt(dwMachineNumber, dwEnrollNumber, dwFingerIndex);
end;

function TCZKEM.SSR_DeleteEnrollDataExt(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                        dwBackupNumber: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_DeleteEnrollDataExt(dwMachineNumber, dwEnrollNumber, dwBackupNumber);
end;

function TCZKEM.SSR_GetWorkCode(AWorkCode: Integer; out Name: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_GetWorkCode(AWorkCode, Name);
end;

function TCZKEM.SSR_SetWorkCode(AWorkCode: Integer; const Name: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_SetWorkCode(AWorkCode, Name);
end;

function TCZKEM.SSR_DeleteWorkCode(PIN: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_DeleteWorkCode(PIN);
end;

function TCZKEM.SSR_ClearWorkCode: WordBool;
begin
  Result := DefaultInterface.SSR_ClearWorkCode;
end;

function TCZKEM.SSR_GetSuperLogData(MachineNumber: Integer; out Number: Integer; 
                                    out Admin: WideString; out User: WideString; 
                                    out Manipulation: Integer; out Time: WideString; 
                                    out Params1: Integer; out Params2: Integer; out Params3: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_GetSuperLogData(MachineNumber, Number, Admin, User, Manipulation, 
                                                 Time, Params1, Params2, Params3);
end;

function TCZKEM.SSR_SetShortkey(ShortKeyID: Integer; ShortKeyFun: Integer; StateCode: Integer; 
                                const StateName: WideString; StateAutoChange: Integer; 
                                const StateAutoChangeTime: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_SetShortkey(ShortKeyID, ShortKeyFun, StateCode, StateName, 
                                             StateAutoChange, StateAutoChangeTime);
end;

function TCZKEM.SSR_GetShortkey(ShortKeyID: Integer; var ShortKeyFun: Integer; 
                                var StateCode: Integer; var StateName: WideString; 
                                var AutoChange: Integer; var AutoChangeTime: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_GetShortkey(ShortKeyID, ShortKeyFun, StateCode, StateName, 
                                             AutoChange, AutoChangeTime);
end;

function TCZKEM.Connect_USB(MachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.Connect_USB(MachineNumber);
end;

function TCZKEM.GetSuperLogData2(dwMachineNumber: Integer; var dwTMachineNumber: Integer; 
                                 var dwSEnrollNumber: Integer; var Params4: Integer; 
                                 var Params1: Integer; var Params2: Integer; 
                                 var dwManipulation: Integer; var Params3: Integer; 
                                 var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                 var dwHour: Integer; var dwMinute: Integer; var dwSecs: Integer): WordBool;
begin
  Result := DefaultInterface.GetSuperLogData2(dwMachineNumber, dwTMachineNumber, dwSEnrollNumber, 
                                              Params4, Params1, Params2, dwManipulation, Params3, 
                                              dwYear, dwMonth, dwDay, dwHour, dwMinute, dwSecs);
end;

function TCZKEM.GetUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFaceIndex: Integer; var TmpData: Byte; var TmpLength: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserFace(dwMachineNumber, dwEnrollNumber, dwFaceIndex, TmpData, 
                                         TmpLength);
end;

function TCZKEM.SetUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFaceIndex: Integer; var TmpData: Byte; TmpLength: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserFace(dwMachineNumber, dwEnrollNumber, dwFaceIndex, TmpData, 
                                         TmpLength);
end;

function TCZKEM.DelUserFace(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                            dwFaceIndex: Integer): WordBool;
begin
  Result := DefaultInterface.DelUserFace(dwMachineNumber, dwEnrollNumber, dwFaceIndex);
end;

function TCZKEM.GetUserFaceStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFaceIndex: Integer; var TmpData: WideString; var TmpLength: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserFaceStr(dwMachineNumber, dwEnrollNumber, dwFaceIndex, TmpData, 
                                            TmpLength);
end;

function TCZKEM.SetUserFaceStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                               dwFaceIndex: Integer; const TmpData: WideString; TmpLength: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserFaceStr(dwMachineNumber, dwEnrollNumber, dwFaceIndex, TmpData, 
                                            TmpLength);
end;

function TCZKEM.GetUserTmpEx(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             dwFingerIndex: Integer; out Flag: Integer; out TmpData: Byte; 
                             out TmpLength: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserTmpEx(dwMachineNumber, dwEnrollNumber, dwFingerIndex, Flag, 
                                          TmpData, TmpLength);
end;

function TCZKEM.GetUserTmpExStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                dwFingerIndex: Integer; out Flag: Integer; out TmpData: WideString; 
                                out TmpLength: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserTmpExStr(dwMachineNumber, dwEnrollNumber, dwFingerIndex, Flag, 
                                             TmpData, TmpLength);
end;

function TCZKEM.SetUserTmpEx(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                             dwFingerIndex: Integer; Flag: Integer; var TmpData: Byte): WordBool;
begin
  Result := DefaultInterface.SetUserTmpEx(dwMachineNumber, dwEnrollNumber, dwFingerIndex, Flag, 
                                          TmpData);
end;

function TCZKEM.SetUserTmpExStr(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                dwFingerIndex: Integer; Flag: Integer; const TmpData: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserTmpExStr(dwMachineNumber, dwEnrollNumber, dwFingerIndex, Flag, 
                                             TmpData);
end;

function TCZKEM.MergeTemplate(var Templates: PByte1; FingerCount: Integer; var TemplateDest: Byte; 
                              var FingerSize: Integer): WordBool;
begin
  Result := DefaultInterface.MergeTemplate(Templates, FingerCount, TemplateDest, FingerSize);
end;

function TCZKEM.SplitTemplate(var Template: Byte; var Templates: PByte1; var FingerCount: Integer; 
                              var FingerSize: Integer): WordBool;
begin
  Result := DefaultInterface.SplitTemplate(Template, Templates, FingerCount, FingerSize);
end;

function TCZKEM.ReadUserAllTemplate(dwMachineNumber: Integer; const dwEnrollNumber: WideString): WordBool;
begin
  Result := DefaultInterface.ReadUserAllTemplate(dwMachineNumber, dwEnrollNumber);
end;

function TCZKEM.UpdateFile(const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.UpdateFile(FileName);
end;

function TCZKEM.ReadLastestLogData(dwMachineNumber: Integer; NewLog: Integer; dwYear: Integer; 
                                   dwMonth: Integer; dwDay: Integer; dwHour: Integer; 
                                   dwMinute: Integer; dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.ReadLastestLogData(dwMachineNumber, NewLog, dwYear, dwMonth, dwDay, 
                                                dwHour, dwMinute, dwSecond);
end;

function TCZKEM.SetOptionCommPwd(dwMachineNumber: Integer; const CommKey: WideString): WordBool;
begin
  Result := DefaultInterface.SetOptionCommPwd(dwMachineNumber, CommKey);
end;

function TCZKEM.ReadSuperLogDataEx(dwMachineNumber: Integer; dwYear_S: Integer; dwMonth_S: Integer; 
                                   dwDay_S: Integer; dwHour_S: Integer; dwMinute_S: Integer; 
                                   dwSecond_S: Integer; dwYear_E: Integer; dwMonth_E: Integer; 
                                   dwDay_E: Integer; dwHour_E: Integer; dwMinute_E: Integer; 
                                   dwSecond_E: Integer; dwLogIndex: Integer): WordBool;
begin
  Result := DefaultInterface.ReadSuperLogDataEx(dwMachineNumber, dwYear_S, dwMonth_S, dwDay_S, 
                                                dwHour_S, dwMinute_S, dwSecond_S, dwYear_E, 
                                                dwMonth_E, dwDay_E, dwHour_E, dwMinute_E, 
                                                dwSecond_E, dwLogIndex);
end;

function TCZKEM.GetSuperLogDataEx(dwMachineNumber: Integer; var EnrollNumber: WideString; 
                                  var Params4: Integer; var Params1: Integer; var Params2: Integer; 
                                  var dwManipulation: Integer; var Params3: Integer; 
                                  var dwYear: Integer; var dwMonth: Integer; var dwDay: Integer; 
                                  var dwHour: Integer; var dwMinute: Integer; var dwSecond: Integer): WordBool;
begin
  Result := DefaultInterface.GetSuperLogDataEx(dwMachineNumber, EnrollNumber, Params4, Params1, 
                                               Params2, dwManipulation, Params3, dwYear, dwMonth, 
                                               dwDay, dwHour, dwMinute, dwSecond);
end;

function TCZKEM.GetPhotoByName(dwMachineNumber: Integer; const PhotoName: WideString; 
                               out PhotoData: Byte; out PhotoLength: Integer): WordBool;
begin
  Result := DefaultInterface.GetPhotoByName(dwMachineNumber, PhotoName, PhotoData, PhotoLength);
end;

function TCZKEM.GetPhotoNamesByTime(dwMachineNumber: Integer; iFlag: Integer; 
                                    const sTime: WideString; const eTime: WideString; 
                                    out AllPhotoName: WideString): WordBool;
begin
  Result := DefaultInterface.GetPhotoNamesByTime(dwMachineNumber, iFlag, sTime, eTime, AllPhotoName);
end;

function TCZKEM.ClearPhotoByTime(dwMachineNumber: Integer; iFlag: Integer; const sTime: WideString; 
                                 const eTime: WideString): WordBool;
begin
  Result := DefaultInterface.ClearPhotoByTime(dwMachineNumber, iFlag, sTime, eTime);
end;

function TCZKEM.GetPhotoCount(dwMachineNumber: Integer; out count: Integer; iFlag: Integer): WordBool;
begin
  Result := DefaultInterface.GetPhotoCount(dwMachineNumber, count, iFlag);
end;

function TCZKEM.ClearDataEx(dwMachineNumber: Integer; const TableName: WideString): WordBool;
begin
  Result := DefaultInterface.ClearDataEx(dwMachineNumber, TableName);
end;

function TCZKEM.GetDataFileEx(dwMachineNumber: Integer; const SourceFileName: WideString; 
                              const DestFileName: WideString): WordBool;
begin
  Result := DefaultInterface.GetDataFileEx(dwMachineNumber, SourceFileName, DestFileName);
end;

function TCZKEM.SSR_SetDeviceData(dwMachineNumber: Integer; const TableName: WideString; 
                                  const Datas: WideString; const Options: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_SetDeviceData(dwMachineNumber, TableName, Datas, Options);
end;

function TCZKEM.SSR_GetDeviceData(dwMachineNumber: Integer; out Buffer: WideString; 
                                  BufferSize: Integer; const TableName: WideString; 
                                  const FiledNames: WideString; const Filter: WideString; 
                                  const Options: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_GetDeviceData(dwMachineNumber, Buffer, BufferSize, TableName, 
                                               FiledNames, Filter, Options);
end;

function TCZKEM.UpdateLogo(dwMachineNumber: Integer; const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.UpdateLogo(dwMachineNumber, FileName);
end;

function TCZKEM.SetCommuTimeOut(timeOut: Integer): WordBool;
begin
  Result := DefaultInterface.SetCommuTimeOut(timeOut);
end;

function TCZKEM.SendFileByType(dwMachineNumber: Integer; const FileName: WideString; iType: Integer): WordBool;
begin
  Result := DefaultInterface.SendFileByType(dwMachineNumber, FileName, iType);
end;

function TCZKEM.SetCommProType(proType: Integer): WordBool;
begin
  Result := DefaultInterface.SetCommProType(proType);
end;

function TCZKEM.SetCompatOldFirmware(nCompatOkdFirmware: Integer): WordBool;
begin
  Result := DefaultInterface.SetCompatOldFirmware(nCompatOkdFirmware);
end;

function TCZKEM.Connect_P4P(const uid: WideString): WordBool;
begin
  Result := DefaultInterface.Connect_P4P(uid);
end;

function TCZKEM.SetDeviceTableData(dwMachineNumber: Integer; const TableName: WideString; 
                                   const Datas: WideString; const Options: WideString; 
                                   out count: Integer): WordBool;
begin
  Result := DefaultInterface.SetDeviceTableData(dwMachineNumber, TableName, Datas, Options, count);
end;

procedure TCZKEM.GetConnectStatus(var dwErrorCode: Integer);
begin
  DefaultInterface.GetConnectStatus(dwErrorCode);
end;

function TCZKEM.SetManufacturerData(dwMachineNumber: Integer; const Name: WideString; 
                                    const Value: WideString): WordBool;
begin
  Result := DefaultInterface.SetManufacturerData(dwMachineNumber, Name, Value);
end;

function TCZKEM.GetDeviceStatusEx(dwMachineNumber: Integer): Integer;
begin
  Result := DefaultInterface.GetDeviceStatusEx(dwMachineNumber);
end;

procedure TCZKEM.CancelByUser;
begin
  DefaultInterface.CancelByUser;
end;

function TCZKEM.SSR_GetDeviceDataCount(const TableName: WideString; const Filter: WideString; 
                                       const Options: WideString): Integer;
begin
  Result := DefaultInterface.SSR_GetDeviceDataCount(TableName, Filter, Options);
end;

function TCZKEM.SSR_DeleteDeviceData(dwMachineNumber: Integer; const TableName: WideString; 
                                     const Datas: WideString; const Options: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_DeleteDeviceData(dwMachineNumber, TableName, Datas, Options);
end;

function TCZKEM.ReadTimeGLogData(dwMachineNumber: Integer; const sTime: WideString; 
                                 const eTime: WideString): WordBool;
begin
  Result := DefaultInterface.ReadTimeGLogData(dwMachineNumber, sTime, eTime);
end;

function TCZKEM.DeleteAttlogBetweenTheDate(dwMachineNumber: Integer; const sTime: WideString; 
                                           const eTime: WideString): WordBool;
begin
  Result := DefaultInterface.DeleteAttlogBetweenTheDate(dwMachineNumber, sTime, eTime);
end;

function TCZKEM.DeleteAttlogByTime(dwMachineNumber: Integer; const sTime: WideString): WordBool;
begin
  Result := DefaultInterface.DeleteAttlogByTime(dwMachineNumber, sTime);
end;

function TCZKEM.ReadNewGLogData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadNewGLogData(dwMachineNumber);
end;

function TCZKEM.IsNewFirmwareMachine(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.IsNewFirmwareMachine(dwMachineNumber);
end;

function TCZKEM.UploadUserPhoto(dwMachineNumber: Integer; const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.UploadUserPhoto(dwMachineNumber, FileName);
end;

function TCZKEM.DownloadUserPhoto(dwMachineNumber: Integer; const FileName: WideString; 
                                  const FilePath: WideString): WordBool;
begin
  Result := DefaultInterface.DownloadUserPhoto(dwMachineNumber, FileName, FilePath);
end;

function TCZKEM.DeleteUserPhoto(dwMachineNumber: Integer; const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.DeleteUserPhoto(dwMachineNumber, FileName);
end;

function TCZKEM.GetAllUserPhoto(dwMachineNumber: Integer; const dlDir: WideString): WordBool;
begin
  Result := DefaultInterface.GetAllUserPhoto(dwMachineNumber, dlDir);
end;

function TCZKEM.SetBellSchDataEx(dwMachineNumber: Integer; weekDay: Integer; Index: Integer; 
                                 Enable: Integer; Hour: Integer; min: Integer; voice: Integer; 
                                 way: Integer; InerBellDelay: Integer; ExtBellDelay: Integer): WordBool;
begin
  Result := DefaultInterface.SetBellSchDataEx(dwMachineNumber, weekDay, Index, Enable, Hour, min, 
                                              voice, way, InerBellDelay, ExtBellDelay);
end;

function TCZKEM.GetBellSchDataEx(dwMachineNumber: Integer; weekDay: Integer; Index: Integer; 
                                 out Enable: Integer; out Hour: Integer; out min: Integer; 
                                 out voice: Integer; out way: Integer; out InerBellDelay: Integer; 
                                 out ExtBellDelay: Integer): WordBool;
begin
  Result := DefaultInterface.GetBellSchDataEx(dwMachineNumber, weekDay, Index, Enable, Hour, min, 
                                              voice, way, InerBellDelay, ExtBellDelay);
end;

function TCZKEM.GetDayBellSchCount(dwMachineNumber: Integer; out DayBellCnt: Integer): WordBool;
begin
  Result := DefaultInterface.GetDayBellSchCount(dwMachineNumber, DayBellCnt);
end;

function TCZKEM.GetMaxBellIDInBellSchData(dwMachineNumber: Integer; out MaxBellID: Integer): WordBool;
begin
  Result := DefaultInterface.GetMaxBellIDInBellSchData(dwMachineNumber, MaxBellID);
end;

function TCZKEM.ReadAllBellSchData(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.ReadAllBellSchData(dwMachineNumber);
end;

function TCZKEM.GetEachBellInfo(dwMachineNumber: Integer; out weekDay: Integer; out Index: Integer; 
                                out Enable: Integer; out Hour: Integer; out min: Integer; 
                                out voice: Integer; out way: Integer; out InerBellDelay: Integer; 
                                out ExtBellDelay: Integer): WordBool;
begin
  Result := DefaultInterface.GetEachBellInfo(dwMachineNumber, weekDay, Index, Enable, Hour, min, 
                                             voice, way, InerBellDelay, ExtBellDelay);
end;

function TCZKEM.SetUserValidDate(dwMachineNumber: Integer; const UserID: WideString; 
                                 Expires: Integer; ValidCount: Integer; 
                                 const StartDate: WideString; const EndDate: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserValidDate(dwMachineNumber, UserID, Expires, ValidCount, 
                                              StartDate, EndDate);
end;

function TCZKEM.GetUserValidDate(dwMachineNumber: Integer; const UserID: WideString; 
                                 out Expires: Integer; out ValidCount: Integer; 
                                 out StartDate: WideString; out EndDate: WideString): WordBool;
begin
  Result := DefaultInterface.GetUserValidDate(dwMachineNumber, UserID, Expires, ValidCount, 
                                              StartDate, EndDate);
end;

function TCZKEM.SetUserValidDateBatch(dwMachineNumber: Integer; const Datas: WideString): WordBool;
begin
  Result := DefaultInterface.SetUserValidDateBatch(dwMachineNumber, Datas);
end;

function TCZKEM.GetUserValidDateBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                      BufferSize: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserValidDateBatch(dwMachineNumber, Buffer, BufferSize);
end;

function TCZKEM.SetUserVerifyStyle(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                   VerifyStyle: Integer; var Reserved: Byte): WordBool;
begin
  Result := DefaultInterface.SetUserVerifyStyle(dwMachineNumber, dwEnrollNumber, VerifyStyle, 
                                                Reserved);
end;

function TCZKEM.GetUserVerifyStyle(dwMachineNumber: Integer; const dwEnrollNumber: WideString; 
                                   out VerifyStyle: Integer; out Reserved: Byte): WordBool;
begin
  Result := DefaultInterface.GetUserVerifyStyle(dwMachineNumber, dwEnrollNumber, VerifyStyle, 
                                                Reserved);
end;

function TCZKEM.SetUserVerifyStyleBatch(dwMachineNumber: Integer; const Datas: WideString; 
                                        var Reserved: Byte): WordBool;
begin
  Result := DefaultInterface.SetUserVerifyStyleBatch(dwMachineNumber, Datas, Reserved);
end;

function TCZKEM.GetUserVerifyStyleBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                        BufferSize: Integer; out Reserved: Byte): WordBool;
begin
  Result := DefaultInterface.GetUserVerifyStyleBatch(dwMachineNumber, Buffer, BufferSize, Reserved);
end;

function TCZKEM.GetDeviceFirmwareVersion(dwMachineNumber: Integer; var strVersion: WideString): WordBool;
begin
  Result := DefaultInterface.GetDeviceFirmwareVersion(dwMachineNumber, strVersion);
end;

function TCZKEM.SendFileEx(dwMachineNumber: Integer; const FileName: WideString; 
                           const FilePath: WideString): WordBool;
begin
  Result := DefaultInterface.SendFileEx(dwMachineNumber, FileName, FilePath);
end;

function TCZKEM.UploadTheme(dwMachineNumber: Integer; const FileName: WideString; 
                            const InDevName: WideString): WordBool;
begin
  Result := DefaultInterface.UploadTheme(dwMachineNumber, FileName, InDevName);
end;

function TCZKEM.UploadPicture(dwMachineNumber: Integer; const FileName: WideString; 
                              const InDevName: WideString): WordBool;
begin
  Result := DefaultInterface.UploadPicture(dwMachineNumber, FileName, InDevName);
end;

function TCZKEM.DeletePicture(dwMachineNumber: Integer; const FileName: WideString): WordBool;
begin
  Result := DefaultInterface.DeletePicture(dwMachineNumber, FileName);
end;

function TCZKEM.DownloadPicture(dwMachineNumber: Integer; const FileName: WideString; 
                                const FilePath: WideString): WordBool;
begin
  Result := DefaultInterface.DownloadPicture(dwMachineNumber, FileName, FilePath);
end;

function TCZKEM.TurnOffAlarm(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.TurnOffAlarm(dwMachineNumber);
end;

function TCZKEM.CloseAlarm(dwMachineNumber: Integer): WordBool;
begin
  Result := DefaultInterface.CloseAlarm(dwMachineNumber);
end;

function TCZKEM.SSR_SetWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString; 
                                  const Name: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_SetWorkCodeEx(dwMachineNumber, WorkCodeNum, Name);
end;

function TCZKEM.SSR_GetWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString; 
                                  out Name: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_GetWorkCodeEx(dwMachineNumber, WorkCodeNum, Name);
end;

function TCZKEM.SSR_DeleteWorkCodeEx(dwMachineNumber: Integer; const WorkCodeNum: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_DeleteWorkCodeEx(dwMachineNumber, WorkCodeNum);
end;

function TCZKEM.SSR_GetGeneralLogDataEx(dwMachineNumber: Integer; out dwEnrollNumber: WideString; 
                                        out dwVerifyMode: Integer; out dwInOutMode: Integer; 
                                        out dwYear: Integer; out dwMonth: Integer; 
                                        out dwDay: Integer; out dwHour: Integer; 
                                        out dwMinute: Integer; out dwSecond: Integer; 
                                        out dwWorkCode: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_GetGeneralLogDataEx(dwMachineNumber, dwEnrollNumber, dwVerifyMode, 
                                                     dwInOutMode, dwYear, dwMonth, dwDay, dwHour, 
                                                     dwMinute, dwSecond, dwWorkCode);
end;

function TCZKEM.SSR_SetWorkCodeExBatch(dwMachineNumber: Integer; const Datas: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_SetWorkCodeExBatch(dwMachineNumber, Datas);
end;

function TCZKEM.SSR_GetWorkCodeExBatch(dwMachineNumber: Integer; out Buffer: WideString; 
                                       BufferSize: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_GetWorkCodeExBatch(dwMachineNumber, Buffer, BufferSize);
end;

function TCZKEM.SSR_GetWorkCodeExByID(dwMachineNumber: Integer; WorkCodeID: Integer; 
                                      out WorkCodeNum: WideString; out Name: WideString): WordBool;
begin
  Result := DefaultInterface.SSR_GetWorkCodeExByID(dwMachineNumber, WorkCodeID, WorkCodeNum, Name);
end;

function TCZKEM.SSR_GetWorkCodeIDByName(dwMachineNumber: Integer; const workcodeName: WideString; 
                                        out WorkCodeID: Integer): WordBool;
begin
  Result := DefaultInterface.SSR_GetWorkCodeIDByName(dwMachineNumber, workcodeName, WorkCodeID);
end;

function TCZKEM.SetEventMode(nType: Integer): WordBool;
begin
  Result := DefaultInterface.SetEventMode(nType);
end;

function TCZKEM.GetAllSFIDName(dwMachineNumber: Integer; out ShortkeyIDName: WideString; 
                               BufferSize1: Integer; out FunctionIDName: WideString; 
                               BufferSize2: Integer): WordBool;
begin
  Result := DefaultInterface.GetAllSFIDName(dwMachineNumber, ShortkeyIDName, BufferSize1, 
                                            FunctionIDName, BufferSize2);
end;

function TCZKEM.SetShortkey(dwMachineNumber: Integer; ShortKeyID: Integer; 
                            const ShortKeyName: WideString; const FunctionName: WideString; 
                            ShortKeyFun: Integer; StateCode: Integer; const StateName: WideString; 
                            const Description: WideString; StateAutoChange: Integer; 
                            const StateAutoChangeTime: WideString): WordBool;
begin
  Result := DefaultInterface.SetShortkey(dwMachineNumber, ShortKeyID, ShortKeyName, FunctionName, 
                                         ShortKeyFun, StateCode, StateName, Description, 
                                         StateAutoChange, StateAutoChangeTime);
end;

function TCZKEM.GetShortkey(dwMachineNumber: Integer; ShortKeyID: Integer; 
                            var ShortKeyName: WideString; var FunctionName: WideString; 
                            var ShortKeyFun: Integer; var StateCode: Integer; 
                            var StateName: WideString; var Description: WideString; 
                            var AutoChange: Integer; var AutoChangeTime: WideString): WordBool;
begin
  Result := DefaultInterface.GetShortkey(dwMachineNumber, ShortKeyID, ShortKeyName, FunctionName, 
                                         ShortKeyFun, StateCode, StateName, Description, 
                                         AutoChange, AutoChangeTime);
end;

function TCZKEM.GetAllAppFun(dwMachineNumber: Integer; out AppName: WideString; 
                             out FunofAppName: WideString): WordBool;
begin
  Result := DefaultInterface.GetAllAppFun(dwMachineNumber, AppName, FunofAppName);
end;

function TCZKEM.GetAllRole(dwMachineNumber: Integer; out RoleName: WideString): WordBool;
begin
  Result := DefaultInterface.GetAllRole(dwMachineNumber, RoleName);
end;

function TCZKEM.GetAppOfRole(dwMachineNumber: Integer; Permission: Integer; out AppName: WideString): WordBool;
begin
  Result := DefaultInterface.GetAppOfRole(dwMachineNumber, Permission, AppName);
end;

function TCZKEM.GetFunOfRole(dwMachineNumber: Integer; Permission: Integer; out FunName: WideString): WordBool;
begin
  Result := DefaultInterface.GetFunOfRole(dwMachineNumber, Permission, FunName);
end;

function TCZKEM.SetPermOfAppFun(dwMachineNumber: Integer; Permission: Integer; 
                                const AppName: WideString; const FunName: WideString): WordBool;
begin
  Result := DefaultInterface.SetPermOfAppFun(dwMachineNumber, Permission, AppName, FunName);
end;

function TCZKEM.DeletePermOfAppFun(dwMachineNumber: Integer; Permission: Integer; 
                                   const AppName: WideString; const FunName: WideString): WordBool;
begin
  Result := DefaultInterface.DeletePermOfAppFun(dwMachineNumber, Permission, AppName, FunName);
end;

function TCZKEM.IsUserDefRoleEnable(dwMachineNumber: Integer; Permission: Integer; 
                                    out Enable: WordBool): WordBool;
begin
  Result := DefaultInterface.IsUserDefRoleEnable(dwMachineNumber, Permission, Enable);
end;

function TCZKEM.SearchDevice(const commType: WideString; const address: WideString; 
                             out DevBuffer: WideString; DevBufferSize: Integer): WordBool;
begin
  Result := DefaultInterface.SearchDevice(commType, address, DevBuffer, DevBufferSize);
end;

function TCZKEM.SetUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString; 
                                  var IDCardData: Byte; DataLen: Integer): WordBool;
begin
  Result := DefaultInterface.SetUserIDCardInfo(dwMachineNumber, strEnrollNumber, IDCardData, DataLen);
end;

function TCZKEM.GetUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString; 
                                  out IDCardData: Byte; var DataLen: Integer): WordBool;
begin
  Result := DefaultInterface.GetUserIDCardInfo(dwMachineNumber, strEnrollNumber, IDCardData, DataLen);
end;

function TCZKEM.DelUserIDCardInfo(dwMachineNumber: Integer; const strEnrollNumber: WideString): WordBool;
begin
  Result := DefaultInterface.DelUserIDCardInfo(dwMachineNumber, strEnrollNumber);
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TCZKEM]);
end;

end.
