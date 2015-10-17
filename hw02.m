
fp = fopen('polbooks_nodes.txt','r');
nodes = textscan(fp,'%d %s','Delimiter',' ');
fclose(fp);

fp = fopen('polbook_arcs.txt','r');
arcs = textscan(fp,'%d %d');
fclose(fp);
mat = zeros(size(nodes{1},1),size(nodes{1},1));
for i = 1:size(arcs{1},1)
    mat(arcs{1}(i),arcs{2}(i)) = 1;    
end

bg = biograph(mat,nodes{2});
view(bg)