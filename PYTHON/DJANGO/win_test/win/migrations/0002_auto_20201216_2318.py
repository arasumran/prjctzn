# Generated by Django 2.2 on 2020-12-16 20:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('win', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='book',
            name='author',
            field=models.ForeignKey(db_column='author_id', on_delete=django.db.models.deletion.CASCADE, related_name='books', to='win.Author'),
        ),
        migrations.AlterUniqueTogether(
            name='book',
            unique_together={('author', 'title')},
        ),
    ]