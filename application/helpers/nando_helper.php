<?php 
if ( ! function_exists('debug'))
{
    function debug()
    {
        list($callee) = debug_backtrace();

        $args = func_get_args();

        $total_args = func_num_args();

        echo '<div><fieldset style="background: #fefefe !important; border:1px red solid; padding:15px">';
        echo '<legend style="background:#E13300; color:white; padding:5px;">'.$callee['file'].' @line: '.$callee['line'].'</legend><pre><code>';

        $i = 0;

        foreach ($args as $arg)
        {
            echo '<strong>Debug #' . ++$i . ' of ' . $total_args . '</strong>: ' . '<br>';

            highlight_string("<?php\n ".var_export($arg,true). "?>");
        }

        echo "</code></pre></fieldset><div><br>";
        die;
    }
} 

function cok($data){
  highlight_string("<?php\n " . var_export($data, true) . "?>");
  echo '<script>document.getElementsByTagName("code")[0].getElementsByTagName("span")[1].remove() ;document.getElementsByTagName("code")[0].getElementsByTagName("span")[document.getElementsByTagName("code")[0].getElementsByTagName("span").length - 1].remove() ; </script>';
  die();
}

?>