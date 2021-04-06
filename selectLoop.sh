#! /bin/bash

select name in alvin mark tom john
do
    echo "$name selected"
done

# select name in alvin mark tom john
# do
#     case $name in 
#     "alvin" )
#     echo "You selected alvin";;
#     "mark" )
#     echo "You selected mark";;
#     "tom" )
#     echo "You selected tom";;
#     "john" )
#     echo "You selected john";;
#     * )
#     echo "Invalid choice";;
#     esac
# done