<?php
use yii\helpers\Url;
?>

<nav class="navbar navbar-default" style="margin-bottom: 0px;">
    <div class="container-fluid">
        <ul class="nav navbar-nav">

<!--
            <?php /*foreach($m as $menu): */?>
                <li><a href="<?/*= $menu->item_route */?>" class="mes2"><?/*= $menu->item_name*/?></a></li>
            <?php /*endforeach; */?>

-->
            <li><a href="<?= Url::to(['/']) ?>" class="mes2">Главная</a></li>
            <li><a href="<?= Url::to(['/news']) ?>" class="mes2">Новости</a></li>
            <li><a href="<?= Url::to(['/about']) ?>" class="mes2">О храме</a></li>
            <li><a href="<?= Url::to(['/schedule']) ?>" class="mes2">Расписание Богослужений</a></li>
            <li><a href="<?= Url::to(['/gallery']) ?>" class="mes2">Галерея</a></li>
            <li><a href="<?= Url::to(['/contacts']) ?>" class="mes2">Контакты</a></li>
        </ul>
    </div>
</nav>

