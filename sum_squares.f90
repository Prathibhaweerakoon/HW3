
program sum_squares_table
    implicit none

    integer :: n

    print *, "Sum of squares table"

    do
        print *
        print *, "Enter table size from 1 to 5 (0 to quit):"
        read *, n

        if (n == 0) then
            exit
        else if (n < 1 .or. n > 5) then
            print *, "Please enter a number between 1 and 5."
        else
            call print_table(n)
        end if
    end do

    print *, "Program finished."

contains

    subroutine print_table(n)
        implicit none

        integer, intent(in) :: n
        integer :: i, j, result

        print *
        print *, " i   j   i^2 + j^2"

        do i = 1, n
            do j = 1, n
                result = sum_squares(i, j)
                print *, i, j, result
            end do
        end do

    end subroutine print_table

    integer function sum_squares(a, b)
        implicit none

        integer, intent(in) :: a, b

        sum_squares = a * a + b * b

    end function sum_squares

end program sum_squares_table
