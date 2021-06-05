from rest_framework import serializers

from win.models.Book import Book
from win.rest.serializers.AuthorSerializers import AuthorSerializers


class BookSerializers(serializers.ModelSerializer):

    class Meta:
        model = Book
        fields = ('title', 'author',)
