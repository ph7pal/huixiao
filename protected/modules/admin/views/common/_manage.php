<?php
echo CHtml::link('编辑',array($table.'/update','id'=>$keyid)).'&nbsp;';
echo CHtml::link('删除',array($table.'/delete','id'=>$keyid));