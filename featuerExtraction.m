imFolder='/home/mohamed97/Documents/Pattern Project/Apple';
imagFile=dir(fullfile(imFolder ,'*.jpg'));
len=length(imagFile);
input=zeros(12,45);
cr=1;
global cc
cc=1;
for i=1:len
fullima=fullfile(imFolder, imagFile(i).name);
im=imread(fullima);
x=rgb2gray(im);
glcm = graycomatrix(x,'Offset',[0,1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
glcm = graycomatrix(x,'Offset',[-1,-1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
glcm = graycomatrix(x,'Offset',[-1,1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
glcm = graycomatrix(x,'Offset',[-1,0]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
cr=1;
cc=cc+1;
end
imFolder='/home/mohamed97/Documents/Pattern Project/Banana';
imagFile=dir(fullfile(imFolder ,'*.jpg'));

for i=1:len
    fullima=fullfile(imFolder, imagFile(i).name);
    im=imread(fullima);
    x=rgb2gray(im);
glcm = graycomatrix(x,'Offset',[0,1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
glcm = graycomatrix(x,'Offset',[-1,-1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
glcm = graycomatrix(x,'Offset',[-1,1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
glcm = graycomatrix(x,'Offset',[-1,0]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
cr=1;
cc=cc+1;
end
imFolder='/home/mohamed97/Documents/Pattern Project/Watermelon';
imagFile=dir(fullfile(imFolder ,'*.jpg'));
for i=1:len
    fullima=fullfile(imFolder, imagFile(i).name);
    im=imread(fullima);
    x=rgb2gray(im);
glcm = graycomatrix(x,'Offset',[0,1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
glcm = graycomatrix(x,'Offset',[-1,-1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
glcm = graycomatrix(x,'Offset',[-1,1]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
glcm = graycomatrix(x,'Offset',[-1,0]);
gray= graycoprops(glcm,{'contrast','homogeneity','Energy'});
cont=gray.Contrast;
homo=gray.Homogeneity;
entro=gray.Energy;
input(cr,cc)=cont;
cr=cr+1;
input(cr,cc)=homo;
cr=cr+1;
input(cr,cc)=entro;
cr=cr+1;
cr=1;
cc=cc+1;
end




