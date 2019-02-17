# -*- coding: utf-8 -*-
# Generated by Django 1.11.11 on 2019-02-15 12:37
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('comments_and_experiences', '0002_auto_20190215_1237'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('user_profile', '0002_auto_20190215_1209'),
    ]

    operations = [
        migrations.CreateModel(
            name='ExtendedUser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_name', models.CharField(max_length=100)),
                ('name', models.CharField(max_length=100)),
                ('password', models.CharField(max_length=500)),
                ('status', models.BooleanField()),
            ],
        ),
        migrations.DeleteModel(
            name='User',
        ),
        migrations.AddField(
            model_name='extendeduser',
            name='user',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]