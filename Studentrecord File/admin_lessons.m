prompt = {'Username:', 'Password'}
definput = 2
title = 'Admin Page'
jj = inputdlg(prompt,title,definput)



cname = {'Name','School','Class','Education Level'}
jj =load('stdrecord.mat')
mm = jj.record
set(handles.uitable1,'data',mm,'columnname',cname)

gettable = get(handles.uitable1,'data')
getcol = get(handles.uitable1,'columnname')

setappdata(0,'namerecord',gettable)
setappdata(0,'columnrecord',getcol)


handles.output = hObject
namerec = getappdata(0,'namerecord')
colrec = getappdata(0,'columnrecord')
set(handles.new_table_on_new_gui,'data',namerec,'columnname',colrec)
guidata(hObject,handles)



h = waitbar(0,'Pleae wait')
tic
dd = waitbar(tic/toc,h)
close(dd) %whenever you sre done
