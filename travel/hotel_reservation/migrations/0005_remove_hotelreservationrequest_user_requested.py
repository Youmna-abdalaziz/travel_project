# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2019-02-16 21:56
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('hotel_reservation', '0004_hotelreservationrequest_user_requested'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='hotelreservationrequest',
            name='user_requested',
        ),
    ]