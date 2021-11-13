for y=1:g
    yu=bs(g,1)
    [b,row,col]=intersect(yu,bs)
    t=cell2mat(bs(col,row))
    if t=='M';
    gettable(col+1,2:8)={'M'};
    set(handles.uitable1,'data',gettable);
    elseif strcmp(t,'N');
    gettable(col+1,2:8)={'N'};
    set(handles.uitable1,'data',gettable);  
    elseif strcmp(t,'O');
    gettable(col+1,2:8)={'O'};
    set(handles.uitable1,'data',gettable); 
    elseif strcmp(t,'A');
    gettable(col+1,2:8)={'A'};
    set(handles.uitable1,'data',gettable);  
    elseif strcmp(t,'N');
    gettable(col+1,2:8)={'N'};
    set(handles.uitable1,'data',gettable);  
    elseif strcmp(t,'O');
    gettable(col+1,2:8)={'O'};
    set(handles.uitable1,'data',gettable); 
    elseif strcmp(t,'A');
    gettable(col+1,2:8)={'A'};
    set(handles.uitable1,'data',gettable);  
    end
    g=g-1
end