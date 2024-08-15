-- [Xa]-EDIT-v20--DELLSTORE[GG]v2 
 
gg.setVisible(false) 
DELLSTORE=0
xDATEx="04/22/24" 
xVERx="v20" 
xDVx=xDATEx.."  "..xVERx 
xUPDATEINFOx="√ Allocate Page Option\n√ Added 'More Scripts by DELLSTORE'" 
xNOTEx="•• Update Info ••\nLast Update on "..xDATEx.."  "..xVERx.."\n"..xUPDATEINFOx 
line="-------------------------------------------------------"
xTAGx="DELLSTORE[GG]v2"
xMOTOx="Hacking is the Game"
xLINKx="https://www.tiktok.com/@dellstorecpm.id"
xLUAx="[Xa]-EDIT-v20--DELLSTORE[GG]v2.lua"
print(line)
print(xTAGx)
print(xMOTOx) 
print(xLINKx) 
print(xLUAx)
print("Updated on: "..xDATEx) 
print(line)
print("Contributor:  'Acka01' ")
print(line)  
---------------------------------------------------------------------
gg.require("101.1") 
v=gg.getTargetInfo()

    if v==nil then 
        print("×× ERROR ××\nINVALID PROCESS SELECTED OR NO ROOT ACCESS")
        gg.setVisible(true) 
        os.exit()
        fuckshit() 
        return
    end 

vprocess=v.processName
vlabel=v.label
vversion=v.versionName
if v.x64 then vbit="x64" else vbit="x32" end
---------------------------------------------------------------------
-- first alert 
gg.toast(xDATEx)  
local idiot=gg.alert(xTAGx.."\n"..xMOTOx.."\n"..xLINKx.."\n"..xLUAx.."\n- Colaboration with Acka01 -\n\n"..xNOTEx.."\n\n## NOTICE ##\nThis script requires general knowledge of LIB hacking and method functions and How/When they propagate.\n\nNOT Optimized for PC/Emulator use.\nDoes NOT support x86 bit.\nClass Name Search and Method Name Search are for UNITY Games only (libil2cpp.so). Press √ to Continue",xDATEx,nil,"[ √ ]") 
    if idiot~=3 then 
    print("Goodbye") 
    print(line) 
    gg.setVisible(true) 
    os.exit()
    fuckshit() 
    return
    end  
---------------------------------------------------------------------
AlPg=gg.multiChoice({
	"Allocate Page",
	"Do Not Allocate Page"},{[1]=true},xTAGx)  
secondmethod=0
if AlPg==nil then print("Cancelled at Allocate") gg.setVisible(true) os.exit() return end 
if not AlPg[2] then allocpage=gg.allocatePage(7) end
if AlPg[2] then allocpage=nil end 
    if allocpage==nil or #(tostring(allocpage))==0 or type(allocpage)~="number" then
        print("Unable to Allocate New Page") 
        print("( "..tostring(allocpage).." )") 
        print(line) 
        y={} 
            for i, v in ipairs(gg.getRangesList()) do
                if v.state=="O" and v.type=="rw-p" then 
                c=0
                    for a=1,15 do 
                    y[a]={}
                    y[a].address=v["end"]-c
                    y[a].flags=4      
                    c=c+4 
                    end
                z=0
                x=gg.getValues(y) 
                    for a=1,15 do
                        if x[a].value~=0 then
                            z=1
                        end
                    end 
                    if z==0 then 
                        allocpage=x[5].address
                        secondmethod=1 
                        print("Alternate Method Successful")
                        print(line)  
                        break 
                    end
                end            
            end 
            if secondmethod==0 then 
                print("×× ERROR ××\nAlternate method to find a useable writable page failed.")
                print(line)  
                gg.toast("Please Wait...") 
                gg.clearResults()
                gg.setRanges(gg.REGION_CODE_APP) 
                gg.searchNumber("0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0::77",4) 
                    if gg.getResultsCount()==0 then
                    print(line) 
                    print("×× ERROR ××\nThird Attempt Failed")
                    print(line) 
                    gg.setVisible(true) 
                    os.exit() 
                    fuckshit()
                    return
                   end 
                allocpage=gg.getResults(1,10) 
                allocpage=allocpage[1].address 
                gg.getResults(gg.getResultsCount())
                gg.clearResults() 
                print("Third Attempt Successful")
                print(line)  
            end 
        else
            print("Allocate New Page Successful")
            print(line) 
        end 
gg.setVisible(false)  
AP={} o=0
INTX={}
INTX[1]={}
INTX[1].address=allocpage
INTX[1].flags=4
INTX=gg.getValues(INTX) 
FLOATX={} 
FLOATX[1]={}
FLOATX[1].address=allocpage
FLOATX[1].flags=16
FLOATX=gg.getValues(FLOATX) 
DOUBLEX={} 
DOUBLEX[1]={}
DOUBLEX[1].address=allocpage
DOUBLEX[1].flags=64
DOUBLEX=gg.getValues(DOUBLEX) 
QWORDX={} 
QWORDX[1]={}
QWORDX[1].address=allocpage
QWORDX[1].flags=32
QWORDX=gg.getValues(QWORDX)  
    for i = 1,4 do 
    AP[i]={}
    AP[i].address=allocpage+o
    AP[i].flags=2
    o=o+2
    end
AP=gg.getValues(AP) 
o=nil 

---------------------------------------------------------------------

--███████████████████████
libresult=0
xxxxxxxxxx=0
liblist = gg.getRangesList()
    if #(liblist)==0 then 
    print("×× LIB ERROR #01 ××\nNo Libs Found\nTry a Different Virtual Environment \nor Try a Better Game Installation Method\nor Download Game From 'apkcombo.com' ")
    gg.setVisible(true) os.exit() 
    end

xpk = v.packageName
liblist = gg.getRangesList(xpk.."*.so")
ll=1 listlib={} listname={} 
    for i, v in ipairs(liblist) do
        if liblist[i].state=="Xa" then 
        listlib[ll]=liblist[i].name:gsub(".*/", "") 
        listname[ll]=liblist[i].name:gsub(".*/", "")
        ll=ll+1        
        libresult=1 
        end   
    end -- loop liblist 

xsapkx=1
    if libresult==0 then
    xsapk={}
    liblist=gg.getRangesList()
        for i, v in ipairs(liblist) do
            if liblist[i].state=="Xa" and string.match(liblist[i].name,"split_config") then
            xsapk[xsapkx]=liblist[i]["end"]-liblist[i].start 
            xsapkx=xsapkx+1 
            listlib[ll]=liblist[i].name:gsub(".*/", "") 
            listname[ll]=liblist[i].name:gsub(".*/", "")
            ll=ll+1        
            libresult=2 
            end            
        end 
    end 

    if libresult==2 then
        lislitb=nil listlib={} 
        DELLSTOREQ=math.max(table.unpack(xsapk))
        for i, v in ipairs(liblist) do              
            if liblist[i].state=="Xa" and liblist[i]["end"]-liblist[i].start==DELLSTOREQ then              
            listlib[1]=liblist[i].start
            libresult=3 
            end
        end
    end 

    if libresult==2 then gg.alert("Split Apk Detected\nScript Error\nUnable to Locate Correct Start Address")
    gg.setVisible(true) os.exit() return
    end 

    if libresult==0 then 
    print("×× LIB ERROR #02 ××\nNo Libs Found\nTry a Different Virtual Environment \nor Try a Better Game Installation Method\nor Download Game From 'apkcombo.com' ")
    gg.setVisible(true) os.exit() return 
    end   

::CHLIB::
    if libresult==1 then 
    xchlibx=0
    listlibl=#(listlib) 
    gg.toast("DELLSTORE[GG]v2 + ACKA01")  
    chlib=gg.multiChoice(
	listlib,{},"DELLSTORE[GG]v2 + Acka01\n\n<<[ SELECT LIB ]>>") 
	
        if chlib==nil then gg.setVisible(true) os.exit() return end 
            for i, v in ipairs(listlib) do
                if chlib[i] then xchlibx=1 end
            end 
        
        if xchlibx==0 then goto CHLIB return end 
	
	        for i, v in ipairs(listlib) do
	            if chlib[i] then 
	            libzz=tostring(listlib[i])
	            xxzyzxx=gg.getRangesList(libzz)  
	            end
	        end 
	        region={}
	        for i, v in ipairs(xxzyzxx) do
	            sizestart=nil sizeend=nil totalsize=nil
	            totalsize=string.format("%.4f",tostring((tonumber(xxzyzxx[i]["end"]..".0")-tonumber(xxzyzxx[i].start..".0"))/1000000.0))
	            
	            elf=nil elf={} elf[1]={} elf[2]={} elf[3]={} elf[4]={}
	            elf[1].address=xxzyzxx[i].start
	            elf[1].flags=1
	            elf[2].address=xxzyzxx[i].start+1
	            elf[2].flags=1
                elf[3].address=xxzyzxx[i].start+2
	            elf[3].flags=1    
                elf[4].address=xxzyzxx[i].start+3
	            elf[4].flags=1        
	            elf=gg.getValues(elf) 
	            elfch=nil elfch={}
	                if elf[1].value>31 and elf[1].value<127 then 
	                    elfch[1]=string.char(tostring(elf[1].value))
	                else
	                    elfch[1]=" "
	                end 
	                if elf[2].value>31 and elf[2].value<127 then 
	                    elfch[2]=string.char(tostring(elf[2].value))
	                else
	                    elfch[2]=" "
	                end 
	                if elf[3].value>31 and elf[3].value<127 then 
	                    elfch[3]=string.char(tostring(elf[3].value))
	                else
	                    elfch[3]=" "
	                end 
	                if elf[4].value>31 and elf[4].value<127 then 
	                    elfch[4]=string.char(tostring(elf[4].value))
	                else
	                    elfch[4]=" "
	                end 
	            elfch=table.concat(elfch) 
	            region[i]=v.state.." - ("..elfch..")  "..totalsize
	        end 
	        gg.toast("DELLSTORE[GG]v2 + ACKA01")  
	        libreg=gg.multiChoice(region,{},"DELLSTORE[GG]v2 + Acka01\n\n<<[ SELECT LIB REGION ]>>\nRegion, Header Text, Addresses/1M")
	            if libreg==nil then goto CHLIB  return end 
	                c=0 for i = 1,100 do
	                            if libreg[i] then c=c+1 end
	                        end 
	            if c==0 then goto CHLIB return end 
	                for i = 1, #(region) do
	                    if libreg[i] then
	                       xand=gg.getRangesList(libzz)[i].start 
	                       libz=libzz 
	                       xxxxxxxxxx=i 
	                       xxxxxSTATE=string.sub(tostring(region[i]),1,2)
	                    end
	                end 
	end -- libresult 1 
	
	if libresult==3 then
        xand=listlib[1] 
	    libz=tostring(listlib[1]) 
    end 
	   
    if libresult==1 then
        liblib=libz
    else 
        liblib="Split Apk"
    end              

gg.toast("DELLSTORE[GG]v2 + ACKA01")  
if xxxxxSTATE==nil then xSTATEx="n/a" else xSTATEx=xxxxxSTATE end 
local auto=gg.alert(vlabel.."\n"..vbit.."  v"..vversion.."\n\nStart Address:\n"..liblib.." ["..xSTATEx.."]\n0x"..string.format("%X",xand),"YES","NO","<[ EXIT ]>") 
    if auto==3 then gg.setVisible(true) os.exit() return end 
    if auto==2 then goto CHLIB end 
print(vlabel.."\n"..vbit.."  v"..vversion.."\n\nStart Address:\n"..liblib.." ["..xSTATEx.."]\n0x"..string.format("%X",xand))

--███████████████████████
-- DELLSTOREKEY 
if v.x64 then
    xtrue="h200080D2"
    xfalse="h000080D2"
    xEND="hC0035FD6"
    xMOVKX0="h000080F2" -- E,Q
    xMOVKX016="h0000A0F2"  -- E,Q
    xMOVKX032="h0000C0F2"  -- E,Q
    xMOVKX048="h0000E0F2" 
    xMOVZX048="h0000E0D2" 
    xMOVW0="h00008052"  -- I,F
    xMOVKW0="h00008072"   -- I,F 
    xMOVKW016="h0000A072"
    xMOVX0=xfalse -- F,Q 
    xFMOVS0W0="1E270000h" 
    xFMOVD0X0="h0000679E"
    xMOVZX0="h000080D2"
    
else
    xtrue="h0100A0E3"
    xfalse="h0000A0E3"
    xEND="h1EFF2FE1"
end 

--███████████████████████
--███████████████████████
--███████████████████████
REVERT=0
xCLASS=0
mcO="" 
mcEV="" 
function menu()
DELLSTORE=1 gg.toast(xTAGx) 
if xCLASS==1 then menu2() return end 

    if REVERT==1 then
        if cc==0 then cc=1 end 
        if isOffset==2 then 
            ihex=nil ihex={} 
            for i = 1,#(I) do 
                ihex[i]="["..i.."]=0x"..string.format("%X",tostring(I[i]))
            end
            ihex=tostring(table.concat(ihex,",  "))
            if #(I)>10 then ihex="["..#(I).."]  "..tostring(mcEV)  end            
            xmcOC=mcOC 
            XMCxx=tostring(xmcOC.."  /  "..xmcCO)
        end
        if isOffset==1 then ihex="[1] = "..mcOC XMCxx="" end
        if isOffset==0 then ihex="" XMCxx=""  end 
        
        local r=gg.choice({"REVERT","DON'T REVERT"},0,XMCxx.."\n"..ihex) 
        if r==nil then gg.toast("CANCELLED") return end 
        if cc==1 then cc=0 end 
        if r==1 then gg.setValues(DELLSTOREREV) gg.toast("[ REVERT ]")  end
    end


::STARTMC:: 
COPYHEX=0
SCRIPTIT=0

mc=gg.prompt({
     "Public Class Field Offset Search",  --1 
     "• Method 0xOffset or 'Method_Name' or\n• 'Method_Name~ClassName'\nPress 'OK' with No Edit to Save.",  -- 2
     "True / 1",  -- 3
     "False / 0",  -- 4
     "NOP",  -- 5
     "+Maximum + Value +",  -- 6
     " - Minimum - Value -",  -- 7
     "Enter Value  +/-   !! MUST BE WITHIN RANGE !!",  -- 8
     "INT / DWORD / SHORT ",  -- 9
     "FLOAT (equivalent)",  -- 10
     "FLOAT (real)",  -- 11
     "DOUBLE",  -- 12
     "QWORD / LONG",  -- 13
     "Copy:  ARM / OpCode / Offset",  -- 14
     "Script it",  -- 15
     "INFO / HELP",  -- 16
     "More Scripts bY DELLSTORE[GG]v2",  -- 17
     "[ E X I T ]"},  -- 18 
    {[2]=mcO, [8]=mcEV},
    {[1]="checkbox",
    [2]="number",
    [3]="checkbox",
    [4]="checkbox",
    [5]="checkbox", 
    [6]="checkbox",
    [7]="checkbox",
    [8]="number",
    [9]="checkbox",
    [10]="checkbox",
    [11]="checkbox",
    [12]="checkbox",
    [13]="checkbox",
    [14]="checkbox",
    [15]="checkbox",
    [16]="checkbox",
    [17]="checkbox",
    [18]="checkbox"})

if mc==nil then cancel() return end 
if mc[18] then exit() fuckshit() return end 
if mc[16] then infohelp() return end 
if mc[17] then morescripts() return end 
if mc[1] then xCLASS=1 menu2() return end 

    if #(mc[2])==0 then 
    gg.alert("×× ERROR ××\nInvalid Offset / Method")
    mcO="" 
    goto STARTMC 
    return
    end 

mcO=tostring(mc[2])
isOffset=0

    if string.byte(mcO)==48 then 
        if string.byte(mcO,2)==120 or string.byte(mcO,2)==88 then
            if type(tonumber(mcO))~="number" then
                gg.alert("×× ERROR ××\nInvalid Offset Number")
                goto STARTMC 
                return
            end 
        end 
    else 
        for i = 1,#(tostring(mcO)) do
            if string.byte(tostring(mcO),i)==46  -- period 
            or string.byte(tostring(mcO),i)==40 -- ( 
            or string.byte(tostring(mcO),i)==41 -- )
            or string.byte(tostring(mcO),i)==123 -- {
            or string.byte(tostring(mcO),i)==125  -- } 
            or string.byte(tostring(mcO),i)==32 then -- space 
                gg.alert("×× ERROR ××\nInvalid Method/Class Name.\nNo spaces\nNo periods\nNo ( )\nNo { }")
                goto STARTMC 
                return
            end
        end 
    end 

mcOC=nil mcCO=nil 
    if type(tonumber(mcO))=="number" then 
        isOffset=1 
        mcOC=mcO 
    else 
        isOffset=2 
        for i = 1,#(mcO) do
            if string.byte(mcO,i)==126 then
                x126=i  
                mcOC=tostring(string.sub(mcO,1,x126-1))
                if x126==#(mcO) then
                    xxMCCO="nil" 
                else
                    mcCO=tostring(string.sub(mcO,x126+1,-1))
                    xxMCCO=mcCO 
                end 
            break
            else 
                mcOC=mcO           
                xxMCCO="nil" 
            end 
        end 
        xsox=0
        Ach=gg.alert("Method Name =\n  '"..mcOC.."'\n\nClass Name =\n   '"..xxMCCO.."'","SAVE","SEARCH","SEARCH + EDIT")
            if Ach==0 then goto STARTMC return end 
            if Ach==1 then gg.toast("SAVED") REVERT=0 return end 
            if Ach==3 then goto EDITFUNCTIONS return end 
            if Ach==2 then REVERT=0  xsox=1  METHODSEARCH() 
                if methodSuccess==0 then return end
                cpyoffx=nil cpyoffx={}
                    for i = 1,#(I) do  
                        cpyoffx[i]="0x"..string.format("%X",tostring(I[i]))
                    end
                cpyoffx=tostring(table.concat(cpyoffx,"\n"))
                Acpy=gg.alert(mcOC.."\n"..xxMCCO.."\n\n"..cpyoffx,"COPY","MENU",xTAGx) 
                    if Acpy==2 then goto STARTMC  return end
                    if Acpy==1 then 
                        gg.copyText(cpyoffx, false) 
                        gg.toast("0xOFFSET(s)  COPIED\n"..cpyoffx) 
                        return 
                    end
            end 
    end 

::EDITFUNCTIONS:: 

 local xeditions=0
     for i = 3,7 do if mc[i] then xeditions=1 end end 
     for i = 9,13 do if mc[i] then xeditions=1 end end
if xeditions==0 then 
    gg.alert("×× NO Edit Option Selected ××","OK",nil,xTAGx) 
    goto STARTMC 
    return
end 

if mc[14] then COPYHEX=1 end
if mc[15] then SCRIPTIT=1 end 

if mc[3] then xTRUE() return end
if mc[4] then xFALSE() return end 
if mc[5] then xNOP() return end 
if mc[6] then xMAXIMUM() return end 
if mc[7] then xMINIMUM() return end 

mcEV=tostring(mc[8]) 
tsEV=tostring(mc[8]) 

if tostring(mc[8])=="0" then xFALSE() return end 

    if mc[9] or mc[10] or mc[11] or mc[12] or mc[13] then 
        if type(tonumber(mcEV))~="number" then 
            gg.alert("×× ERROR ××\nInvalid Edit Value")
            goto STARTMC 
        return
        end 
    end
    
mcEV=tonumber(mc[8]) 

if mc[9] then xINT() return end 
if mc[10] then xFLOATE() return end 
if mc[11] then xFLOATR() return end 
if mc[12] then xDOUBLE() return end 
if mc[13] then xQWORD() return end 

REVERT=0 

end -- menu 
    
--███████████████████████
--███████████████████████
--███████████████████████

function xTRUE()
c=nil cc=nil 
DELLSTOREREV=nil DELLSTOREREV={}
EDIT=nil EDIT={}

    if isOffset==1 then 
        DELLSTOREREV[1]={} DELLSTOREREV[2]={} 
        EDIT[1]={} EDIT[2]={}
        DELLSTOREREV[1].address=xand+mcO
        DELLSTOREREV[1].flags=4
        DELLSTOREREV[2].address=xand+mcO+4
        DELLSTOREREV[2].flags=4
        DELLSTOREREV=gg.getValues(DELLSTOREREV) 
        EDIT[1].address=xand+mcO
        EDIT[1].value=xtrue
        EDIT[1].flags=4
        EDIT[2].address=xand+mcO+4
        EDIT[2].value=xEND
        EDIT[2].flags=4       
        gg.setValues(EDIT) 
        REVERT=1 
        cc=1 
    end 


    if isOffset==2 then 
        METHODSEARCH() if methodSuccess==0 then return end 
        clear() wait() 
        c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1 
                DELLSTOREREV[c]={}
                EDIT[c]={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c].address=load[i].address
                EDIT[c].value=xtrue 
                EDIT[c].flags=4
                c=c+1 
                DELLSTOREREV[c]={}
                EDIT[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xEND 
                EDIT[c].flags=4
                cc=cc+1 
            end
       DELLSTOREREV=gg.getValues(DELLSTOREREV) 
       gg.setValues(EDIT) 
       REVERT=1
   end 
        
gg.toast("[ "..cc.." ]  TRUE / 1") 
if COPYHEX==1then copyhex() end
if SCRIPTIT==1 then scripit() end 
end -- xTRUE     

--███████████████████████

function xFALSE()
c=nil cc=nil 
DELLSTOREREV=nil DELLSTOREREV={}
EDIT=nil EDIT={}

    if isOffset==1 then 
        DELLSTOREREV[1]={} DELLSTOREREV[2]={} 
        EDIT[1]={} EDIT[2]={}
        DELLSTOREREV[1].address=xand+mcO
        DELLSTOREREV[1].flags=4
        DELLSTOREREV[2].address=xand+mcO+4
        DELLSTOREREV[2].flags=4
        EDIT[1].address=xand+mcO
        EDIT[1].value=xfalse
        EDIT[1].flags=4
        EDIT[2].address=xand+mcO+4
        EDIT[2].value=xEND
        EDIT[2].flags=4
        DELLSTOREREV=gg.getValues(DELLSTOREREV) 
        gg.setValues(EDIT) 
        REVERT=1 
        cc=1 
    end 


    if isOffset==2 then 
        METHODSEARCH() if methodSuccess==0  then return end 
        clear() wait() 
        c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1 
                DELLSTOREREV[c]={}
                EDIT[c]={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c].address=load[i].address
                EDIT[c].value=xfalse
                EDIT[c].flags=4
                c=c+1 
                DELLSTOREREV[c]={}
                EDIT[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xEND 
                EDIT[c].flags=4
                cc=cc+1 
            end
       DELLSTOREREV=gg.getValues(DELLSTOREREV) 
       gg.setValues(EDIT) 
       REVERT=1
   end 
        
gg.toast("[ "..cc.." ]  FALSE / 0") 
if COPYHEX==1then copyhex() end
if SCRIPTIT==1 then scripit() end 
end -- xFALSE 

--███████████████████████

function xNOP()
c=nil cc=nil 
DELLSTOREREV=nil DELLSTOREREV={}
EDIT=nil EDIT={}

    if v.x64 then xNOP="~A8 NOP" else xNOP="~A NOP" end 

    if isOffset==1 then 
        DELLSTOREREV[1]={} 
        EDIT[1]={} 
        DELLSTOREREV[1].address=xand+mcO
        DELLSTOREREV[1].flags=4
        DELLSTOREREV=gg.getValues(DELLSTOREREV) 
        EDIT[1].address=xand+mcO
        EDIT[1].value=xNOP
        EDIT[1].flags=4        
        gg.setValues(EDIT) 
        REVERT=1 
        cc=1 
    end 


    if isOffset==2 then 
        METHODSEARCH() if methodSuccess==0 then return end 
        clear() wait() 
        c=0
            for i, v in ipairs(load) do
                c=c+1 
                DELLSTOREREV[c]={}
                EDIT[c]={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c].address=load[i].address
                EDIT[c].value=xEND 
                EDIT[c].flags=4
                cc=cc+1 
            end
       DELLSTOREREV=gg.getValues(DELLSTOREREV) 
       gg.setValues(EDIT) 
       REVERT=1
   end 
        
gg.toast("[ "..cc.." ]  RET / BX LR") 
if COPYHEX==1then copyhex() end
if SCRIPTIT==1 then scripit() end 
end -- xRETBXLR() 

--███████████████████████

function xMAXIMUM()
maxch=gg.choice({
	"INT +2,147,483,647",
	"FLOAT +3.4e38 (equiv)",
	"FLOAT +3.4e38 (real)",
	"DOUBLE +1.79e307",
	"QWORD +9.2e18"},0,"MAXIMUM +VALUE")
	
	if maxch==nil then menu() return end 

DELLSTOREREV=nil DELLSTOREREV={}
EDIT=nil EDIT={}
c=0 cc=0 

    
--======================================
-- MAX INT maxch 1 
    if v.x64 then 
        xxint1="~A8 MOV W0, #0xFFFF" 
        xxint2="~A8 MOVK W0, #0x7FFF, LSL #16"
    else 
        xxint1="h0000E0E3"  -- MOV R0, #-1
        xxint2="~A MOVT R0, #32767 "
    end 
    
    if maxch==1 then 
        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={}
            EDIT[1]={} EDIT[2]={} EDIT[3]={}
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            EDIT[1].address=xand+mcO 
            EDIT[1].value=xxint1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=xxint2 
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=xEND
            EDIT[3].flags=4
            gg.setValues(EDIT) 
            gg.toast("+ 2,147,483,647") 
            cc=1 
        end 
---------------------------        
        if isOffset==2 then 
            METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=xxint1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xxint2 
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+8
                EDIT[c].value=xEND
                EDIT[c].flags=4
                cc=cc+1 
            end
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  +2,147,483,647") 
        end        
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end         
    end -- if maxch=1 
    
--======================================
-- MAX FLOAT equiv - maxch 2
    if v.x64 then 
        xxfloateq1="~A8 MOV X0, #0x7F7FC99E"
    else 
        xxfloateq1="~A MOVT R0, #32639" 
    end 
    
    if maxch==2 then 
        if isOffset==1 then
            DELLSTOREREV[1]={} DELLSTOREREV[2]={}
            EDIT[1]={} EDIT[2]={}
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            EDIT[1].address=xand+mcO
            EDIT[1].value=xxfloateq1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=xEND
            EDIT[2].flags=4
            gg.setValues(EDIT) 
            gg.toast("FLOAT +3.4e38 (equiv)")
            cc=1 
        end -- isOffset 1 
---------------------------                
        if isOffset==2 then
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=xxfloateq1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xEND 
                EDIT[c].flags=4   
                cc=cc+1 
            end
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ] FLOAT +3.4e38 (equiv)") 
        end -- isOffset 2 
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end                         
    end -- maxch 2 

--====================================== 
-- MAX FLOAT  real  maxch 3 
    if v.x64 then 
        xxfloat1="~A8 MOVZ W0, #-0x2662" 
        xxfloat2="~A8 MOVK W0, #0x7F7F, LSL #16"
        xxfloat3=xFMOVS0W0 
        xxfloat4="~A8 RET" 
    else 
        xxfloat1="~A MOVW R0, #51614"
        xxfloat2="~A MOVT R0, #32639"
        xxfloat3="~A VMOV S15, R0 "
        xxfloat4="~A VMOV.F32 S0, S15 " 
    end
    
    if maxch==3 then 
        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={} 
           DELLSTOREREV[4]={} DELLSTOREREV[5]={} 
            EDIT[1]={} EDIT[2]={} EDIT[3]={} EDIT[4]={} 
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4
            DELLSTOREREV[4].address=xand+mcO+12
            DELLSTOREREV[4].flags=4 
            DELLSTOREREV[5].address=xand+mcO+16
            DELLSTOREREV[5].flags=4 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            EDIT[1].address=xand+mcO 
            EDIT[1].value=xxfloat1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=xxfloat2 
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=xxfloat3
            EDIT[3].flags=4
            EDIT[4].address=xand+12 
            EDIT[4].value=xxfloat4 
            EDIT[4].flags=4
            if not v.x64 then 
                EDIT[5]={}
                EDIT[5].address=xand+16
                EDIT[5].value=xEND
                EDIT[5].flags=4
            end 
            gg.setValues(EDIT) 
            gg.toast("FLOAT +3.4e38") 
            cc=1 
        end         
---------------------------                
        if isOffset==2 then 
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=xxfloat1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xxfloat2 
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+8
                EDIT[c].value=xxfloat3
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+12
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+12
                EDIT[c].value=xxfloat4
                EDIT[c].flags=4   
                    if not v.x64 then
                    c=c+1
                    DELLSTOREREV[c]={} 
                    DELLSTOREREV[c].address=load[i].address+16
                    DELLSTOREREV[c].flags=4
                    EDIT[c]={}
                    EDIT[c].address=load[i].address+16
                    EDIT[c].value=xEND
                    EDIT[c].flags=4    
                   end    
               cc=cc+1 
            end -- for I 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  FLOAT +3.4e38") 
        end  -- isOffset 2                   
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end                 
    end  -- maxch 3 

--======================================            
-- MAX DOUBLE  1.79e307 maxch 4
    if v.x64 then 
        xxdouble1="~A8 MOV X0, #-0x385"
        xxdouble2="~A8 MOVK X0, #-0x1F76, LSL #16"
        xxdouble3="~A8 MOVK X0, #0x7D8D, LSL #32"
        xxdouble4="~A8 MOVK X0, #0x7FB9, LSL #48"
        xxdouble5=xFMOVD0X0 
        xxdouble6=xEND     
    else 
        xxdouble1="~A MOVW R0, #64635"
        xxdouble2="~A MOVT R0, #57482"
        xxdouble3="~A MOVW R1, #32141"
        xxdouble4="~A MOVT R1, #32697"
        xxdouble5="~A VMOV D16, R0, R1"
        xxdouble6="~A VMOV.F64 D0, D16"
        xxdouble7=xEND 
    end 

    if maxch==4 then 
        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={} DELLSTOREREV[4]={}
            DELLSTOREREV[5]={} DELLSTOREREV[6]={} DELLSTOREREV[7]={} 
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4
            DELLSTOREREV[4].address=xand+mcO+12
            DELLSTOREREV[4].flags=4
            DELLSTOREREV[5].address=xand+mcO+16
            DELLSTOREREV[5].flags=4
            DELLSTOREREV[6].address=xand+mcO+20
            DELLSTOREREV[6].flags=4
            DELLSTOREREV[7].address=xand+mcO+24
            DELLSTOREREV[7].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1 
            EDIT[1]={} EDIT[2]={} EDIT[3]={} EDIT[4]={}
            EDIT[1].address=xand+mcO
            EDIT[1].value=xxdouble1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=xxdouble2
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=xxdouble3
            EDIT[3].flags=4
            EDIT[4].address=xand+mcO+12
            EDIT[4].value=xxdouble4
            EDIT[4].flags=4                
            EDIT[5]={}
            EDIT[5].address=xand+mcO+16
            EDIT[5].value=xxdouble5
            EDIT[5].flags=4
            EDIT[6]={} 
            EDIT[6].address=xand+mcO+20
            EDIT[6].value=xxdouble6
            EDIT[6].flags=4
                if not v.x64 then 
                EDIT[7]={} 
                EDIT[7].address=xand+mcO+24
                EDIT[7].value=xEND 
                EDIT[7].flags=4
                end
            gg.setValues(EDIT)  
            gg.toast("1.79e307 DOUBLE") 
            cc=1 
        end -- isOffset 1
---------------------------                        
        if isOffset==2 then 
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=xxdouble1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xxdouble2 
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+8
                EDIT[c].value=xxdouble3
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+12
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+12
                EDIT[c].value=xxdouble4
                EDIT[c].flags=4   
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+16
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+16
                EDIT[c].value=xxdouble5
                EDIT[c].flags=4    
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+20
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+20
                EDIT[c].value=xxdouble6 
                EDIT[c].flags=4    
                    if not v.x64 then 
                    c=c+1
                    DELLSTOREREV[c]={} 
                    DELLSTOREREV[c].address=load[i].address+24
                    DELLSTOREREV[c].flags=4
                    EDIT[c]={}
                    EDIT[c].address=load[i].address+24
                    EDIT[c].value=xEND 
                    EDIT[c].flags=4    
                   end    
               cc=cc+1 
            end -- for I 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  1.79e307 DOUBLE") 
        end  -- isOffset 2    
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end                        
    end -- maxch 4 

--======================================            
-- MAX QWORD +9,223,372,036,854,775,807 maxch 5
-- 9223372036854774607
    if v.x64 then 
        xxqword1="~A8 MOVZ X0, #0x7FFF, LSL #48"
        xxqword2="~A8 MOVK X0, #-0x1, LSL #32"
        xxqword3="~A8 MOVK X0, #-0x1, LSL #16"
        xxqword4="~A8 MOVK X0, #-0x1"
        xxqword5="hC0035FD6"
    else 
        xxqword1="~A MOVW R0, #64335"
        xxqword2="~A MOVT R0, #65535"
        xxqword3="~A MOVW R1, #65535"
        xxqword4="~A MOVT R1, #32767"
        xxqword5="~A VMOV D0, R0, R1"
    end
    
    if maxch==5 then
        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={} 
            DELLSTOREREV[4]={} DELLSTOREREV[5]={} DELLSTOREREV[6]={} 
            DELLSTOREREV[7]={} 
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4
            DELLSTOREREV[4].address=xand+mcO+12
            DELLSTOREREV[4].flags=4
            DELLSTOREREV[5].address=xand+mcO+16
            DELLSTOREREV[5].flags=4
            DELLSTOREREV[6].address=xand+mcO+20
            DELLSTOREREV[6].flags=4
            DELLSTOREREV[7].address=xand+mcO+24
            DELLSTOREREV[7].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1 
            EDIT[1]={} EDIT[2]={} EDIT[3]={} 
            EDIT[4]={} EDIT[5]={} 
            EDIT[1].address=xand+mcO
            EDIT[1].value=xxqword1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=xxqword2
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=xxqword3
            EDIT[3].flags=4
            EDIT[4].address=xand+mcO+12
            EDIT[4].value=xxqword4
            EDIT[4].flags=4
            EDIT[5].address=xand+mcO+16
            EDIT[5].value=xxqword5
            EDIT[5].flags=4
                if not v.x64 then 
                EDIT[6]={} 
                EDIT[6].address=xand+mcO+20
                EDIT[6].value=xEND 
                EDIT[6].flags=4  
                end
            gg.setValues(EDIT) 
            gg.toast("QWORD 9.2e18") 
            cc=1 
        end -- isOffset 1 
---------------------------              
         if isOffset==2 then
              METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=xxqword1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xxqword2
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+8
                EDIT[c].value=xxqword3
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+12
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+12
                EDIT[c].value=xxqword4
                EDIT[c].flags=4   
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+16
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+16
                EDIT[c].value=xxqword5
                EDIT[c].flags=4    
                    if not v.x64 then 
                    c=c+1
                    DELLSTOREREV[c]={} 
                    DELLSTOREREV[c].address=load[i].address+20
                    DELLSTOREREV[c].flags=4
                    EDIT[c]={}
                    EDIT[c].address=load[i].address+20
                    EDIT[c].value=xEND 
                    EDIT[c].flags=4    
                   end    
               cc=cc+1 
            end -- for I 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  QWORD 9.2e18") 
        end  -- isOffset 2   
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end                           
    end -- maxch 5
---------------------------        
end -- xMAXIMUM           
--███████████████████████

function xMINIMUM() 
minch=gg.choice({
	"INT -2,147,483,647",
	"FLOAT -3.4e38 (equiv)",
	"FLOAT -3.4e38 (real)",
	"DOUBLE -1.79e307",
	"QWORD -9.2e18"},0,"MINIMUM -VALUE")
	
	if minch==nil then menu() return end 

DELLSTOREREV=nil DELLSTOREREV={}
EDIT=nil EDIT={}
c=0 cc=0 

 --======================================    
-- MIN INT minch 1 

    if v.x64 then 
        xxint1="~A8 MOV X0, #-0x80000000"
    else 
        xxint1="~A MOVT R0, #32768"  
    end 
    
    if minch==1 then 
        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} 
            EDIT[1]={} EDIT[2]={}
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            EDIT[1].address=xand+mcO 
            EDIT[1].value=xxint1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=xEND 
            EDIT[2].flags=4
            gg.setValues(EDIT) 
            gg.toast("- 2,147,483,647") 
            cc=1 
        end 
---------------------------        
        if isOffset==2 then 
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=xxint1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xEND 
                EDIT[c].flags=4
                cc=cc+1 
            end
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  -2,147,483,647") 
        end     
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end                    
    end -- if minch=1 
    
--======================================
-- MIN FLOAT equiv - mInch 2 -3.4e38
    if v.x64 then 
        xxfloateq1="~A8 MOV X0, #0xFF7F0000" 
    else 
        xxfloateq1="~A MOVT R0, #65407 "   
    end 
    
    if minch==2 then 
        if isOffset==1 then
            DELLSTOREREV[1]={} DELLSTOREREV[2]={}
            EDIT[1]={} EDIT[2]={}
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            EDIT[1].address=xand+mcO
            EDIT[1].value=xxfloateq1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=xEND
            EDIT[2].flags=4
            gg.setValues(EDIT) 
            gg.toast("FLOAT -3.4e38 (equiv)")
            cc=1 
        end -- isOffset 1 
---------------------------                
        if isOffset==2 then
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=xxfloateq1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xEND 
                EDIT[c].flags=4   
                cc=cc+1 
            end
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..c.." ] FLOAT -3.4e38 (equiv)") 
        end -- isOffset 2      
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end                    
    end -- minch 2 

--======================================            
-- MIN FLOAT  real  mInch 3 -3.4e38 
    if v.x64 then 
        xxfloat1="~A8 MOV W0, #0xFF7F0000"
        xxfloat2="~A8 MOVK W0, #-0x3662, LSL #16"
        xxfloat3=xFMOVW0S0 
        xxfloat4="~A8 RET" 
    else 
        xxfloat1="~A MOVW R0, #2310"
        xxfloat2="~A MOVT R0, #65407"
        xxfloat3="~A VMOV S15, R0 "
        xxfloat4="~A VMOV.F32 S0, S15 " 
    end
    
    if minch==3 then 
        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={} 
           DELLSTOREREV[4]={} DELLSTOREREV[5]={} 
            EDIT[1]={} EDIT[2]={} EDIT[3]={} EDIT[4]={} 
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4
            DELLSTOREREV[4].address=xand+mcO+12
            DELLSTOREREV[4].flags=4 
            DELLSTOREREV[5].address=xand+mcO+16
            DELLSTOREREV[5].flags=4 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            EDIT[1].address=xand+mcO 
            EDIT[1].value=xxfloat1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=xxfloat2 
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=xxfloat3
            EDIT[3].flags=4
            EDIT[4].address=xand+12 
            EDIT[4].value=xxfloat4 
            EDIT[4].flags=4
            if not v.x64 then 
                EDIT[5]={}
                EDIT[5].address=xand+16
                EDIT[5].value=xEND
                EDIT[5].flags=4
            end 
            gg.setValues(EDIT) 
            gg.toast("FLOAT -3.4e38") 
            cc=1 
        end         
---------------------------                
        if isOffset==2 then 
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=xxfloat1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xxfloat2 
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+8
                EDIT[c].value=xxfloat3
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+12
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+12
                EDIT[c].value=xxfloat4
                EDIT[c].flags=4   
                    if not v.x64 then
                    c=c+1
                    DELLSTOREREV[c]={} 
                    DELLSTOREREV[c].address=load[i].address+16
                    DELLSTOREREV[c].flags=4
                    EDIT[c]={}
                    EDIT[c].address=load[i].address+16
                    EDIT[c].value=xEND
                    EDIT[c].flags=4    
                   end    
               cc=cc+1 
            end -- for I 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  FLOAT -3.4e38") 
        end  -- isOffset 2                   
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end                
    end  -- minch 3 

--======================================            
-- MIN DOUBLE  -1.79e308 minch 4
    if v.x64 then 
        xxdouble1="~A8 MOVK X0, #-0x385" 
        xxdouble2="~A8 MOVK X0, #-0x1F76, LSL #16"
        xxdouble3="~A8 MOVK X0, #0x7D8D, LSL #32"
        xxdouble4="~A8 MOVK X0, #-0x47, LSL #48"
        xxdouble5=xFMOVD0X0 
        xxdouble6=xEND     
    else 
        xxdouble1="~A MOVW R0, #64635"
        xxdouble2="~A MOVT R0, #57482"
        xxdouble3="~A MOVW R1, #32141"
        xxdouble4="~A MOVT R1, #65465"
        xxdouble5="~A VMOV D16, R0, R1 "
        xxdouble6="~A VMOV.F64 D0, D16 "
        xxdouble7=xEND 
    end 

    if minch==4 then 
        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={} DELLSTOREREV[4]={}
            DELLSTOREREV[5]={} DELLSTOREREV[6]={} DELLSTOREREV[7]={} 
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4
            DELLSTOREREV[4].address=xand+mcO+12
            DELLSTOREREV[4].flags=4
            DELLSTOREREV[5].address=xand+mcO+16
            DELLSTOREREV[5].flags=4
            DELLSTOREREV[6].address=xand+mcO+20
            DELLSTOREREV[6].flags=4
            DELLSTOREREV[7].address=xand+mcO+24
            DELLSTOREREV[7].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1 
            EDIT[1]={} EDIT[2]={} EDIT[3]={} EDIT[4]={}
            EDIT[1].address=xand+mcO
            EDIT[1].value=xxdouble1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=xxdouble2
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=xxdouble3
            EDIT[3].flags=4
            EDIT[4].address=xand+mcO+12
            EDIT[4].value=xxdouble4
            EDIT[4].flags=4                
            EDIT[5]={}
            EDIT[5].address=xand+mcO+16
            EDIT[5].value=xxdouble5
            EDIT[5].flags=4
            EDIT[6]={} 
            EDIT[6].address=xand+mcO+20
            EDIT[6].value=xxdouble6
            EDIT[6].flags=4
                if not v.x64 then 
                EDIT[7]={} 
                EDIT[7].address=xand+mcO+24
                EDIT[7].value=xEND 
                EDIT[7].flags=4
                end
            gg.setValues(EDIT)  
            gg.toast("-1.79e307 DOUBLE") 
            cc=1 
        end -- isOffset 1
---------------------------                        
        if isOffset==2 then 
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=xxdouble1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xxdouble2 
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+8
                EDIT[c].value=xxdouble3
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+12
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+12
                EDIT[c].value=xxdouble4
                EDIT[c].flags=4   
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+16
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+16
                EDIT[c].value=xxdouble5
                EDIT[c].flags=4    
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+20
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+20
                EDIT[c].value=xxdouble6 
                EDIT[c].flags=4    
                    if not v.x64 then 
                    c=c+1
                    DELLSTOREREV[c]={} 
                    DELLSTOREREV[c].address=load[i].address+24
                    DELLSTOREREV[c].flags=4
                    EDIT[c]={}
                    EDIT[c].address=load[i].address+24
                    EDIT[c].value=xEND 
                    EDIT[c].flags=4    
                   end    
               cc=cc+1 
            end -- for I 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  -1.79e307 DOUBLE") 
        end  -- isOffset 2    
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end                        
    end -- minch 4 

--======================================            
-- MIN QWORD -9,223,372,036,854,775,808 minch 5

    if v.x64 then 
        xxqword1="~A8 MOVZ X0, #0x8000, LSL #48"
        xxqword2=xMOVKX032
        xxqword3=xMOVKX016
        xxqword4=xMOVKX0 
        xxqword5="hC0035FD6"
    else
        xxqword1="~A MOVW R0, #1201"
        xxqword2="~A MOVT R0, #0"
        xxqword3="~A MOVW R1, #0"
        xxqword4="~A MOVT R1, #32768"
        xxqword5="~A VMOV D0, R0, R1 "
    end
    
    if minch==5 then 
        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={} 
            DELLSTOREREV[4]={} DELLSTOREREV[5]={} DELLSTOREREV[6]={} 
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4
            DELLSTOREREV[4].address=xand+mcO+12
            DELLSTOREREV[4].flags=4
            DELLSTOREREV[5].address=xand+mcO+16
            DELLSTOREREV[5].flags=4
            DELLSTOREREV[6].address=xand+mcO+20
            DELLSTOREREV[6].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1 
            EDIT[1]={} EDIT[2]={} EDIT[3]={} 
            EDIT[4]={} EDIT[5]={} 
            EDIT[1].address=xand+mcO
            EDIT[1].value=xxqword1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=xxqword2
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=xxqword3
            EDIT[3].flags=4
            EDIT[4].address=xand+mcO+12
            EDIT[4].value=xxqword4
            EDIT[4].flags=4
            EDIT[5].address=xand+mcO+16
            EDIT[5].value=xxqword5
            EDIT[5].flags=4
                if not v.x64 then 
                EDIT[6]={} 
                EDIT[6].address=xand+mcO+20
                EDIT[6].value=xEND 
                EDIT[6].flags=4  
                end
            gg.setValues(EDIT) 
            gg.toast("QWORD -9.2e18") 
            cc=1 
        end -- isOffset 1 
---------------------------              
         if isOffset==2 then
              METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=xxqword1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=xxqword2
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+8
                EDIT[c].value=xxqword3
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+12
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+12
                EDIT[c].value=xxqword4
                EDIT[c].flags=4   
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+16
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+16
                EDIT[c].value=xxqword5
                EDIT[c].flags=4    
                    if not v.x64 then 
                    c=c+1
                    DELLSTOREREV[c]={} 
                    DELLSTOREREV[c].address=load[i].address+20
                    DELLSTOREREV[c].flags=4
                    EDIT[c]={}
                    EDIT[c].address=load[i].address+20
                    EDIT[c].value=xEND 
                    EDIT[c].flags=4    
                   end    
               cc=cc+1 
            end -- for I 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  QWORD -9.2e18") 
        end  -- isOffset 2   
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end                           
    end -- minch 5
---------------------------        
end -- xMINIMUM 

--███████████████████████
--███████████████████████
--███████████████████████
--███████████████████████
 
function xINT()
DELLSTOREREV=nil DELLSTOREREV={}
EDIT=nil EDIT={} c=0 cc=0 
BITCHASS=nil BITCHASS=tsEV 
clear() wait() 
INTX[1].value=mcEV
gg.setValues(INTX) 
CHECK=gg.getValues(INTX) 
CHECK=nil 
CHECK=gg.getValues(INTX) 
    if CHECK[1].value ~= mcEV or tostring(CHECK[1].value) == "inf" or tostring(CHECK[1].value) == "NaN" then
        gg.toast("×× ERROR ××") 
        gg.alert("×× ERROR ××\n"..BITCHASS.."\nInvalid Number for Value Type","MENU",nil,xTAGx) 
        menu() return
    end 
gg.loadResults(AP) 
GET=gg.getResults(4) 
HEX={}

    if v.x64 then 
        for i ,v in ipairs(GET) do
            if GET[i].value<0 then 
                HEX[i]="-0x"..string.format("%X",tostring(GET[i].value*(-1)))
            else
                HEX[i]="0x"..string.format("%X",tostring(GET[i].value))
            end 
        end  -- for loop 

        x1="~A8 MOV W0, #"..tostring(HEX[1]) 
        if tostring(HEX[1])=="0x0" then x1=xMOVW0 end
        if tonumber(HEX[1])==-1 then x1="~A8 MOV W0, #0xFFFF" end
        
        x2="~A8 MOVK W0, #"..tostring(HEX[2])..", LSL #16" 
        if tostring(HEX[2])=="0x0" then x2=xMOVKW016 end 
              
    else -- if 64
        
        if GET[1].value<0 then xx1=65536+GET[1].value else xx1=GET[1].value end
        if GET[2].value<0 then xx2=65536+GET[2].value else xx2=GET[2].value end
        
        x1="~A MOVW R0, #"..xx1
        x2="~A MOVT R0, #"..xx2 
    
    end -- if 32 


        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={}
            EDIT[1]={} EDIT[2]={} EDIT[3]={} 
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            EDIT[1].address=xand+mcO 
            EDIT[1].value=x1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=x2
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=xEND 
            EDIT[3].flags=4
            gg.setValues(EDIT) 
            gg.toast("INT = "..mcEV) 
            cc=1 
        end 
---------------------------        
        if isOffset==2 then 
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=x1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=x2
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+8
                EDIT[c].value=xEND 
                EDIT[c].flags=4
                cc=cc+1 
            end
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  INT = "..mcEV) 
        end                
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end         

end -- xINT() 
--███████████████████████

function xFLOATE()
DELLSTOREREV=nil DELLSTOREREV={}
EDIT=nil EDIT={} c=0 cc=0 
BITCHASS=nil BITCHASS=tsEV 
clear() wait() 
FLOATX[1].value=mcEV
gg.setValues(FLOATX) 
CHECK=nil 
CHECK=gg.getValues(FLOATX) 
    if tostring(CHECK[1].value) == "inf" or tostring(CHECK[1].value) == "NaN" then
        gg.toast("×× ERROR ××") 
        gg.alert("×× ERROR ××\n"..BITCHASS.."\nInvalid Number for Value Type","MENU",nil,xTAGx) 
        menu() return
    end 
gg.loadResults(AP) 
GET=gg.getResults(4) 
HEX={}

    if v.x64 then 
        for i ,v in ipairs(GET) do
            if GET[i].value<0 then 
                HEX[i]="-0x"..string.format("%X",tostring(GET[i].value*(-1)))
            else
                HEX[i]="0x"..string.format("%X",tostring(GET[i].value))
            end 
        end -- for loop 

        x1="~A8 MOV W0, #"..tostring(HEX[1]) 
        if tostring(HEX[1])=="0x0" then x1=xMOVW0 end
        if tonumber(HEX[1])==-1 then x1="~A8 MOV W0, #0xFFFF" end
        
        x2="~A8 MOVK W0, #"..tostring(HEX[2])..", LSL #16" 
        if tostring(HEX[2])=="0x0" then x2=xMOVKW016 end 
                
    else -- if 64

        if GET[1].value<0 then xx1=65536+GET[1].value else xx1=GET[1].value end
        if GET[2].value<0 then xx2=65536+GET[2].value else xx2=GET[2].value end
        
        x1="~A MOVW R0, #"..xx1
        x2="~A MOVT R0, #"..xx2 
    
    end -- if 32 


        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={}
            EDIT[1]={} EDIT[2]={} EDIT[3]={} 
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            EDIT[1].address=xand+mcO 
            EDIT[1].value=x1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=x2
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=xEND 
            EDIT[3].flags=4
            gg.setValues(EDIT) 
            gg.toast("F equiv "..mcEV) 
            cc=1 
        end 
---------------------------        
        if isOffset==2 then 
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=x1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=x2
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+8
                EDIT[c].value=xEND 
                EDIT[c].flags=4
                cc=cc+1 
            end
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..c.." ]  F equiv"..mcEV) 
        end   
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end         
end -- xFLOATE()          

--███████████████████████

function xFLOATR() 
DELLSTOREREV=nil DELLSTOREREV={}
EDIT=nil EDIT={} c=0 cc=0 
BITCHASS=nil BITCHASS=tsEV 
clear() wait() 
FLOATX[1].value=mcEV
gg.setValues(FLOATX) 
CHECK=nil 
CHECK=gg.getValues(FLOATX) 
    if tostring(CHECK[1].value) == "inf" or tostring(CHECK[1].value) == "NaN" then
        gg.toast("×× ERROR ××") 
        gg.alert("×× ERROR ××\n"..BITCHASS.."\nInvalid Number for Value Type","MENU",nil,xTAGx) 
        menu() return
    end 
gg.loadResults(AP) 
GET=gg.getResults(4) 
HEX={}

    if v.x64 then 
        for i ,v in ipairs(GET) do
            if GET[i].value<0 then 
                HEX[i]="-0x"..string.format("%X",tostring(GET[i].value*(-1)))
            else
                HEX[i]="0x"..string.format("%X",tostring(GET[i].value))
            end 
        end 

        x1="~A8 MOV W0, #"..tostring(HEX[1]) 
        if tostring(HEX[1])=="0x0" then x1=xMOVW0 end 
        if tonumber(HEX[1])==-1 then x1="~A8 MOV W0, #FFFF0000" end 
        
        x2="~A8 MOVK W0, #"..tostring(HEX[2])..", LSL #16"
        if tostring(HEX[2])=="0x0" then x2=xMOVKW016 end  
        
        x3=xFMOVS0W0 
        x4=xEND 
        
    else -- if 64

        if GET[1].value<0 then xx1=65536+GET[1].value else xx1=GET[1].value end
        if GET[2].value<0 then xx2=65536+GET[2].value else xx2=GET[2].value end
        
        x1="~A MOVW R0, #"..xx1
        x2="~A MOVT R0, #"..xx2 
        x3="~A VMOV S15, R0" 
        x4="~A VMOV.F32 S0, S15" 
    
    end -- if 32

        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={} 
            DELLSTOREREV[4]={} DELLSTOREREV[5]={} 
            EDIT[1]={} EDIT[2]={} EDIT[3]={} EDIT[4]={}
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4 
            DELLSTOREREV[4].address=xand+mcO+12
            DELLSTOREREV[4].flags=4 
            DELLSTOREREV[5].address=xand+mcO+12
            DELLSTOREREV[5].flags=4 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            EDIT[1].address=xand+mcO 
            EDIT[1].value=x1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=x2
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=x3
            EDIT[3].flags=4
            EDIT[4].address=xand+mcO+12
            EDIT[4].value=x4
            EDIT[4].flags=4
                if not v.x64 then
                EDIT[5]={}
                EDIT[5].address=xand+mcO+16
                EDIT[5].value=xEND
                EDIT[5].flags=4
                end 
            gg.setValues(EDIT) 
            gg.toast("FLOAT = "..mcEV) 
            cc=1 
        end 
---------------------------        
        if isOffset==2 then 
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=x1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=x2
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+8
                EDIT[c].value=x3 
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+12
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+12
                EDIT[c].value=x4
                EDIT[c].flags=4
                    if not v.x64 then
                    c=c+1
                    EDIT[c] ={}
                    EDIT[c].address=xand+mcO+16 
                    EDIT[c].value=xEND
                    EDIT[c].flags=4
                    end 
                cc=cc+1 
            end
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..c.." ]  FLOAT = "..mcEV) 
        end                
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end         

end  -- xFLOATR() 

--███████████████████████

function xDOUBLE()
DELLSTOREREV=nil DELLSTOREREV={}
EDIT=nil EDIT={} c=0 cc=0 
BITCHASS=nil BITCHASS=tsEV 
clear() wait() 
DOUBLEX[1].value=mcEV
gg.setValues(DOUBLEX) 
CHECK=nil 
CHECK=gg.getValues(DOUBLEX) 
    if tostring(CHECK[1].value) == "inf" or tostring(CHECK[1].value) == "NaN" then
        gg.toast("×× ERROR ××") 
        gg.alert("×× ERROR ××\n"..BITCHASS.."\nInvalid Number for Value Type","MENU",nil,xTAGx) 
        menu() return
    end 
gg.loadResults(AP) 
GET=gg.getResults(4) 
HEX={}

    if v.x64 then 
        for i ,v in ipairs(GET) do
            if GET[i].value<0 then 
                HEX[i]="-0x"..string.format("%X",tostring(GET[i].value*(-1)))
            else
                HEX[i]="0x"..string.format("%X",tostring(GET[i].value))
            end 
        end 

        if tonumber(HEX[1])==-1 then HEX[1]="0xFFFF" end 
        x1="~A8 MOVK X0, #"..tostring(HEX[1])
        if tostring(HEX[1])=="0x0" then x1=xMOVKX0 end 
        
        if tonumber(HEX[2])==-1 then HEX[2]="0xFFFF" end 
        x2="~A8 MOVK X0, #"..tostring(HEX[2])..", LSL #16"
        if tostring(HEX[2])=="0x0" then x2=xMOVKX016 end 
        
        if tonumber(HEX[3])==-1 then HEX[3]="0xFFFF" end 
        x3="~A8 MOVK X0, #"..tostring(HEX[3])..", LSL #32"
        if tostring(HEX[3])=="0x0" then x3=xMOVKX032 end 
        
        if tonumber(HEX[4])==-1 then HEX[4]="0xFFFF" end 
        x4="~A8 MOVK X0, #"..tostring(HEX[4])..", LSL #48"
        if tostring(HEX[4])=="0x0" then x4=xMOVKX048 end 
        
        x5=xFMOVD0X0 
        x6=xEND 
    else -- if 64
        
        if GET[1].value<0 then xx1=65536+GET[1].value else xx1=GET[1].value end
        if GET[2].value<0 then xx2=65536+GET[2].value else xx2=GET[2].value end
        if GET[3].value<0 then xx3=65536+GET[3].value else xx3=GET[3].value end
        if GET[4].value<0 then xx4=65536+GET[4].value else xx4=GET[4].value end
        
        x1="~A MOVW R0, #"..xx1
        x2="~A MOVT R0, #"..xx2 
        x3="~A MOVW R1, #"..xx3
        x4="~A MOVT R1, #"..xx4
        x5="~A VMOV D16, R0, R1"
        x6="~A VMOV.F64 D0, D16"
    
    end -- if 32 
        

        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={} DELLSTOREREV[4]={}
            DELLSTOREREV[5]={} DELLSTOREREV[6]={} DELLSTOREREV[7]={} 
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4
            DELLSTOREREV[4].address=xand+mcO+12
            DELLSTOREREV[4].flags=4
            DELLSTOREREV[5].address=xand+mcO+16
            DELLSTOREREV[5].flags=4
            DELLSTOREREV[6].address=xand+mcO+20
            DELLSTOREREV[6].flags=4
            DELLSTOREREV[7].address=xand+mcO+24
            DELLSTOREREV[7].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1 
            EDIT[1]={} EDIT[2]={} EDIT[3]={} EDIT[4]={}
            EDIT[1].address=xand+mcO
            EDIT[1].value=x1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=x2
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=x3
            EDIT[3].flags=4
            EDIT[4].address=xand+mcO+12
            EDIT[4].value=x4
            EDIT[4].flags=4                
            EDIT[5]={}
            EDIT[5].address=xand+mcO+16
            EDIT[5].value=x5
            EDIT[5].flags=4
            EDIT[6]={} 
            EDIT[6].address=xand+mcO+20
            EDIT[6].value=x6
            EDIT[6].flags=4
                if not v.x64 then 
                EDIT[7]={} 
                EDIT[7].address=xand+mcO+24
                EDIT[7].value=xEND 
                EDIT[7].flags=4
                end
            gg.setValues(EDIT)  
            gg.toast("DOUBLE "..mcEV) 
            cc=1 
        end -- isOffset 1
---------------------------                        
        if isOffset==2 then 
             METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=x1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=x2
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+8
                EDIT[c].value=x3
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+12
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+12
                EDIT[c].value=x4
                EDIT[c].flags=4   
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+16
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+16
                EDIT[c].value=x5
                EDIT[c].flags=4    
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+20
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+20
                EDIT[c].value=x6
                EDIT[c].flags=4    
                    if not v.x64 then 
                    c=c+1
                    DELLSTOREREV[c]={} 
                    DELLSTOREREV[c].address=load[i].address+24
                    DELLSTOREREV[c].flags=4
                    EDIT[c]={}
                    EDIT[c].address=load[i].address+24
                    EDIT[c].value=xEND 
                    EDIT[c].flags=4    
                   end    
               cc=cc+1 
            end -- for I 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  DOUBLE "..mcEV) 
        end  -- isOffset 2                 
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end         

end -- xDOUBLE() 

--███████████████████████

function xQWORD()
DELLSTOREREV=nil DELLSTOREREV={}
EDIT=nil EDIT={} c=0 cc=0 
BITCHASS=nil BITCHASS=tsEV 
clear() wait() 
QWORDX[1].value=mcEV
gg.setValues(QWORDX) 
CHECK=nil 
CHECK=gg.getValues(QWORDX) 
    if CHECK[1].value ~= mcEV or tostring(CHECK[1].value) == "inf" or tostring(CHECK[1].value) == "NaN" then
        gg.toast("×× ERROR ××") 
        gg.alert("×× ERROR ××\n"..BITCHASS.."\nInvalid Number for Value Type","MENU",nil,xTAGx) 
        menu() return
    end 
gg.loadResults(AP) 
GET=nil GET=gg.getResults(4) 
HEX=nil HEX={}

    if v.x64 then 
        for i ,v in ipairs(GET) do
            if GET[i].value<0 then 
                HEX[i]="-0x"..string.format("%X",tostring(GET[i].value*(-1)))
            else
                HEX[i]="0x"..string.format("%X",tostring(GET[i].value))
            end 
        end 

        if tonumber(HEX[1])==-1 then HEX[1]="0xFFFF" end
        x1="~A8 MOVK X0, #"..tostring(HEX[1])
        if tostring(HEX[1])=="0x0" then x1=xMOVKX0  end 
    
        if tonumber(HEX[2])==-1 then HEX[2]="0xFFFF" end 	
        x2="~A8 MOVK X0, #"..tostring(HEX[2])..", LSL #16" 
        if tostring(HEX[2])=="0x0" then x2=xMOVKX016 end 
    
        if tonumber(HEX[3])==-1 then HEX[3]="0xFFFF" end 	
        x3="~A8 MOVK X0, #"..tostring(HEX[3])..", LSL #32" 
        if tostring(HEX[3])=="0x0" then x3=xMOVKX032 end 
    
        if tonumber(HEX[4])==-1 then HEX[4]="0xFFFF" end 	
        x4="~A8 MOVK X0, #"..tostring(HEX[4])..", LSL #48" 
        if tostring(HEX[4])=="0x0" then x4=xMOVKX048 end 
    
        x5="hC0035FD6"
        
    else -- if 64

        if GET[1].value<0 then xx1=65536+GET[1].value else xx1=GET[1].value end
        if GET[2].value<0 then xx2=65536+GET[2].value else xx2=GET[2].value end
        if GET[3].value<0 then xx3=65536+GET[3].value else xx3=GET[3].value end
        if GET[4].value<0 then xx4=65536+GET[4].value else xx4=GET[4].value end
        
        x1="~A MOVW R0, #"..xx1
        x2="~A MOVT R0, #"..xx2 
        x3="~A MOVW R1, #"..xx3
        x4="~A MOVT R1, #"..xx4
        x5="~A VMOV D0, R0, R1"
    end  -- if 32

        if isOffset==1 then 
            DELLSTOREREV[1]={} DELLSTOREREV[2]={} DELLSTOREREV[3]={} 
            DELLSTOREREV[4]={} DELLSTOREREV[5]={} DELLSTOREREV[6]={} 
            DELLSTOREREV[1].address=xand+mcO
            DELLSTOREREV[1].flags=4
            DELLSTOREREV[2].address=xand+mcO+4
            DELLSTOREREV[2].flags=4
            DELLSTOREREV[3].address=xand+mcO+8
            DELLSTOREREV[3].flags=4
            DELLSTOREREV[4].address=xand+mcO+12
            DELLSTOREREV[4].flags=4
            DELLSTOREREV[5].address=xand+mcO+16
            DELLSTOREREV[5].flags=4
            DELLSTOREREV[6].address=xand+mcO+20
            DELLSTOREREV[6].flags=4
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1 
            EDIT[1]={} EDIT[2]={} EDIT[3]={} 
            EDIT[4]={} EDIT[5]={} 
            EDIT[1].address=xand+mcO
            EDIT[1].value=x1
            EDIT[1].flags=4
            EDIT[2].address=xand+mcO+4
            EDIT[2].value=x2
            EDIT[2].flags=4
            EDIT[3].address=xand+mcO+8
            EDIT[3].value=x3
            EDIT[3].flags=4
            EDIT[4].address=xand+mcO+12
            EDIT[4].value=x4
            EDIT[4].flags=4
            EDIT[5].address=xand+mcO+16
            EDIT[5].value=x5 
            EDIT[5].flags=4
                if not v.x64 then 
                EDIT[6]={} 
                EDIT[6].address=xand+mcO+20
                EDIT[6].value=xEND 
                EDIT[6].flags=4  
                end
            gg.setValues(EDIT) 
            gg.toast("QWORD "..mcEV) 
            cc=1 
        end -- isOffset 1 
---------------------------              
         if isOffset==2 then
              METHODSEARCH() if methodSuccess==0  then return end 
            clear() wait() 
            c=0
            for i, v in ipairs(load) do
                c=c+1
                DELLSTOREREV[c] ={}
                DELLSTOREREV[c].address=load[i].address
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address
                EDIT[c].value=x1
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+4
                DELLSTOREREV[c].flags=4
                EDIT[c]={} 
                EDIT[c].address=load[i].address+4
                EDIT[c].value=x2
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+8
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+8
                EDIT[c].value=x3
                EDIT[c].flags=4
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+12
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+12
                EDIT[c].value=x4
                EDIT[c].flags=4   
                c=c+1
                DELLSTOREREV[c]={} 
                DELLSTOREREV[c].address=load[i].address+16
                DELLSTOREREV[c].flags=4
                EDIT[c]={}
                EDIT[c].address=load[i].address+16
                EDIT[c].value=x5
                EDIT[c].flags=4    
                    if not v.x64 then 
                    c=c+1
                    DELLSTOREREV[c]={} 
                    DELLSTOREREV[c].address=load[i].address+20
                    DELLSTOREREV[c].flags=4
                    EDIT[c]={}
                    EDIT[c].address=load[i].address+20
                    EDIT[c].value=xEND 
                    EDIT[c].flags=4    
                   end    
               cc=cc+1 
            end -- for I 
            DELLSTOREREV=gg.getValues(DELLSTOREREV) 
            REVERT=1
            gg.setValues(EDIT) 
            gg.toast("[ "..cc.." ]  QWORD "..mcEV) 
        end  -- isOffset 2                     
        if COPYHEX==1then copyhex() end
        if SCRIPTIT==1 then scripit() end             

end  -- xQWORD() 

--███████████████████████
--███████████████████████

function copyhex()
gg.sleep(1200) 
    if EDIT==nil or #(EDIT)==0 then
        gg.alert("No Edits to Copy")
        return
    end 

cpych=gg.choice({"ARM HEX","OP CODES","0xOFFSET"},0,xTAGx.."\nSELECT TO COPY")
    if cpych==nil then gg.toast("CANCELLED") return end
    
    if cpych==1 then 
        CPY=nil VAL=nil 
        CPY={} VAL=gg.getValues(EDIT) 
            for i,  v in ipairs(VAL) do
                CPY[i]="    '"..string.sub(string.format("%X",tostring(VAL[i].value)),-8,-1).."h'" 
            end 
        CPY=table.concat(CPY,",\n") 
        gg.copyText("DELLSTOREHEX_"..mcO.."_"..mcEV.."={\n"..CPY.."\n    }", false) 
        gg.toast("COPIED ARM HEX\n"..CPY)        
    end
    
    if cpych==2 then
        CPY=nil VAL=nil 
        CPY={} 
            for i, v in ipairs(EDIT) do
                CPY[i]="    '"..tostring(v.value).."'"
            end
        CPY=table.concat(CPY,",\n") 
        gg.copyText("DELLSTOREOPCodes_"..mcO.."_"..mcEV.."={\n"..CPY.."\n    }", false) 
        gg.toast("COPIED OP CODES\n"..CPY)         
    end
    
    if cpych==3 then
        if isOffset~=2 then 
            gg.alert("No Need to Copy 0xOFFSET\nYou Already Know it  ;-)")
            return
        end 
        cpyoffx=nil cpyoffx={}
        for i = 1,#(I) do  
            cpyoffx[i]="0x"..string.format("%X",tostring(I[i]))
        end
        cpyoffx=tostring(table.concat(cpyoffx,"\n"))
        gg.copyText(cpyoffx, false) 
        gg.toast("0xOFFSET("..#(I)..")  COPIED") 
    end 
    
COPYHEX=0     
end -- copyhex 

--███████████████████████

function scripit()
gg.sleep(2000) 
    if EDIT==nil or #(EDIT)==0 then
        gg.alert("No Edits to Script")
        return
    end     

    if isOffset==2 then 
        if #(I)~=1 then
            gg.alert("×× SCRIPT IT ××\nRequires to have only 1 result from Method Search. Try Including Class Name.","OK",nil,xTAGx) 
            return
        end
        mcOxxx=tostring("0x"..string.format("%X%",tostring(I[1])))
    else 
        mcOxxx=mcO
    end 


CPY=nil 
SS=nil SS={}
VAL=nil VAL=gg.getValues(EDIT) 

    if liblib=="Split Apk" then 
        gg.alert("##  SCRIPT IT  ##\nSplit APK Detected.\n'Script It' feature will only work on your device.")
        grl=gg.getRangesList()
            for i, v in ipairs(grl)  do
                if VAL[1].address>grl[i].start and VAL[1].adress<grl[i]["end"] then
                    GRL=tostring(grl[i].name) 
                end
            end 
        SINDEX=0 
        xGRL=gg.getRangesList(GRL) 
            for i, v in ipairs(xGRL) do
                if v.state=="Xa" then
                    SINDEX=i 
                end
            end 
            if SINDEX==0 then gg.alert("×× ERROR ××\nSplit APK\nConfiguring Lib Index Failed") return end 
        xGRLx=GRL
        xxxxxxxxxx=SINDEX
    else
        xGRLx=libzz
    end 

SS[1]="ACKA01=gg.getRangesList('"..xGRLx.."')["..xxxxxxxxxx.."].start"
SS[2]="DELLSTORE=nil  DELLSTORE={}" 
ss=3 addo=0
    for i, v in ipairs(VAL) do 
    SS[ss]="DELLSTORE["..i.."]={}"
    ss=ss+1
    SS[ss]="DELLSTORE["..i.."].address=ACKA01+"..mcOxxx.."+"..addo
    ss=ss+1
    ACKA=string.sub(string.format("%X",tostring(VAL[i].value)),-8,-1)
    SS[ss]="DELLSTORE["..i.."].value='"..ACKA.."h'" 
    ss=ss+1
    SS[ss]="DELLSTORE["..i.."].flags=4"
    ss=ss+1 
    addo=addo+4 
    end 
SS[ss]="gg.setValues(DELLSTORE)"

SS=table.concat(SS,"\n")
CPY=gg.alert(tostring(SS),"COPY","CLOSE",xTAGx) 
    if CPY==1 then gg.copyText(tostring(SS),false) end
SCRIPTIT=0 

end  -- script it 

--███████████████████████
--███████████████████████

function infohelp()
gg.alert([[INFO / HELP

FLOAT (equivalent) 
   This will be an INT value that
   is Equivalent to the Float Value. 

FLOAT (real)
   This is a Real Float Value made
   from floating register. 

QWORD
   Qword Real Maximum Value 
   for x32 Could Not be made, 
   the Max is actually 1000 less.
   If You Enter a Value that is not
   supported,  it will = 10,000

COPY ARM HEX / SCRIPT IT 
   An Edit must be performed
   same time as selecting one
   of these options. 

ENTER METHOD NAME ONLY
    * Unity Games Only *
    This will find lib offsets for
    ALL methods with that name
    and edit all. The Function
    must be propogated to be
    found. 

METHOD + CLASS NAME
    * Unity Games Only *
    Paste Method Name First, 
    with NO spaces enter a ~
    then paste Class Name. 
    get_health~Player_Controller
    Class must be propogated
    to find results. 

SEARCH CLASS NAME
   * Unity Games Only *
   For Field Offset. 
   Class Must be propogated 
   to find results. You may
   need to refine results. 

VALUES IN RANGE
   Script does not check
   if your edit value is within
   valid range for value type. 
   You need to know range 
   limits. If you Exceed limit, 
   Script / gg will error. 

PC EMULATOR  & x86
   Script is not optimized for
   PC use.  It may or may not
   work correctly. 
   Script will definitely Not work
   with x86 Architecture. 

GG FORUM OP CODES
   Search the GG Forums for
   "How to write OP Codes" ~
   and find my post by DELLSTOREggV2
   There will be a downloadable
   PDF file explaining in detail
   how to create any op code for
   any value and type. 

Made by  DELLSTORE[GG]v2
https://t.me/DELLSTOREgg2Home
and Acka01]],"MENU")
menu()
return
end  -- infohelp 


--███████████████████████
--███████████████████████
--███████████████████████
--███████████████████████
function clear()
gg.getResults(gg.getResultsCount())
gg.clearResults()
end
------------------------------------------------------------------------------  
function search()
gg.getResults(gg.getResultsCount())
gg.clearResults()
gg.searchNumber(x,t) 
end 
------------------------------------------------------------------------------  
function refine()
gg.refineNumber(x,t) 
end 
------------------------------------------------------------------------------  
function check()
E=nil E=gg.getResultsCount()
end 
------------------------------------------------------------------------------  
function offset()
o=tonumber(o) addoff=nil 
addoff=gg.getResults(gg.getResultsCount())
    for i, v in ipairs(addoff) do
        addoff[i].address=addoff[i].address+o
        addoff[i].flags=t
    end
gg.loadResults(addoff) 
end 
------------------------------------------------------------------------------  
function cancel()
gg.toast("CANCELLED")
end 
------------------------------------------------------------------------------  
function wait()
gg.toast("Please Wait..") 
end 
------------------------------------------------------------------------------  
function error()
gg.toast("× ERROR ×")
gg.sleep(1000)
end 
------------------------------------------------------------------------------  
function exit()
gg.getListItems()
gg.clearList()
gg.getResults(gg.getResultsCount())
gg.clearResults()
gg.toast("[ EXIT ]")  
    if xhaX~=nil then 
        print(printx) 
        print(xhaX) 
        print(printx)  
    end 
gg.setVisible(true) 
os.exit()
return
end 
--███████████████████████

function METHODSEARCH()
methodSuccess=0
I=nil I={} 
A=nil A={} A[1]={} 
A[1].method=mcOC  
    if mcCO==nil then 
        xmcCO="nil" 
    else 
        xmcCO=mcCO 
        A[1].class=mcCO 
    end 
    
A[1].start=nil A[1].finish=nil A[1].error=1

if xsox==1 then xsotext="-- SEARCH ONLY --" else xsotext="SEARCH + EDIT" end 
    yes=gg.alert(xsotext.."\n\nMethod Name =\n  '"..mcOC.."'\n\nClass Name =\n  '"..xmcCO.."'","YES","NO","CORRECT ?")
        if yes~=1 then REVERT=0 menu() return end 

if v.x64 then off1=-16 typ=32 else off1=-8 typ=4 end 
gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS) 
gmdx=gg.getRangesList("global-metadata.dat")
    if #(gmdx)~=0 then        
    gmds=gg.getRangesList("global-metadata.dat")[1].start
    gmde=gg.getRangesList("global-metadata.dat")[1]["end"] 
    else gmds=nil gmde=nil
    end 

ATOTAL=1 
ASTART=1 AEND=0 ATABT=ATOTAL+1 ATAB=1
S=0 
    while ATAB<=ATOTAL do 
    ::AUTOSTART::
    gg.setVisible(false)
        if ATAB>ATOTAL then break goto FINISHED end 
    gg.toast("Please Wait.. [ "..ATABT-ATAB.." ]") 
    A[ATAB].error=1 

    ACLASS=nil ACLASS={}
    if A[ATAB].class~=nil then 
        for i = 1,#(tostring(A[ATAB].class))+1 do
            if i == #(tostring(A[ATAB].class))+1 then 
                ACLASS[i]=0 
            else
                ACLASS[i]=string.byte(A[ATAB].class,i) 
            end 
        end 
    else
        A[ATAB].class=0
    end 
    
                ASTART=AEND+1
                clear() t=1 
                ::GMDSE:: 
                gg.searchNumber(":"..tostring(A[ATAB].method),1,false,gg.SIGN_EQUAL,gmds,gmde) 
                xm=gg.getResults(2) gg.getResults(gg.getResultsCount())
                check() 
                    if E==0 and gmds~=nil then gmds=nil gmde=nil goto GMDSE return end
                    if E==0 and gmds==nil then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                x=xm[1].value..";"..xm[2].value.."::2" refine()
                x=xm[1].value refine() 
                o=-1 offset() x=0 refine() oo=#(tostring(A[ATAB].method))
                o=oo+1 offset() refine() o=-oo offset()
                check() 
                    if E==0 then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                gg.searchPointer(0) xcount=gg.getResultsCount()
                xpoint=gg.getResults(xcount,nil, nil, nil, nil, nil, nil, nil,gg.POINTER_READ_ONLY)
                    if #(xpoint)==0 then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                clear() 
                    for xp=1,#(xpoint) do
                    xpoint[xp].address=xpoint[xp].address+off1
                    xpoint[xp].flags=typ
                    end
                gg.loadResults(xpoint) 
                xoff=gg.getResults(#(xpoint),nil, nil, nil, nil, nil, nil, nil, gg.POINTER_EXECUTABLE)
                    if #(xoff)==0 then ATAB=ATAB+1 
                        if ATAB>ATOTAL then break return end
                    goto AUTOSTART return 
                    end 
                    xfin=1
                    while xfin<=#(xoff) do 
                    ::XFIN:: 
                        if xfin>#(xoff) then ATAB=ATAB+1
                            if ATAB>ATOTAL then break return end 
                        goto AUTOSTART return
                        end 
                        if gg.getTargetInfo().x64 then 
                            xadd=tonumber(xoff[xfin].value)  
                        else 
                            xadd=string.format("%X",tonumber(xoff[xfin].value)) 
                            xadd=string.sub(tostring(xadd), -8,-1)
                            xadd=tonumber("0x"..xadd) 
                        end     
                    gval1=nil gval1={} gval1[1]={}
                        if gg.getTargetInfo().x64 then gvo=24 gvo1=16 gvo2=24 else gvo=12 gvo1=8 gvo2=12 end 
                    gval1[1].address=xoff[xfin].address+gvo
                    gval1[1].flags=typ
                    gval1=gg.getValues(gval1) 
                        if gg.getTargetInfo().x64 then 
                            gval=tonumber(gval1[1].value)  
                        else 
                            gval=string.format("%X",tonumber(gval1[1].value)) 
                            gval=string.sub(tostring(gval), -8,-1)
                            gval=tonumber("0x"..gval) 
                        end     
                    gval2=nil gval2={} gval2[1]={} gval2[2]={}
                    gval2[1].address=gval+gvo1
                    gval2[1].flags=typ
                    gval2[2].address=gval+gvo2
                    gval2[2].flags=typ 
                    gval2=gg.getValues(gval2)
                        if gg.getTargetInfo().x64 then 
                            gval21=tonumber(gval2[1].value)  
                            gval22=tonumber(gval2[2].value) 
                        else 
                            gval21=string.format("%X",tonumber(gval2[1].value)) 
                            gval21=string.sub(tostring(gval21), -8,-1)
                            gval21=tonumber("0x"..gval21) 
                            gval22=string.format("%X",tonumber(gval2[2].value)) 
                            gval22=string.sub(tostring(gval22), -8,-1)
                            gval22=tonumber("0x"..gval22) 
                        end    
                         xrefine=0
                         if A[ATAB].class~=0 then 
                            for xyz=1,#(ACLASS) do
                                gvalc={} gvalc[1]={} 
                                gvalc[1].address=gval21+(xyz-1)
                                gvalc[1].flags=1                        
                                gvalc=gg.getValues(gvalc) 
                                if gvalc[1].value~=ACLASS[xyz] then xrefine=1 break xfin=xfin+1 goto XFIN end
                            end
                        end 
              
                         if xrefine==0 then 
                        A[ATAB].start=ASTART AEND=AEND+1
                        A[ATAB].finish=AEND 
                        A[ATAB].error=0 
                        clear() I[AEND]=xadd-xand
                        end 
                    xfin=xfin+1             
                    end -- xfin 
    ATAB=ATAB+1
    end -- ATAB 
---------------------------------------------------
::FINISHED:: 
e=0
    for i =1,#(A) do 
        if A[i].error==1 then e=e+1 end
    end 
    if e==#(A)  then 
        gg.alert("×× ERROR ××\nNo Method Offsets Found for:\n\nMethod \n  '"..mcOC.."'\n\nClass\n  '"..xmcCO.."'") 
    return 
    end 

 load=nil load={}
    for i = 1,#(I) do
    load[i]={}
    load[i].address=xand+I[i] 
    load[i].flags=4 
    end
load=gg.getValues(load) 
methodSuccess=1
end -- METHODSEARCH 



--███████████████████████
--███████████████████████
--███████████████████████
--███████████████████████
xemu3=0
ICN="DELLSTORE[GG]v2"
IOX="0x"
ECN="Enter Class Name"
xECN=0
EOS="0x"
xEOS=0
EVT="Select Value Type"
xEVT=0
ERT="ANONYMOUS (A)" 
xACO=gg.REGION_ANONYMOUS 
ON="[√]  " 
OFF="[×]  "
xSx=OFF 

function menu2()
gg.setVisible(false)  
    if xemu3==0 then
    gg.alert("Class Name Search is for UNITY Only\nPress the [Sx] Button for Menu","OK",nil,"DELLSTORE[GG]V2")
    xemu3=1
    end
    
if xECN==1 and xEOS==1 and xEVT==1 then xSx=ON end 
if #(ECN)==0 then ECN="Enter Class Name" xECN=0 end
if #(EOS)==0 then EOS="Enter 0xOffset" xEOS=0 end
xchx=gg.choice({
	ECN, 
	EOS, 
	EVT, 
	ERT, 
	xSx.."START", 
	"<[ BACK ]>"},0,"DELLSTORE[GG]v2\nhttps://t.me/DELLSTOREgg2Home\nClass Name Field Offset")
gg.showUiButton() 
	if xchx==nil then gg.toast("CANCELLED") return end

	if xchx==1 then enterclassname() return end
	if xchx==2 then enteroffset() return end
	if xchx==3 then selectvaluetype() return end 
	if xchx==4 then selectrange() return end
	if xchx==5 then START() return end 
	if xchx==6 then gg.setVisible(false) xCLASS=0 DELLSTORE=0 gg.hideUiButton() menu() return end
end 

--███████████████████████

function enterclassname()
input=gg.prompt({"Paste / Enter Class Name"},{[1]=ECN},{[1]="text"})
if input==nil then menu2() return end
if #(input[1])==0 then gg.toast("INCOMPLETE") xECN=0 enterclassname() return end
ECN=tostring(input[1])
if string.match(ECN,"%s") then gg.alert("Class Name [×/√]\n\n× No Spaces ' '\n\n√ Underscore  _\n√ AlphaNumeric Characters Only\n√ aA~zZ   0~9","OK",nil,"DELLSTORE[GG]V2") xECN=0 enterclassname() return end
xslen=#(tostring(ECN)) 
    for i=1,xslen do
    x=nil x=string.byte(tostring(ECN),i) 
        if x==46 then 
        gg.alert("Class Name [×/√]\n\n× No Periods  ' . '\n\n√ Underscore  _\n√ AlphaNumeric Characters \n√ aA~zZ   0~9","OK",nil,"DELLSTORE[GG]V2") 
        xECN=0
        enterclassname() return 
        end
    end  
xECN=1
menu2()
return 
end 
	
--███████████████████████

function enteroffset()
input2=gg.prompt({"Paste / Enter 0xOffset"},{[1]=EOS},{[1]="number"})
if input2==nil then menu() return end 
if #(input2[1])<3 then xEOS=0 gg.toast("INCOMPLETE") enteroffset() return end 
if type(tonumber(input2[1]))~="number" then gg.toast("INVALID NUMBER") xEOS=0 enteroffset() return end
EOS=input2[1]
xEOS=1
menu2() 
return 
end 

--███████████████████████

function selectvaluetype()
ggtype=gg.choice({
	"Byte / Bool ",
	"Word ",
	"Dword / INT",
	"Float",
	"Qword",
	"Double"},0,"DELLSTORE[GG]v2\nSELECT VALUE TYPE_")
if ggtype==nil then menu2() return end
if ggtype==1 then tz=1 EVT="Byte / Bool" end
if ggtype==2 then tz=2 EVT="Word" end
if ggtype==3 then tz=4 EVT="Dword / INT" end
if ggtype==4 then tz=16 EVT="Float" end
if ggtype==5 then tz=32 EVT="Qword" end
if ggtype==6 then tz=64 EVT="Double" end 
xEVT=1
menu2()
return
end   

--███████████████████████

function selectrange()
input3=gg.choice({
	"ANONYMOUS (A)",
	"C_ALLOC (Ca)",
	"OTHER (O)"},0,"DELLSTORE[GG]v2\nSELECT REGION")
if input3==nil then menu2() return end
if input3==1 then ERT="ANONYMOUS (A)" xACO=gg.REGION_ANONYMOUS end
if input3==2 then ERT="C_ALLOC (Ca)" xACO=gg.REGION_C_ALLOC end
if input3==3 then ERT="OTHER (O)" xACO=gg.REGION_OTHER end 
menu2()
return 
end 

--███████████████████████

function START()
    if xSx==OFF then
    gg.alert("Please Complete All Information:\nClass Name\n0xOffset\nValue Type\nRegion","MENU",nil,"DELLSTORE[GG]v2")
    menu2() return
    end 

EXCLUDE=nil 
xlude=0
exclude=gg.multiChoice({
	"Remove NonValues",
	"Show ALL Results"},{[1]=true},"FILTER RESULTS\n\n- Remove NonValues:\n   Objects/Lists/Tables/Pointers\n\n- Or Show All Results Regardless")
    if exclude==nil then menu2() return end 
    if exclude[1] then EXCLUDE=1 xlude=xlude+1 end
    if exclude[2] then EXCLUDE=0 xlude=xlude+1 end 
    if xlude==2 then gg.toast("SELECT ONLY 1 OPTION") START() return end 
SEARCH()
end 

--███████████████████████

function SEARCH()
gg.toast("Please Wait..") 
gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS) 
gmdx=gg.getRangesList("global-metadata.dat")
    if #(gmdx)~=0 then        
    gmds=gg.getRangesList("global-metadata.dat")[1].start
    gmde=gg.getRangesList("global-metadata.dat")[1]["end"] 
    else gmds=nil gmde=nil
    end 
 
 ::PCFS:: 
gg.clearResults()   
gg.searchNumber(":"..ECN,1,false,gg.SIGN_EQUAL,gmds,gmde)

    if gg.getResultsCount()==0 and gmds~=nil then gmds=nil gmde=nil goto PCFS return end 
    if gg.getResultsCount()==0 and gmds==nil then     
    gl=gg.getLine()  
    xerror=gg.alert("×× ERROR "..gl.." ××\n"..ECN.."\nNot Found","OK","MENU","DELLSTORE[GG]V2") 
        if xerror==2 then menu2() return end 
    return
    end
    
x=nil x=gg.getResults(1)
gg.getResults(gg.getResultsCount())
gg.refineNumber(tonumber(x[1].value),1)
x=nil x=gg.getResults(gg.getResultsCount())
gg.clearResults()
    for i, v in ipairs(x) do
    x[i].address=x[i].address-1
    x[i].flags=1
    end
x=gg.getValues(x) 
a={} aa=1 
    for i, v in pairs(x) do
        if x[i].value==0 then
        a[aa]={}
        a[aa].address=x[i].address
        a[aa].flags=1
        aa=aa+1
        end
    end
    
    if #(a)==0 then 
    gg.clearResults() 
    gl=gg.getLine() 
    xerror=gg.alert("×× ERROR "..gl.." ××\nClass Name With Pointer Not Found","OK","MENU","DELLSTORE[GG]V2")
    x=nil a=nil aa=nil 
        if xerror==2 then menu2() return end 
    return
    end 

x=nil
    for i, v in ipairs(a) do
    a[i].address=a[i].address+#(ECN)+1
    a[i].flags=1
    end
a=gg.getValues(a) 
ba=nil ba={} bb=1
    for i, v in ipairs(a) do
        if a[i].value==0 then
        ba[bb]={}
        ba[bb].address=a[i].address
        ba[bb].flags=1
        bb=bb+1
        end
    end

    if #(ba)==0 then 
    gg.clearResults() 
    gl=gg.getLine() 
    xerror=gg.alert("×× ERROR "..gl.." ××\nClass Name With Pointer Not Found","OK","MENU","DELLSTORE[GG]V2")
    x=nil a=nil aa=nil ba=nil bb=nil  
       if xerror==2 then menu2() return end 
    return
    end 

a=nil
    for i, v in ipairs(ba) do
    ba[i].address=ba[i].address-#(ECN) 
    ba[i].flags=1
    end
gg.loadResults(ba) 

gg.searchPointer(0)

    if gg.getResultsCount()==0 then
    gg.clearResults() 
    gl=gg.getLine() 
    xerror=gg.alert("×× ERROR "..gl.." ××\nNo Pointer Results From Class Name","OK","MENU","DELLSTORE[GG]V2") 
    ba=nil
       if xerror==2 then menu2() return end      
    return
    end

    if v.x64 then
        x=gg.getResults(gg.getResultsCount())
        clear() xx=nil xx={} xxx=nil xxx={} 
            for i, v in ipairs(x) do
                xx[i]={}
                xx[i].address=v.address+0x38
                xx[i].flags=32
                xxx[i]={}
                xxx[i].address=v.address+0x30
                xxx[i].flags=32
            end
        xx=gg.getValues(xx) 
        xxx=gg.getValues(xxx) 
        xxxx={}  j=0
            for i, v in ipairs(xx) do 
                if v.value==xxx[i].value and #(tostring(v.value))>11 then
                    j=j+1
                    xxxx[j]=v.value
                end
            end 
            if j==0 then 
                gl=gg.getLine() 
                gg.alert("×× ERROR "..gl.." ××\nNo Pointer Results From Class Name","OK","MENU","DELLSTORE[GG]V2") 
                menu() 
                return
            end 
            x=nil xx=nil 
            gg.setRanges(xACO) 
            i = nil i = 1
            while i <= j do
                ::SEARCHJ:: 
                x=nil xx=nil
                    if i > j then break end 
                clear() wait() 
                x=tonumber(xxxx[i]) t=32 search()
                    if gg.getResultsCount() == 0 then i = i +1 goto SEARCHJ end 
                xx=gg.getResults(gg.getResultsCount())
                    for w=1,#(xx) do
                        for asdf=1,#(xxx) do
                            if xx[w].address>xxx[asdf].address+100 or xx[w].address<xxx[asdf].address-100 then 
                                 xx[w].name="DELLSTORE[GG]v2"
                            else
                                 xx[w].name="DELETE"
                            end
                        end 
                    end
                gg.addListItems(xx)  
                clear() 
                i = i +1
            end 
            i =nil 
        else -- if x64 end    start if x32 
        
            x=gg.getResults(gg.getResultsCount())
            clear() 
            xxx=nil xxx={}
                for i, v in ipairs(x) do
                    xxx[i]={}
                    xxx[i].address=v.address-8 
                    xxx[i].flags=4
                end
            gg.loadResults(xxx) 
            xxx=nil xxx=gg.getResults(gg.getResultsCount(),nil,nil,nil,nil,nil,nil,nil,gg.POINTER_WRITABLE) 
                if #(xxx)==0 then 
                    gl=gg.getLine()
                    gg.alert("×× ERROR "..gl.." ××\nNo Pointer Results From Class Name","OK","MENU","DELLSTORE[GG]V2") 
                    menu() 
                    return
                end 
            clear() gg.setRanges(xACO)
            gg.loadResults(xxx) 
            gg.getResults(gg.getResultsCount()) 
            gg.searchPointer(0) 
                if gg.getResultsCount()==0 then
                    gl=gg.getLine()
                    gg.alert("×× ERROR "..gl.." ××\nNo Pointer Results From Class Name","OK","MENU","DELLSTORE[GG]V2") 
                    menu() 
                    return
                end 
            xx=gg.getResults(gg.getResultsCount()) 
                for i, v in ipairs(xx) do
                    for asdf=1,#(xxx) do
                        if v.address>xxx[asdf].address+100 or v.address<xxx[asdf].address-100 then 
                            v.name="DELLSTORE[GG]v2"
                        else
                            v.name="DELETE"
                        end
                    end 
                end
            gg.addListItems(xx) 
            clear() 
        
        end -- if x32 
 
gg.setVisible(false) 
xxzx=nil 
load={} remove={} xxx=1
x=gg.getListItems()
    if v.x64 then xcl=32 else xcl=4 end 
    
    for i, v in ipairs(x) do
        if x[i].name=="DELLSTORE[GG]v2" then 
        load[xxx]={}
        load[xxx].address=x[i].address+EOS
        load[xxx].flags=xcl --tz 
        xxx=xxx+1 
        end
    end 
    xxx=1 
    for i, v in ipairs(x) do
        if x[i].name=="DELLSTORE[GG]v2" or x[i].name=="DELETE" then 
        remove[xxx]={}
        remove[xxx]=x[i] 
        xxx=xxx+1
        end
    end 
load=gg.getValues(load) 
gg.loadResults(load) 
gg.toast("Please Wait...") 
								
    offerror=0 
    if gg.getResultsCount()==0 then 
        for i, v in ipairs(load) do 
        load[i].address=load[i].address
        load[i].flags=1
        end
    gg.loadResults(load) 
    offerror=1
    gg.alert("## NOTICE ##\n\n  ×  Value Type '"..EVT.."' is Not Valid at Offset '"..tostring(EOS).."'\n\n  √  Value Type 'Byte' Has Been Loaded Instead\n##  ALL RESULTS SHOWING REGARDLESS OF OPTION TO REMOVE OR NOT","OK","DELLSTORE[GG]V2")
    end 

gg.removeListItems(remove) 

if EXCLUDE==0 and offerror==0 then
    for i, v in ipairs(load) do
        v.address=v.address
        v.flags=tz
    end
    gg.loadResults(load) 
end -- if EXCLUDE  0
if EXCLUDE==1 and offerror==0 then 
    xxclude=nil 
    xxclude=gg.getResults(gg.getResultsCount(),nil, nil, nil, nil, nil, nil, nil,gg.POINTER_NO) 
    gg.clearResults()
    for i, v in ipairs(xxclude) do
        v.address=v.address
        v.flags=tz
    end
    gg.loadResults(xxclude) 
end -- if EXCLUDE 1

gg.toast("SUCCESS") 
gg.setVisible(true) 

end -- search 

--███████████████████████

function refinenot()
gg.refineNumber(xshit,t,false,gg.SIGN_NOT_EQUAL) 
end 

--███████████████████████

function morescripts()
zzms=gg.multiChoice({
	"Value to Arm Converter",
	"Get Registration Offsets",
	"Online Mega Games Script",
	"Unity Dumper (libil2cpp.so)",
	"Unity Dump File", 
	"<-- MAIN MENU"},
	{[1]=true, [2]=true, [3]=true, [4]=true, [5]=true, [6]=true},
	"More Scripts by DELLSTORE[GG]v2\nhttps://t.me/DELLSTOREgg2Home") 

	if zzms[1] then 
	    gg.alert("Value to Arm Converter\n\nEnter any value of any type and it will instantly convert to valid arm hex.\n√ Online for easy updates\n√ Run in any process\n√ Any Bit\n√ Any Value Type\n√ Copy Style Options","OK",nil,xTAGx) 
	end
	
	if zzms[2] then
	    gg.alert("Get Registration Offsets\n\nFor Unity Games, simple script will automatically get the Code/Meta Registration Offsets that you can copy to clipboard","OK",nil, xTAGx) 
	end
	
	if zzms[3] then
	    gg.alert("Online Mega Games Script\n\n√ One Script that has MANY scripts for games.\n√ More games added frequently\n√ Open source,  never encrypted\n√ Options to download individual game scripts.","OK",nil,xTAGx) 
	end
	
	if zzms[4] then
	    gg.alert("Unity Dumper\n\n√ Creates a Dump.cs style file\n√ Namespace\n√ Class Name\n√ Field + Offsets\n√ Methods,  Type+Offsets\n√ Bypass almost all security\n√ Can dump 98% of all Unity Games\n× Not Free / $1,500 USD","OK",nil,xTAGx) 
	end
	
	if zzms[5] then
	    gg.alert("Unity Dump File\n\n?  Need a Dump File for a game that 'cant' be dumped? I will dump and sell file for $10","OK",nil,xTAGx) 
    end 
    
    if zzms[6] then menu() return end

end 
	
--███████████████████████
--███████████████████████
while true do
    if xCLASS==0 then 
        if gg.isVisible() or DELLSTORE==0 then
        gg.setVisible(false) 
        menu()
        end
    end 
    
    if xCLASS==1 then
	    while true do 
	        if xCLASS==0 then break end 
	        if gg.isClickedUiButton() then
	        menu2()
	        end 
	    end
	end 
	
end 
        
