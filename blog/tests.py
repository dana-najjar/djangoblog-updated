from django.test import TestCase
from django.contrib.auth.models import User
from blog.models import Post

class PostModelTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        # Create a user for the author
        User.objects.create_user(username='testuser', password='testpassword')
        
        # Create a Post object
        Post.objects.create(title='Test Title', content='Test Content', author=User.objects.first())

    def test_str_representation(self):
        post = Post.objects.get(id=1)
        expected_title = 'Test Title'
        self.assertEqual(str(post), expected_title)

   