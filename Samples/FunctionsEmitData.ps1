function Add
{
    param (
        $i1,
        $i2
    )
    
    $sum = $i1 + $i2
    $i1
    $i2
    write-host "The sum is $sum"
    $sum
}

$data = Add -i1 5 -i2 7
