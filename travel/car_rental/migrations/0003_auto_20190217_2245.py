# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2019-02-17 22:45
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('car_rental', '0002_carrentalrequests_user_requested'),
    ]

    operations = [
        migrations.AlterField(
            model_name='carrentalrequests',
            name='user_requested',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]