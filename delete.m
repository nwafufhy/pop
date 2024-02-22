clear all;
test_txt='test.txt'
test_image_save='G:\dataset\rice_datasets-test\image_test\';
test_label_save='G:\dataset\rice_datasets-test\label_test\';

test_image='G:\dataset\rice_datasets-test\images\';
test_label='G:\dataset\rice_datasets-test\label_mat\';
train_name=importdata(test_txt);
[num_images,~]=size(train_name);

for i = 1:num_images
    name=train_name{i};
    ind=strfind(name,'label_mat');
    name=name(1:ind-2)
    newStr = erase(name,"images/");
    
    test_image_path=[test_image_save newStr];
    test_label_path=[test_label_save newStr];
    save_image_path=[test_image newStr];
    save_label_path=[test_label newStr];
    
    test_label_path=strrep(test_label_path,'jpg','mat');    
    save_label_path=strrep(save_label_path,'jpg','mat');
    copyfile(save_label_path, test_label_path)
    copyfile(save_image_path, test_image_path)
end