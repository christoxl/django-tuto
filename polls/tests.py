import datetime

from django.utils import timezone
from django.test import TestCase

from .models import Question

# Create your tests here.
class QuestionMethodTests(TestCase):

    def test_was_published_recently_with_future_question(self):
        """
        was_published_recently() deberia regresar False para
        preguntas publicadas en el futuro
        """
        time = timezone.now() + datetime.timedelta(days=30)
        future_question = Question(pub_date=time)
        self.assertEqual(future_question.was_published_recently(), False)

    def test_was_published_recently_with_old_question(self):
        """
        was_published_recently() debe regresar False para preguntas
        publicadas hace mas de un dia
        """
        time = timezone.now() - datetime.timedelta(days=30)
        old_question = Question(pub_date=time)
        self.assertEqual(old_question.was_published_recently(), False)

    def test_was_published_recently_with_recent_questions(self):
        """
        was_published_recently() debe regresar True para preguntas
        publicadas el mismo dia
        """
        time = timezone.now() - datetime.timedelta(hours=1)
        recent_question =  Question(pub_date=time)
        self.assertEqual(recent_question.was_published_recently(), True)