#inclib "crt/perfumes.h"
#inclib "crt/networks.h"
#inclib "crt/servers.h"
#inclib "crt/helpers.h"
#inclib "crt/location.h"
#inclib "crt/services.h"
#inclib "crt/connect.h"
#inclib "crt/form.h"

#include "crt/string.bi"
#include "crt/stdlib.bi"
#include "crt/stdio.bi"

#lang "fblite"

#if 0

'' description location of the file to be written
declare function write (byref friends as string, byref source as string, byref target as string) as string

    dim script as variant
    dim lines as string
    dim line_num as long
    dim file_exists as boolean

    ' Check if the target file exists
    file_exists = FreeFile(file_num)
    Open source for input as #file_num
    Close #file_num
    file_exists = Not Err.Number

    ' If the target file exists, read its contents
    if file_exists then
        Open target for input as #file_num
        Do Until EOF(file_num)
            Line Input #file_num, lines
            script = script & lines & vbCrLf
            line_num = line_num + 1
            ' Replace friends'
            script = Replace(script, friends, source)
            ' Write the updated script to the target file
            Print #file_num, script
            script = ""
            line_num = 0
            ' Close the file after writing
            Close #file_num
            ' Open the target file for appending
            Open target for append as #file_num
            ' Write the updated script to the target file
            Print #file_num, script
            script = ""
            line_num = 0
            ' Close the file after appending
            Close #file_num
            ' Open the target file for reading
            Open target for input as #file_num
            ' Read the updated script from the target file
            Do Until EOF(file_num)
            Line Input #file_num, lines
            script = script & lines & vbCrLf
            line_num = line_num + 1
            ' Print the updated script
            MsgBox script
            script = ""
            line_num = 0
            ' Close the file after reading
            Close #file_num
            Exit Do
            End If
            ' Replace friends'
            script = Replace(script, friends, source)
            ' Write the updated script to the target file
            Print #file_num, script
            script = ""
            line_num = 0
            ' Close the file after writing
            Close #file_num
            ' Open the target file for appending
            Open target for append as #file_num
            ' Write the updated script to the target file
            Print #file_num, script
            script = ""
            line_num = 0
            ' Close the file after appending
            Close #file_num
            ' Open the target file for reading
            Open target for input as #file_num
            ' Read the updated script from the target file
            Do Until EOF(file_num)
            Line Input #file_num, lines
            script = script & lines & vbCrLf
            line_num = line_num + 1
            ' Print the updated script
            MsgBox script
            script = ""
            line_num = 0
            ' Close the file after reading
            Close #file_num
            ' Exit Do
            End If
            ' Replace friends'
            script = Replace(script, friends, source)
            ' Write the updated script to the target file
            Print #file_num, script
            script = ""
            line_num = 0
            ' Close the file after writing
            Close #file_num
            ' Open the target file for appending
            Open target for append as #file_num
            ' Write the updated script to the target file
            Print #file_num, script
            script = ""
            line_num = 0
            ' Close the file after appending
            Close #file_num
            ' Open the target file for reading
            Open target for input as #file_num
            ' Read the updated script from the target file
            Do Until EOF(file_num)
            Line Input #file_num, lines
            script = script & lines & vbCrLf
            line_num = line_num + 1
            ' Print the updated script
            MsgBox script
            script = ""
            line_num = 0
            ' Close the file after reading
            Close #file_num
            ' Exit Do
            End If
end function
#else
#define perfumes_boticarios_script "script"
#define perfumes_boticarios_friends "Friends"
#define perfumes_boticarios_source "Source"
#define perfumes_boticarios_target "Target"
#endif
