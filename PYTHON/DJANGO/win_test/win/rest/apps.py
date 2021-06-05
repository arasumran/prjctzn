from django.apps import AppConfig
from django.utils.translation import ugettext_lazy as _


class WinTestAppConfig(AppConfig):
    name = 'win.rest'
    label = 'win_rest'
    verbose_name = _('Win Rest')