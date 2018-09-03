startingFolder = pwd;

defaultFileName = fullfile(startingFolder, '*.*');
[baseFileName, folder] = uigetfile(defaultFileName, 'Select Image');
if baseFileName == 0
	return;
end
fullFileName = fullfile(folder, baseFileName)
im=imread(fullFileName);
imshow(im);
x=rgb2gray(im);
glcm = graycomatrix(x,'Offset',[0,1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont1=gray.Contrast;
homo1=gray.Homogeneity;
entro1=gray.Energy;
glcm = graycomatrix(x,'Offset',[-1,-1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont2=gray.Contrast;
homo2=gray.Homogeneity;
entro2=gray.Energy;
glcm = graycomatrix(x,'Offset',[-1,1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont3=gray.Contrast;
homo3=gray.Homogeneity;
entro3=gray.Energy;
glcm = graycomatrix(x,'Offset',[-1,0]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont4=gray.Contrast;
homo4=gray.Homogeneity;
entro4=gray.Energy;
display(round(networkFruits([cont1,homo1,entro1,cont2,homo2,entro2,cont3,homo3,entro3,cont4,homo4,entro4]')))
display(round(networkFruit([cont1,homo1,entro1,cont2,homo2,entro2,cont3,homo3,entro3,cont4,homo4,entro4]')))
