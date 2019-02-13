# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2019-02-13 14:44
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('countries', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='HotelReservationRequest',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('from_date', models.DateField()),
                ('to_date', models.DateField()),
                ('no_of_adults', models.IntegerField()),
                ('requested_hotel', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='countries.Hotel')),
            ],
        ),
    ]
