# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2019-02-15 12:53
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('user_profile', '0003_auto_20190215_1237'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='extendeduser',
            name='status',
        ),
    ]
