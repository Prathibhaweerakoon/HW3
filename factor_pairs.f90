program factor_pairs
    implicit none

    integer :: target

    print *, "Factor-pair search"

    do
        print *
        print *, "Enter a target from 1 to 25 (0 to quit):"
        read *, target

        if (target == 0) then
            exit
        else if (target < 1 .or. target > 25) then
            print *, "Please enter a number between 1 and 25."
        else
            call find_pairs(target)
        end if
    end do

    print *, "Program finished."

contains

    subroutine find_pairs(target)
        implicit none

        integer, intent(in) :: target
        integer :: i, j, count

        count = 0

        do i = 1, 5
            do j = 1, 5
                if (multiply(i, j) == target) then
                    print *, "Pair:", i, j
                    count = count + 1
                end if
            end do
        end do

        if (count == 0) then
            print *, "No pairs found."
        end if

        print *, "Number of pairs:", count

    end subroutine find_pairs

    integer function multiply(a, b)
        implicit none

        integer, intent(in) :: a, b

        multiply = a * b

    end function multiply

end program factor_pairs
