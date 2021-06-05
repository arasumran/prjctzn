from django.utils.translation import ugettext_lazy as _
from django.db import models
from win.models.Author import Author


class Book(models.Model):
    title = models.CharField(max_length=255, db_column='title')
    author = models.ForeignKey(Author, on_delete=models.CASCADE, db_column='author_id', related_name='books')

    class Meta:
        verbose_name = _('Book')
        verbose_name_plural = _('Books')
        unique_together = ['author', 'title']
        db_table = 'book'

    def __str__(self):
        return self.title

    def __unicode__(self):
        return self.title

