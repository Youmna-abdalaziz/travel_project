# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2019-02-21 21:46
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('city_name', models.CharField(max_length=50)),
                ('city_rate', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Country',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('country_name', models.CharField(max_length=50)),
                ('country_rate', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Hotel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('hotel_name', models.CharField(max_length=50)),
                ('hotel_city', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='countries.City')),
            ],
        ),
        migrations.CreateModel(
            name='Location',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('location_name', models.CharField(max_length=50)),
                ('location_city', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='countries.City')),
            ],
        ),
        migrations.AddField(
            model_name='city',
            name='city_country',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='countries.Country'),
        ),
    ]
