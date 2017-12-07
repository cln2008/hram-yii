<nav class="navbar navbar-default" style="margin-bottom: 0px;">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <?php foreach($m as $menu): ?>
                <li><a href="<?= $menu->item_route ?>" class="mes2"><?= $menu->item_name?></a></li>
            <?php endforeach; ?>
        </ul>
    </div>
</nav>