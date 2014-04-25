<?php
$page = Posts::getPage($colid);
$faceimg = Attachments::getOne($page['attachid']);
if (!empty($faceimg)) {
    $dir = zmf::uploadDirs($faceimg['logid'], 'site', $faceimg['classify'], '124') . '/' . $faceimg['filePath'];
    echo '<img src="' . $dir . '"/>';
}
echo '<p>' . $page['intro'] . '</p>';
