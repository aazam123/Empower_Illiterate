# Generated by Django 4.1.4 on 2023-02-04 14:51

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Empowerapp', '0002_jobapply_alter_adminlogin_created'),
    ]

    operations = [
        migrations.DeleteModel(
            name='jobapply',
        ),
        migrations.AlterField(
            model_name='adminlogin',
            name='created',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2023, 2, 4, 20, 21, 36, 945469)),
        ),
    ]
