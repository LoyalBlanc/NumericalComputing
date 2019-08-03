function s=draft
    x=1:0.25:2;
    y=1./(1.144-0.399*x);
    z=[1,1.5,2,2.2,2.3];
    t=(y-z).^2;
    s=sum(t);
end

