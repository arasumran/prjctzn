from rest_framework.permissions import AllowAny
from rest_framework.viewsets import ModelViewSet

from win.models.Author import Author
from win.rest.serializers.AuthorSerializers import AuthorSerializers


class AuthorViewSet(ModelViewSet):
    ordering_fields = '__all__'

    def get_queryset(self):
        return Author.objects.filter()

    def get_serializer_class(self):
        return AuthorSerializers
