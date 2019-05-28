"""ZrcShop URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,re_path,include
from django.views.static import serve
import xadmin
from rest_framework.routers import DefaultRouter
from rest_framework.authtoken import views
from rest_framework_jwt.views import obtain_jwt_token
from rest_framework.documentation import include_docs_urls

from ZrcShop.settings import MEDIA_ROOT
from goods.views import GoodsListViewSet, CategoryViewset
from users.views import UserViewSet

from zrctest.views import get_news_list,vue_login


router = DefaultRouter()

#配置goods的url
router.register(r'goods', GoodsListViewSet, base_name="goods")

#配置category的url
router.register(r'categorys', CategoryViewset, base_name="categorys")

router.register(r'users', UserViewSet, base_name="users")
urlpatterns = [
    #path('admin/', admin.site.urls),
    path('xadmin/', xadmin.site.urls),

    re_path(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),

    #配置上传文件的访问处理函数
    re_path(r'^media/(?P<path>.*)$',  serve, {"document_root":MEDIA_ROOT}),

    re_path(r'^', include(router.urls)),

    #drf自带的token认证模式
    re_path(r'^api-token-auth/', views.obtain_auth_token),

    #jwt的认证接口
    re_path(r'^login/', obtain_jwt_token),

    path(r'docs/', include_docs_urls(title="慕学生鲜")),

    # 测试 VUE临时代码  vue-test 项目使用
    re_path(r'^get_news_list/', get_news_list),
    re_path(r'^vue_login/', vue_login),
]
