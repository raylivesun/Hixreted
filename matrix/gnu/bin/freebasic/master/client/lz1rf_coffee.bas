#inclib "crt/server.h"
#inclib "crt/locations.h"
#inclib "crt/services.h"
#inclib "crt/hostnames.h"
#inclib "crt/localhost.h"
#inclib "crt/offices.h"
#inclib "crt/styles.h"
#inclib "crt/common.h"
#inclib "crt/support.h"

#include "crt/string.bi"
#include "crt/stdio.bi"
#include "crt/stdlib.bi"


#lang "fblite"
#if 0
'' connection to the server and connect to the server
declare function connect (byref server as string, byref location as string, byref port as string) as string

    ' construct the server address
    server := "tcp://" & server & ":" & port

    ' create a new socket
    socket := socket()
    
    ' connect to the server
    if connect(socket, server, "80") <> "" then
        result := "Failed to connect to the server"
        return
    end if

    ' send the HTTP GET request
    send(socket, "GET " & location & " HTTP/1.1\r\n" &
    "Host: " & server & "\r\n" &
    "Connection: close\r\n" &
    "\r\n")

    ' receive the server response
    response := receive(socket)
    
    ' close the socket
    close(socket)

    ' extract the HTTP status code
    status_code := extract_status_code(response)

    ' check if the status code is 200 (OK)
    if status_code <> "200" then
    result := "Failed to retrieve data from the server"
        return
    end if

    ' extract the HTML content
    html_content := extract_html_content(response)

    ' return the HTML content
    result := html_content

end function

' extract the HTTP status code from the server response
declare function extract_status_code (byref response as string) as string

    ' find the position of the status code
    start_index := instr(response, "HTTP/1.1 ") + 9
    end_index := instr(response, " ", start_index) - start_index

    ' extract the status code
    status_code := mid(response, start_index, end_index)

    ' return the status code
    result := status_code

end function

' extract the HTML content from the server response
declare function extract_html_content (byref response as string) as string

    ' find the position of the HTML content
    start_index := instr(response, "\r\n\r\n") + 4
    end_index := len(response)

    ' extract the HTML content
    html_content := mid(response, start_index, end_index - start_index)

    ' return the HTML content
    result := html_content

end function
' send an HTTP request to the server
let html_content := connect("example.com", "/index.html", "80")

' print the HTML content
print html_content
#else
#define html_content "http://example.com"
print html_content
#endif


