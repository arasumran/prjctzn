from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet

from win.models.Book import Book
from win.rest.serializers.BookSerializers import BookSerializers


class BookViewSet(ModelViewSet):
    search_fields = '__all__'
    ordering_fields = '__all__'

    def get_queryset(self):
        return Book.objects.all()

    def get_serializer_class(self):
        return BookSerializers

    @action(detail=True, methods=['get'])
    def get_filtered_books(self, request, pk=None):
        filtered_books = Book.objects.filter(author__award_count__gte=3).order_by('author.name','-title').first()
        page = self.paginate_queryset(filtered_books)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            return self.get_paginated_response(serializer.data)

        serializer = self.get_serializer(filtered_books, many=True)
        return Response(serializer.data)
