<template>
  <div>
    <div class="container">
      <div class="login-form" style="backgroundColor:rgba(255,255,255,.5);borderRadius:20px">
        <h1 class="h1" style="color:#000;fontSize:26px;">高校奖学金管理系统注册</h1>
		<el-form ref="rgsForm" class="rgs-form" :model="rgsForm" label-width="120px">
															<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">学生账号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.xueshengzhanghao" class="input" type="text" placeholder="学生账号">
			   </div>
			 </div> -->
			<el-form-item label="学生账号" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.xueshengzhanghao" autocomplete="off" placeholder="学生账号" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">学生姓名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.xueshengxingming" class="input" type="text" placeholder="学生姓名">
			   </div>
			 </div> -->
			<el-form-item label="学生姓名" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.xueshengxingming" autocomplete="off" placeholder="学生姓名" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="text" />
			</el-form-item>
																					<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">专业</div>
			   <div class="input-container">
			     <input v-model="ruleForm.zhuanye" class="input" type="text" placeholder="专业">
			   </div>
			 </div> -->
			<el-form-item label="专业" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.zhuanye" autocomplete="off" placeholder="专业" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">联系电话</div>
			   <div class="input-container">
			     <input v-model="ruleForm.lianxidianhua" class="input" type="text" placeholder="联系电话">
			   </div>
			 </div> -->
			<el-form-item label="联系电话" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.lianxidianhua" autocomplete="off" placeholder="联系电话" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">邮箱</div>
			   <div class="input-container">
			     <input v-model="ruleForm.youxiang" class="input" type="text" placeholder="邮箱">
			   </div>
			 </div> -->
			<el-form-item label="邮箱" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.youxiang" autocomplete="off" placeholder="邮箱" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">年级</div>
			   <div class="input-container">
			     <input v-model="ruleForm.nianji" class="input" type="text" placeholder="年级">
			   </div>
			 </div> -->
			<el-form-item label="年级" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.nianji" autocomplete="off" placeholder="年级" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">班级</div>
			   <div class="input-container">
			     <input v-model="ruleForm.banji" class="input" type="text" placeholder="班级">
			   </div>
			 </div> -->
			<el-form-item label="班级" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.banji" autocomplete="off" placeholder="班级" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">家庭地址</div>
			   <div class="input-container">
			     <input v-model="ruleForm.jiatingdizhi" class="input" type="text" placeholder="家庭地址">
			   </div>
			 </div> -->
			<el-form-item label="家庭地址" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.jiatingdizhi" autocomplete="off" placeholder="家庭地址" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='xuesheng'" class="input-group">
			   <div class="label">家庭情况</div>
			   <div class="input-container">
			     <input v-model="ruleForm.jiatingqingkuang" class="input" type="text" placeholder="家庭情况">
			   </div>
			 </div> -->
			<el-form-item label="家庭情况" class="input" v-if="tableName=='xuesheng'">
			  <el-input v-model="ruleForm.jiatingqingkuang" autocomplete="off" placeholder="家庭情况" type="text" />
			</el-form-item>
																								<!-- <div v-if="tableName=='fudaoyuan'" class="input-group">
			   <div class="label">辅导员工号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.fudaoyuangonghao" class="input" type="text" placeholder="辅导员工号">
			   </div>
			 </div> -->
			<el-form-item label="辅导员工号" class="input" v-if="tableName=='fudaoyuan'">
			  <el-input v-model="ruleForm.fudaoyuangonghao" autocomplete="off" placeholder="辅导员工号" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='fudaoyuan'" class="input-group">
			   <div class="label">辅导员姓名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.fudaoyuanxingming" class="input" type="text" placeholder="辅导员姓名">
			   </div>
			 </div> -->
			<el-form-item label="辅导员姓名" class="input" v-if="tableName=='fudaoyuan'">
			  <el-input v-model="ruleForm.fudaoyuanxingming" autocomplete="off" placeholder="辅导员姓名" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='fudaoyuan'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='fudaoyuan'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="text" />
			</el-form-item>
																					<!-- <div v-if="tableName=='fudaoyuan'" class="input-group">
			   <div class="label">联系电话</div>
			   <div class="input-container">
			     <input v-model="ruleForm.lianxidianhua" class="input" type="text" placeholder="联系电话">
			   </div>
			 </div> -->
			<el-form-item label="联系电话" class="input" v-if="tableName=='fudaoyuan'">
			  <el-input v-model="ruleForm.lianxidianhua" autocomplete="off" placeholder="联系电话" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='fudaoyuan'" class="input-group">
			   <div class="label">教师邮箱</div>
			   <div class="input-container">
			     <input v-model="ruleForm.jiaoshiyouxiang" class="input" type="text" placeholder="教师邮箱">
			   </div>
			 </div> -->
			<el-form-item label="教师邮箱" class="input" v-if="tableName=='fudaoyuan'">
			  <el-input v-model="ruleForm.jiaoshiyouxiang" autocomplete="off" placeholder="教师邮箱" type="text" />
			</el-form-item>
																								<!-- <div v-if="tableName=='jiaowuchu'" class="input-group">
			   <div class="label">教务处工号</div>
			   <div class="input-container">
			     <input v-model="ruleForm.jiaowuchugonghao" class="input" type="text" placeholder="教务处工号">
			   </div>
			 </div> -->
			<el-form-item label="教务处工号" class="input" v-if="tableName=='jiaowuchu'">
			  <el-input v-model="ruleForm.jiaowuchugonghao" autocomplete="off" placeholder="教务处工号" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='jiaowuchu'" class="input-group">
			   <div class="label">密码</div>
			   <div class="input-container">
			     <input v-model="ruleForm.mima" class="input" type="text" placeholder="密码">
			   </div>
			 </div> -->
			<el-form-item label="密码" class="input" v-if="tableName=='jiaowuchu'">
			  <el-input v-model="ruleForm.mima" autocomplete="off" placeholder="密码" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='jiaowuchu'" class="input-group">
			   <div class="label">教务姓名</div>
			   <div class="input-container">
			     <input v-model="ruleForm.jiaowuxingming" class="input" type="text" placeholder="教务姓名">
			   </div>
			 </div> -->
			<el-form-item label="教务姓名" class="input" v-if="tableName=='jiaowuchu'">
			  <el-input v-model="ruleForm.jiaowuxingming" autocomplete="off" placeholder="教务姓名" type="text" />
			</el-form-item>
																					<!-- <div v-if="tableName=='jiaowuchu'" class="input-group">
			   <div class="label">联系电话</div>
			   <div class="input-container">
			     <input v-model="ruleForm.lianxidianhua" class="input" type="text" placeholder="联系电话">
			   </div>
			 </div> -->
			<el-form-item label="联系电话" class="input" v-if="tableName=='jiaowuchu'">
			  <el-input v-model="ruleForm.lianxidianhua" autocomplete="off" placeholder="联系电话" type="text" />
			</el-form-item>
												<!-- <div v-if="tableName=='jiaowuchu'" class="input-group">
			   <div class="label">教师邮箱</div>
			   <div class="input-container">
			     <input v-model="ruleForm.jiaoshiyouxiang" class="input" type="text" placeholder="教师邮箱">
			   </div>
			 </div> -->
			<el-form-item label="教师邮箱" class="input" v-if="tableName=='jiaowuchu'">
			  <el-input v-model="ruleForm.jiaoshiyouxiang" autocomplete="off" placeholder="教师邮箱" type="text" />
			</el-form-item>
																																																			<el-button class="btn" type="primary" @click="login()">注册</el-button>
		</el-form>
      </div>
      <!-- <div class="nk-navigation">
        <a href="#">
          <div @click="login()">注册</div>
        </a>
      </div> -->
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      ruleForm: {
              },
      tableName:"",
      rules: {}
    };
  },
  mounted(){
    let table = this.$storage.get("loginTable");
    this.tableName = table;
  },
  methods: {
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 注册
    login() {
                                                                                                                                                                                                                                                                                                                                    if(`xuesheng` == this.tableName && this.ruleForm.lianxidianhua&&(!this.$validate.isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
                                                                        if(`xuesheng` == this.tableName && this.ruleForm.youxiang&&(!this.$validate.isEmail(this.ruleForm.youxiang))){
        this.$message.error(`邮箱应输入邮件格式`);
        return
      }
                                                                                                                                                                                                                                                                                    if((!this.ruleForm.fudaoyuangonghao) && `fudaoyuan` == this.tableName){
        this.$message.error(`辅导员工号不能为空`);
        return
      }
                                                                  if((!this.ruleForm.fudaoyuanxingming) && `fudaoyuan` == this.tableName){
        this.$message.error(`辅导员姓名不能为空`);
        return
      }
                                                                  if((!this.ruleForm.mima) && `fudaoyuan` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                                                                                                                if(`fudaoyuan` == this.tableName && this.ruleForm.lianxidianhua&&(!this.$validate.isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
                                                                        if(`fudaoyuan` == this.tableName && this.ruleForm.jiaoshiyouxiang&&(!this.$validate.isEmail(this.ruleForm.jiaoshiyouxiang))){
        this.$message.error(`教师邮箱应输入邮件格式`);
        return
      }
                                                            if((!this.ruleForm.jiaowuchugonghao) && `jiaowuchu` == this.tableName){
        this.$message.error(`教务处工号不能为空`);
        return
      }
                                                                  if((!this.ruleForm.mima) && `jiaowuchu` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                                  if((!this.ruleForm.jiaowuxingming) && `jiaowuchu` == this.tableName){
        this.$message.error(`教务姓名不能为空`);
        return
      }
                                                                                                                                                if(`jiaowuchu` == this.tableName && this.ruleForm.lianxidianhua&&(!this.$validate.isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
                                                                        if(`jiaowuchu` == this.tableName && this.ruleForm.jiaoshiyouxiang&&(!this.$validate.isEmail(this.ruleForm.jiaoshiyouxiang))){
        this.$message.error(`教师邮箱应输入邮件格式`);
        return
      }
                                                                                                                  this.$http({
        url: `${this.tableName}/register`,
        method: "post",
        data:this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "注册成功",
            type: "success",
            duration: 1500,
            onClose: () => {
              this.$router.replace({ path: "/login" });
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
	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked .el-radio__inner {
		border-color: #00c292;
		background: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.el-radio__input.is-checked+.el-radio__label {
		color: #00c292;
	}

	.h1 {
		margin-top: 10px;
	}

	body {
		padding: 0;
		margin: 0;
	}

	// .container {
 //    min-height: 100vh;
 //    text-align: center;
 //    // background-color: #00c292;
 //    padding-top: 20vh;
 //    background-image: url(../assets/img/bg.jpg);
 //    background-size: 100% 100%;
 //    opacity: 0.9;
 //  }

	// .login-form:before {
	// 	vertical-align: middle;
	// 	display: inline-block;
	// }

	// .login-form {
	// 	max-width: 500px;
	// 	padding: 20px 0;
	// 	width: 80%;
	// 	position: relative;
	// 	margin: 0 auto;

	// 	.label {
	// 		min-width: 60px;
	// 	}

	// 	.input-group {
	// 		max-width: 500px;
	// 		padding: 20px 0;
	// 		width: 80%;
	// 		position: relative;
	// 		margin: 0 auto;
	// 		display: flex;
	// 		align-items: center;

	// 		.input-container {
	// 			display: inline-block;
	// 			width: 100%;
	// 			text-align: left;
	// 			margin-left: 10px;
	// 		}

	// 		.icon {
	// 			width: 30px;
	// 			height: 30px;
	// 		}

	// 		.input {
	// 			position: relative;
	// 			z-index: 2;
	// 			float: left;
	// 			width: 100%;
	// 			margin-bottom: 0;
	// 			box-shadow: none;
	// 			border-top: 0px solid #ccc;
	// 			border-left: 0px solid #ccc;
	// 			border-right: 0px solid #ccc;
	// 			border-bottom: 1px solid #ccc;
	// 			padding: 0px;
	// 			resize: none;
	// 			border-radius: 0px;
	// 			display: block;
	// 			width: 100%;
	// 			height: 34px;
	// 			padding: 6px 12px;
	// 			font-size: 14px;
	// 			line-height: 1.42857143;
	// 			color: #555;
	// 			background-color: #fff;
	// 		}

	// 	}
	// }

	.nk-navigation {
		margin-top: 15px;

		a {
			display: inline-block;
			color: #fff;
			background: rgba(255, 255, 255, .2);
			width: 100px;
			height: 50px;
			border-radius: 30px;
			text-align: center;
			display: flex;
			align-items: center;
			margin: 0 auto;
			justify-content: center;
			padding: 0 20px;
		}

		.icon {
			margin-left: 10px;
			width: 30px;
			height: 30px;
		}
	}

	.register-container {
		margin-top: 10px;

		a {
			display: inline-block;
			color: #fff;
			max-width: 500px;
			height: 50px;
			border-radius: 30px;
			text-align: center;
			display: flex;
			align-items: center;
			margin: 0 auto;
			justify-content: center;
			padding: 0 20px;

			div {
				margin-left: 10px;
			}
		}
	}
	
	.container {
		background-image: url("http://codegen.caihongy.cn/20201125/3cb57c556dc94e948f264d8d08687463.jpg");
		height: 100vh;
		background-position: center center;
		background-size: cover;
		background-repeat: no-repeat;
	
		.login-form {
			right: 50%;
			top: 50%;
			height: auto;
			transform: translate3d(50%, -50%, 0);
			border-radius: 10px;
			background-color: rgba(255,255,255,.5);
			width: 420px;
			padding: 30px 30px 40px 30px;
			font-size: 14px;
			font-weight: 500;
			
			.h1 {
				margin: 0;
				text-align: center;
				line-height: 54px;
			    font-size: 24px;
			    color: #000;
			}
				
			.rgs-form {
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				
				.input {
					width: 100%;
					
					& /deep/ .el-form-item__label {
						line-height: 40px;
						color: 14px;
						font-size: #606266;
					}
					
					& /deep/ .el-input__inner {
						height: 40px;
						color: rgba(15, 15, 16, 1);
						font-size: 14px;
						border-width: 1px;
						border-style: solid;
						border-color: #606266;
						border-radius: 20px;
						background-color: rgba(248, 241, 241, 0.18);
					}
				}
				
				.btn {
					width: 88px;
					height: 44px;
					color: rgba(26, 27, 28, 1);
					font-size: 14px;
					border-width: 1px;
					border-style: solid;
					border-color: rgba(64, 158, 255, 1);
					border-radius: 20px;
					background-color: rgba(84, 221, 231, 1);
				}
			}
		}
	}
</style>
