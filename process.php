<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $executionCount = isset($_POST["executionCount"]) ? intval($_POST["executionCount"]) : 0;
    $maxExecutionCount = 100;
    $executionCount = min(max(1, $executionCount), $maxExecutionCount);
    for ($i = 0; $i < $executionCount; $i++) {
        $output = shell_exec('/var/www/html/script.sh');
        echo "$output<br>";
    }
}
?>
