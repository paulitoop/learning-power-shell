#source: https://habr.com/ru/companies/ruvds/articles/490924/

$a = 5
[int]$b = 3

if ($a -gt $b) {
    Write-Output "a > b"
}
elseif ($a -eq $b){
    Write-Output "a = b"
}
else{
    Write-Output "a < b "
}

$result = 0
while ($result -lt 50){
    $result+=$a
    $result+=$b
}

Write-Output $result

for ($i = 0; $i -le 10; $i++){
    Write-Output $i
}

Write-Host $i

# $a = Read-Host "Please, enter 'a'"
# $b = Read-Host "Please, enter 'b'"

$my_array = 1,2,3,4,5
$my_array_1 = , 1

Write-Host $my_array
$my_array[0]=10
Write-Host $my_array
Write-Host $my_array[100]
for ($i = 0; $i -lt $my_array.Count; $i++){
    if ($my_array[$i] -gt 3){
        Write-Host $my_array[$i] ">" 3
    }
}

$test_dict = @{one=1; two=2; three = 3}
Write-Host $test_dict["one"]
$test_dict.Add("four", 4)
Write-Host $test_dict.Keys
$test_dict.five = 5
Write-Host $test_dict.Keys

function sum($a, $b){
    return $a+$b
}

$res = sum 5 5
Write-Host (sum 5 5)

try {

    [int]$test = Read-Host "Введите число"
    100 / $test

} catch {

     Write-Warning "Некорректное число"
     Write-Host $_

}