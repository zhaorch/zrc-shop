from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view

# Create your views here.


@api_view(['GET', 'POST'])
def get_news_list(request):
    if request.method == 'POST':
        return Response({"message": "Got some data!", "data": request.data})
    return Response({'newsList': [{
                            'title': '恭贺ZRC喜得千金',
                            'url': 'detail/analysis'
                            },
                            {
                            'title': '某专家称美国即将爆炸*3',
                            'url': 'detail/analysis'
                            },
                            {
                            'title': '中国股市再破新高',
                            'url': 'detail/analysis'
                            }]})


@api_view(['POST'])
def vue_login(request):
    username = request.data['username']
    password = request.data['password']
    if username == 'zhaorch@163.com' and password == '123':
       return Response({"success": True, "data": request.data})
    return Response({"success": False, "message": '服务器说用户名密码错误了'})

