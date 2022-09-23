% goi ham va nhap so N tu ham input trong ham function, co the goi ham tren
% command window [so_luong_sinh_vien_dau,so_luong_sinh_vien_rot]=baitap3
% sau do nhap so N 
function  [so_luong_sinh_vien_dau,so_luong_sinh_vien_rot]=baitap3
   N=input('nhap so: ');
   x=randi([0,10],N,1);
   bar(x);
   axis([0 N+40 0 10]);
   if N>100
       axis([0 N+N/2 0 10]);
   end
   
   so_luong_sinh_vien_dau=length(x(x>=4));
   so_luong_sinh_vien_rot=length(x(x<4));
   fprintf('so luong sinh vien dau la %.1f\r',so_luong_sinh_vien_dau)
   fprintf('so luong sinh vien rot la %.1f\r',so_luong_sinh_vien_rot)
   xlabel('so luong sinh vien trong lop');
   ylabel('diem cua cac sinh vien');
   txt=['So luong sinh vien dau la: ' num2str(so_luong_sinh_vien_dau)];
   text(N,9,txt);
   txt=['So luong sinh vien rot la: ' num2str(so_luong_sinh_vien_rot)];
   text(N,8,txt);
end