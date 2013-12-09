load newsalesdata.csv;
X = newsalesdata(:,1:2);
y = newsalesdata(:,3);

input_layer_size = 366;
hidden_layer_size = 2;
output_layer_size = 1;

max_ndd = max(X(:,1));
min_ndd = min(X(:,1));
max_standard = max(X(:,2));
min_standard = min(X(:,2));
range_ndd = max_ndd - min_ndd;
range_standard = max_standard - min_standard;
m = length(X);
scaled_X = zeros(size(X));

for i=1:m;
	scaled_X(i,1)= (X(i,1) - min_ndd)/range_ndd;
end;

for f=1:m;
	scaled_X(f,2) = (X(f,2) - min_standard)/range_standard;
end;

Theta1 = rand(2, (366));
Theta2 = rand(2,1);


initial_Theta1 = randInitializeWeights(2, 3);
initial_Theta2 = randInitializeWeights(3, 1);
