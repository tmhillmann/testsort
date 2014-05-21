function randomsort(x,cleartheplot)
persistent fh
persistent t
persistent u
persistent a
persistent histo
switch cleartheplot
    case 1
        clf(fh);
    case 2
        xedit=str2num(get(t,'String'));
        x=xedit;
        clf(fh);
    case 3
        a1={};
        a2=0;
        for i=1:length(a)/10+1
            for m=1:14
                if length(a)>=(a2*14+i+m-1)
                    a1{i,m}=a(a2*14+i+m-1);
                end
            end
            a2=a2+1;
        end
        disp(a1)
    case 4
        if mod(histo,2)
            y3=plot(a,'x',...
                'MarkerSize',10);
            set(u,'String','Histogram');
            histo=0;
        else
            hist(a,100)
            y3=hist(a,100);
            set(u,'String','Revert');
            histo=1;
        end
    otherwise
        fh=figure;
        histo=0;
end
if cleartheplot==3
elseif cleartheplot==4
else
z=randi(100,1,x);
a=[];
for i=1:x
y1=subplot(1,2,1);plot(z,'x',...
    'MarkerSize',10);
b=min(z);
a=[a,z(z==b)];
z=z(z~=b);
pause(5/x)
y2=subplot(1,2,2);plot(a,'x',...
    'MarkerSize',10);
if isempty(z)
    break
end
end
clf(fh);
y3=plot(a,'x',...
    'MarkerSize',10);
title('Random Sort')
uicontrol(...
    'Style','pushbutton',...
    'String','Reset',...
    'Position', [5 5 50 15],...
    'Callback',['randomsort(' num2str(x) ',1)'])
t=uicontrol(...
    'Style','edit',...
    'String', num2str(x),...
    'Position', [250 5 70 15],...
    'Callback', ['randomsort(' num2str(x) ',2)']);
uicontrol(...
    'Style','pushbutton',...
    'String','Output',...
    'Position', [65 5 70 15],...
    'Callback', ['randomsort(' num2str(x) ',3)']);
u=uicontrol(...
    'Style','pushbutton',...
    'String','Histogram',...
    'Position', [145 5 70 15],...
    'Callback', ['randomsort(' num2str(x) ',4)']);
uicontrol(...
    'Style','pushbutton',...
    'String','Quit',...
    'Position', [500 5 50 15],...
    'Callback', 'close all');
end
end
