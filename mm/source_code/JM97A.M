% 97���й���ѧ����ѧ��ģ����A�����
%�ο�������ѧ��ʵ������ʶ��1998��1
% ������Լ���Ż���궨ֵ
% �����ݲ�ȼ�
% ȫ�̱�����COST(�ɱ����󣩣�VARI(�ݲ�ȼ�������
% ���M�ļ���jm97a, jm97afun

clear;
global COST VARI;
big=10000;
COST=[big,25,big;20 50,big;20,50,200;50,100,500;50,big,big;10,25,100;big,25,100];
vlb=[0.075,0.225,0.075,0.075,1.125,12,0.5625];
vub=[0.125,0.375,0.125,0.125,1.875,20,0.935];
option=[];
x0=[0.1,0.3,0.1,0.1,1.5,16,0.75];
VARI=[5,10,10,10,10,10,5];
disp(['ԭ����:',num2str(jm97aoptim(x0))]);
minfee=inf;
for j2=[10 5]
   for j3=[10 5 1]
      for j4=[10 5 1]
         for j6=[10 5 1]
            for j7=[5 1]
               VARI=[5,j2,j3,j4,10,j6,j7];
               [x0,options]=constr('jm97aoptim',x0,option,vlb,vub);
               if minfee>options(8)
                  minfee=options(8);
                  grad=VARI;mark=x0;
               end;
            end;
         end;
      end;
   end;
end;
disp(['�궨ֵ:',num2str(mark)]);
disp(['�ݲ�ȼ�:',num2str(grad)]);
disp(['����:',num2str(minfee)]);