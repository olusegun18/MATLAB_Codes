clc
tt = {'M' 'AL' 'O' 'A' 'N'};
kk = randi([1 5],1,n);
af = find(kk==4);
nf = find(kk==5);
aflen = length(af);
nflen = length(nf);
if (aflen)>2 
    mm = aflen - 2;
    pp = randperm(aflen,2);
    af(:,pp) = [];
    kk(1,af) = randi([1 3],1,mm);
    disp('Violated A 1')
elseif (aflen)==1
    rr = find(kk~=5);
    rlen = length(rr);
    mm = rlen - 1;
    pp = randperm(rlen,mm);
    rr(:,pp) = [];
    kk(1,rr) = 4;
    disp('Violated A 2')
elseif (aflen)==0
    rr = find(kk~=5);
    rlen = length(rr);
    mm = rlen - 2;
    pp = randperm(rlen,mm);
    rr(:,pp) = [];
    kk(1,rr) = 4;
    disp('Violated A 3')
else
    disp('Not Violated')
end
if (nflen>2)
    mm = nflen - 2;
    pp = randperm(nflen,2);
    nf(:,pp) = [];
    kk(1,nf) = randi([1 3],1,mm);
     disp('Violated N 1')
elseif (nflen<2)
    rr = find(kk~=4);
    rlen = length(rr);
    mm = rlen - 1;
    pp = randperm(rlen,mm);
    rr(:,pp) = [];
    kk(1,rr) = 5;
    disp('Violated N 2')
elseif (aflen)==0
    rr = find(kk~=5);
    rlen = length(rr);
    mm = rlen - 2;
    pp = randperm(rlen,mm);
    rr(:,pp) = [];
    kk(1,rr) = 5;
    disp('Violated N 3')
 else
    disp('Not Violated')
end
disp(kk)
for l = 1:n
    e = kk(1,l)
    if e==1
        b(1,l) = {'M'}
    elseif e==2
        b(1,l) = {'AL'}
    elseif e==3
        b(1,l) = {'O'}
    elseif e==4
        b(1,l) = {'A'}
    elseif e==5
        b(1,l) = {'N'}
    end
end
