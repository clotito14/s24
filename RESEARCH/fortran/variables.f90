program variables
    implicit none
   
    ! declare variables
    integer :: amount
    real :: pi
    complex :: frequency
    character :: initial
    logical :: isOkay

    ! assign variables
    amount = 10
    pi = 3.1415927
    frequency = (1.0, -0.5)
    initial = 'A'
    isOkay = .false.        ! boolean values can be .true. or .false.

    ! it is best practice to declare and assign variables 
    ! separately, since inline assignment will imply the 
    ! 'save' attribute, and retain the variable's value
    ! between procedure calls.

    print *, 'The value of amount (integer) is: ', amount
    
end program variables
