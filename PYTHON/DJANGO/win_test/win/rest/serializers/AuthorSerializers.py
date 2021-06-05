from rest_framework import serializers

from win.models.Author import Author


class AuthorSerializers(serializers.ModelSerializer):
    books = serializers.StringRelatedField(many=True)

    class Meta:
        model = Author
        fields = ['name', 'award_count', 'books']
