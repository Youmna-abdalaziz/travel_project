# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2019-02-16 21:29
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('user_profile', '0011_auto_20190216_2124'),
    ]

    operations = [
        migrations.DeleteModel(
            name='ExtendedUser',
        ),
    ]