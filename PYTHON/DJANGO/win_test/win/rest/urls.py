from django.conf.urls import url, include
from rest_framework.routers import DefaultRouter
from win.rest.views.AuthorViews import AuthorViewSet
from win.rest.views.BookViewSet import BookViewSet

router = DefaultRouter()


router.register('author', AuthorViewSet, basename="author")
router.register('book', BookViewSet, basename="book")


urlpatterns = [
    url(r'', include(router.urls))

]