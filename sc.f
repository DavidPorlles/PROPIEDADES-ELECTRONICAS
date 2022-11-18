!2345678901234567890123456789012345678901234567890123456789012
      programa redcuadrada
      implicit none
      integer n1,n2,n3,m1,m2,m3, N 
      real(8) :: a   
      real(8) :: Kx,Ky,Kz,Rx,Ry,Rz    
      real(8),parameter :: pi=3.141592653589793238462


      open(unit=20,file='salscD.xyz',status='unknown') 
      open(unit=30,file='salscR.xyz',status='unknown')

      a=1.0
      N=2  

      do n1=(0-1)*N,N 
         do n2=(0-1)*N,N  
            do n3=(0-1)*N,N
            Rx=(a)*float(n1)  
            Ry=(a)*float(n2)  
            Rz=(a)*float(n3)   
            write(20,*) ' 1 ', Rx,'  ', Ry,'  ',Rz 
            enddo 
         enddo 
      enddo 

      do m1=(0-1)*N,N 
         do m2=(0-1)*N,N
            do m3=(0-1)*N,N  
            Kx=(2.0*pi/a)*float(m1) 
            Ky=(2.0*pi/a)*float(m2)
            Kz=(2.0*pi/a)*float(m3)
            write(30,*) ' 2 ', Kx,'  ',Ky,'  ',Kz 
            enddo 
         enddo
      enddo

      close(20) 
      close(30)  

      end 
