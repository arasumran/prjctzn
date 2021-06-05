from django.utils.translation import ugettext_lazy as _
from django.db import models


class Author(models.Model):
    name = models.CharField(max_length=255, db_column='name')
    award_count = models.IntegerField(db_column='award_count')

    class Meta:
        verbose_name = _('Author')
        verbose_name_plural = _('Authors')
        db_table = 'author'

    def __str__(self):
        return self.name

    def __unicode__(self):
        return self.name
