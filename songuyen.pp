unit songuyen;
interface
        function scp(n:integer):boolean;
        function ucln(x,y:longint):longint;
        function lyth(a,n:integer):longint;
        function ngto(n:integer):boolean;
        function shh(n:integer):boolean;
        function sst(n:integer):boolean;
        function tongchuso(n:integer):integer;
        function demchuso(n:integer):integer;
        function bcnn(a,b:integer):comp;
        function shn(a,b:integer):boolean;
        function tonguoc(a:integer):integer;
implementation
        function scp(n:integer):boolean;
        begin
        if n<=-1 then exit(false);
        if sqr(round(sqrt(n)))<>n then exit(false);
        exit(true);
        end;
        function ucln(x,y:longint):longint;
        var du:longint;
        begin
        While x mod y<>0 do
        begin
                 Du:=x mod y;
                 X:=y;
                 Y:=du;
        end;
        exit(y);
        end;
        function lyth(a,n:integer):longint;
        var i,s:integer;
        begin
         s:=1;
         for i:=1 to n do
         s:=s*a;
         exit(s);
         end;
         function ngto(n:integer):boolean;
         var i:integer;
         begin
                if n<2 then exit(false);
                for i:=2 to trunc(sqrt(n)) do
                if n mod i=0 then exit(false);
                exit(true);
         end;
        function shh(n:integer):boolean;
        var s,i:integer;
        begin
        s:=0;
        for i:=1 to n-1 do
        if n mod i=0 then s:=s+i;
        if s=n then exit(true);
        exit(false);
        end;
        function sst(n:integer):boolean;
        var s:integer;
        begin
        s:=0;
        while n<>0 do
        begin
        s:=s+ n mod 10;
        n:=n div 10;
        end;
        if ngto(s)=true then exit(true);
        exit(false);
        end;
        function tongchuso(n:integer):integer;
        var i,s,dem:integer;
        begin
        s:=0; dem:=0;
        while n<>0 do
        begin
        s:=s+n mod 10;
        n:=n div 10;
        dem:=dem+1;
        end;
        exit(s);
        end;
        function demchuso(n:integer):integer;
        var i,s,dem:integer;
        kt:boolean;
        begin
        s:=0; dem:=0;
        while n<>0 do
        begin
        s:=s+n mod 10;
        n:=n div 10;
        dem:=dem+1;
        end;
        exit(dem);
        end;
        function bcnn(a,b:integer):comp;
        var bc:comp;
        begin
        bc:=a*b;
        while a<>b do
        if a<>b then a:=a-b else b:=b-a;
        bc:=bc/a;
        exit(round(bc));
        end;
        function shn(a,b:integer):boolean;
        var i,s,s1:integer;
        begin
        s:=0;
        for i:=1 to a-1 do
        if (a mod i =0) then s:=s+i;
        s1:=0;
        for i:=2 to b-1 do
        if (b mod i =0) then s1:= s1+i;
        if (s=b) and (s1=a) then exit(true);
        end;
        function tonguoc(a:integer):integer;
        var i,s:integer;
        begin
        s:=0;
        for i:=1 to a-1 do
        if (a mod i =0) then s:=s+i;
        exit(s);
        end;
end.

