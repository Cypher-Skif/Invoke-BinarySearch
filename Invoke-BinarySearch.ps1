param (
    $list, [int]$item
)
[int]$low = 0
[int]$high = $list.Length - 1
while ($low -le $high) {
    [int]$mid = ($low + $high) / 2            
    [int]$guess = $list[$mid]
    Write-host "Guess = $guess"
    if ($guess -eq $item) {
        return $mid
        write-host $mid
    }
    if ($guess -gt $item) {
        $high = $mid - 1
    }else{
        $low = $mid + 1
    }
    
}
return $null


