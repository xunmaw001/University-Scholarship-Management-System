import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import jiangxuejinleixing from '@/views/modules/jiangxuejinleixing/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import jiangchengxinxi from '@/views/modules/jiangchengxinxi/list'
    import jiangxuejinxinxi from '@/views/modules/jiangxuejinxinxi/list'
    import jiangxuejinshenqing from '@/views/modules/jiangxuejinshenqing/list'
    import fudaoyuan from '@/views/modules/fudaoyuan/list'
    import xueshengchengji from '@/views/modules/xueshengchengji/list'
    import gonggaoxinxi from '@/views/modules/gonggaoxinxi/list'
    import jiaowuchu from '@/views/modules/jiaowuchu/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/jiangxuejinleixing',
        name: '奖学金类型',
        component: jiangxuejinleixing
      }
          ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
          ,{
	path: '/jiangchengxinxi',
        name: '奖惩信息',
        component: jiangchengxinxi
      }
          ,{
	path: '/jiangxuejinxinxi',
        name: '奖学金信息',
        component: jiangxuejinxinxi
      }
          ,{
	path: '/jiangxuejinshenqing',
        name: '奖学金申请',
        component: jiangxuejinshenqing
      }
          ,{
	path: '/fudaoyuan',
        name: '辅导员',
        component: fudaoyuan
      }
          ,{
	path: '/xueshengchengji',
        name: '学生成绩',
        component: xueshengchengji
      }
          ,{
	path: '/gonggaoxinxi',
        name: '公告信息',
        component: gonggaoxinxi
      }
          ,{
	path: '/jiaowuchu',
        name: '教务处',
        component: jiaowuchu
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
