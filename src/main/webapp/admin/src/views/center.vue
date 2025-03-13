<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      label-width="80px"
    >  
     <el-row>
                              <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="学生账号" prop="xueshengzhanghao">
          <el-input v-model="ruleForm.xueshengzhanghao" readonly              placeholder="学生账号" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="学生姓名" prop="xueshengxingming">
          <el-input v-model="ruleForm.xueshengxingming"               placeholder="学生姓名" clearable></el-input>
        </el-form-item>
      </el-col>
                                          <el-col :span="12">
        <el-form-item v-if="flag=='xuesheng'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie" placeholder="请选择性别">
            <el-option
                v-for="(item,index) in xueshengxingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="专业" prop="zhuanye">
          <el-input v-model="ruleForm.zhuanye"               placeholder="专业" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua"               placeholder="联系电话" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="邮箱" prop="youxiang">
          <el-input v-model="ruleForm.youxiang"               placeholder="邮箱" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="年级" prop="nianji">
          <el-input v-model="ruleForm.nianji"               placeholder="年级" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="班级" prop="banji">
          <el-input v-model="ruleForm.banji"               placeholder="班级" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="家庭地址" prop="jiatingdizhi">
          <el-input v-model="ruleForm.jiatingdizhi"               placeholder="家庭地址" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='xuesheng'"  label="家庭情况" prop="jiatingqingkuang">
          <el-input v-model="ruleForm.jiatingqingkuang"               placeholder="家庭情况" clearable></el-input>
        </el-form-item>
      </el-col>
                                                <el-col :span="12">
        <el-form-item   v-if="flag=='fudaoyuan'"  label="辅导员工号" prop="fudaoyuangonghao">
          <el-input v-model="ruleForm.fudaoyuangonghao" readonly              placeholder="辅导员工号" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='fudaoyuan'"  label="辅导员姓名" prop="fudaoyuanxingming">
          <el-input v-model="ruleForm.fudaoyuanxingming"               placeholder="辅导员姓名" clearable></el-input>
        </el-form-item>
      </el-col>
                                          <el-col :span="12">
        <el-form-item v-if="flag=='fudaoyuan'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie" placeholder="请选择性别">
            <el-option
                v-for="(item,index) in fudaoyuanxingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='fudaoyuan'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua"               placeholder="联系电话" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='fudaoyuan'"  label="教师邮箱" prop="jiaoshiyouxiang">
          <el-input v-model="ruleForm.jiaoshiyouxiang"               placeholder="教师邮箱" clearable></el-input>
        </el-form-item>
      </el-col>
                                                <el-col :span="12">
        <el-form-item   v-if="flag=='jiaowuchu'"  label="教务处工号" prop="jiaowuchugonghao">
          <el-input v-model="ruleForm.jiaowuchugonghao" readonly              placeholder="教务处工号" clearable></el-input>
        </el-form-item>
      </el-col>
                                          <el-col :span="12">
        <el-form-item   v-if="flag=='jiaowuchu'"  label="教务姓名" prop="jiaowuxingming">
          <el-input v-model="ruleForm.jiaowuxingming"               placeholder="教务姓名" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item v-if="flag=='jiaowuchu'"  label="性别" prop="xingbie">
          <el-select v-model="ruleForm.xingbie" placeholder="请选择性别">
            <el-option
                v-for="(item,index) in jiaowuchuxingbieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='jiaowuchu'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua"               placeholder="联系电话" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="12">
        <el-form-item   v-if="flag=='jiaowuchu'"  label="教师邮箱" prop="jiaoshiyouxiang">
          <el-input v-model="ruleForm.jiaoshiyouxiang"               placeholder="教师邮箱" clearable></el-input>
        </el-form-item>
      </el-col>
                                                                                                      <el-form-item v-if="flag=='users'" label="用户名" prop="username">
        <el-input v-model="ruleForm.username" 
        placeholder="用户名"></el-input>
      </el-form-item>
      <el-col :span="24">
      <el-form-item>
        <el-button type="primary" @click="onUpdateHandler">修 改</el-button>
      </el-form-item>
      </el-col>
      </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/validate";

export default {
  data() {
    return {
      ruleForm: {},
      flag: '',
      usersFlag: false,
                                                                  xueshengxingbieOptions: [],
                                                                                                                                                                        fudaoyuanxingbieOptions: [],
                                                                                                            jiaowuchuxingbieOptions: [],
                                                                                                                            };
  },
  mounted() {
    var table = this.$storage.get("sessionTable");
    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
                                            this.xueshengxingbieOptions = "男,女".split(',')
                                                                                                                this.fudaoyuanxingbieOptions = "男,女".split(',')
                                                                        this.jiaowuchuxingbieOptions = "男,女".split(',')
                                                                                  },
  methods: {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            onUpdateHandler() {
                                                                                                                                                                                                                                                                                                                                    if( 'xuesheng' ==this.flag && this.ruleForm.lianxidianhua&&(!isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
                                                                        if( 'xuesheng' ==this.flag && this.ruleForm.youxiang&&(!isEmail(this.ruleForm.youxiang))){
        this.$message.error(`邮箱应输入邮箱格式`);
        return
      }
                                                                                                                                                                                                                                                                                    if((!this.ruleForm.fudaoyuangonghao)&& 'fudaoyuan'==this.flag){
        this.$message.error('辅导员工号不能为空');
        return
      }
                                                                  if((!this.ruleForm.fudaoyuanxingming)&& 'fudaoyuan'==this.flag){
        this.$message.error('辅导员姓名不能为空');
        return
      }
                                                                  if((!this.ruleForm.mima)&& 'fudaoyuan'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
                                                                                                                                                if( 'fudaoyuan' ==this.flag && this.ruleForm.lianxidianhua&&(!isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
                                                                        if( 'fudaoyuan' ==this.flag && this.ruleForm.jiaoshiyouxiang&&(!isEmail(this.ruleForm.jiaoshiyouxiang))){
        this.$message.error(`教师邮箱应输入邮箱格式`);
        return
      }
                                                            if((!this.ruleForm.jiaowuchugonghao)&& 'jiaowuchu'==this.flag){
        this.$message.error('教务处工号不能为空');
        return
      }
                                                                  if((!this.ruleForm.mima)&& 'jiaowuchu'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
                                                                  if((!this.ruleForm.jiaowuxingming)&& 'jiaowuchu'==this.flag){
        this.$message.error('教务姓名不能为空');
        return
      }
                                                                                                                                                if( 'jiaowuchu' ==this.flag && this.ruleForm.lianxidianhua&&(!isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
                                                                        if( 'jiaowuchu' ==this.flag && this.ruleForm.jiaoshiyouxiang&&(!isEmail(this.ruleForm.jiaoshiyouxiang))){
        this.$message.error(`教师邮箱应输入邮箱格式`);
        return
      }
                                                                                                                  this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
