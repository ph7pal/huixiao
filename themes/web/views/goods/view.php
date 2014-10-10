<div class="w_960 content">
            <div class="position">
                <s class="s" title="当前位置"></s><span class="bd">您当前的位置：<a href="#">首页 </a>&gt; <a href="#">产品展示 </a>&gt; 这是产品标题</span>
            </div>
            <div class="w_960">
                <div style="margin-top: 8px;">
                    <div id="subProleft0">
                        <div id="subProleft">
                            <div class="pathDir">
                                <h4>产品信息</h4>
                            </div>

                            <div id="proDetail">
                                <!--商品图片展示 开始-->
                                <div style="padding: 8px;">
                                    <h1 style="font-size: 18px"><?php echo $info['title'];?></h1>
                                    <!--商品大图片展示 开始-->
                                    <div class="proPic">
                                        <table width="420" height="400" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td align="center" valign="middle"><a href="#"></a>
                                                    <img height="350px" src="UpFile/singlefile/20140515023216365.jpg" alt="喜力健润通胶囊" />

                                                </td>
                                            </tr>

                                            <tr>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--商品小图片图片展示 开始-->
                                    <div class="proSmall">
                                        <div class="rollBox">
                                            <div class="Cont" id="ISL_Cont">
                                                <div class="ScrCont">
                                                    <div id="List1">
                                                        <!-- 图片列表 begin -->
                                                        <ul>
                                                            <li><a href="#" title="喜力健润通胶囊" class="current">
                                                                <img alt="喜力健润通胶囊" src="UpFile/singlefile/20140606033154145.jpg" /></a></li>
                                                            <li><a href="#" title="喜力健润通胶囊">
                                                                <img alt="喜力健润通胶囊" src="UpFile/singlefile/20140606032449520.jpg" /></a></li>
                                                            <li><a href="#" title="喜力健润通胶囊">
                                                                <img alt="喜力健润通胶囊" src="UpFile/singlefile/20140606031844567.jpg" /></a></li>
                                                            <li><a href="#" title="喜力健润通胶囊">
                                                                <img alt="喜力健润通胶囊" src="UpFile/singlefile/20140606030945223.jpg" /></a></li>

                                                        </ul>
                                                        <!-- 图片列表 end -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <!--商品图片展示 开始-->
                                </div>
                                <div style="height: 10px; overflow: hidden"></div>

                                <!--产品说明 开始-->
                                <div class="proTBg">
                                    <h3>产品说明</h3>
                                    <?php echo $info['desc'];?>
                                </div>
                                <!--产品说明 结束-->
                                <!--代理需求 开始-->
                                <div class="proTBg">
                                    <h3>代理要求 </h3>
                                    <?php echo $info['desc2'];?>
                                </div>
                                <!--代理结束 结束--
                                 <!--提供支持 开始-->
                                <div class="proTBg">
                                    <h3>提供支持</h3>
                                    <?php echo $info['desc3'];?>
                                </div>
                                <!--提供支持 结束-->
                                <!--产品备注 开始-->
                                <div class="proTBg">
                                    <h3>产品备注</h3>
                                    <?php echo $info['desc4'];?>
                                </div>
                                <!--产品备注 结束-->
                                <!--联系方式 开始-->
                                <div class="proTBg">
                                    <h3>联系方式</h3>
                                    <a name="A1"></a>

                                </div>

                                <a name="lxfs" id="lxfs"></a>
                                <div id="panl1">


                                    <div class='messWarn' id="liuyanxianshi">
                                        <font>请在下方留言，提交后将自动显示联系方式 </font>
                                    </div>


                                </div>
                                <!--联系方式 结束-->
                            </div>
                        </div>
                        <div style="clear: both"></div>
                        <!--留言 开始-->
                        <div>
                            <a name="ly" id="ly"></a>
                            <div id="cntRR">
                                <div id="NewsTop2">
                                    <div id="NewsTop_tit2">
                                        <p class="hoverOn">留言显示电话</p>
                                    </div>
                                    <div id="NewsTop_cnt2">
                                        <div class="Contentbox">
                                            <h3>请认真填写你的信息和需求，好获取更好的支持。</h3>
                                            <table width="98%" align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td width="80" align="right">客户姓名：</td>
                                                    <td align="left">
                                                        <input type="text" id="txtInputer" />
                                                        <span style="color: Red">*</span></td>
                                                    <td width="80" align="right">联系电话：</td>
                                                    <td width="47%" align="left">
                                                        <input type="text" id="txtTelephone" />
                                                        <span style="color: Red">*</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">代理区域：</td>
                                                    <td valign="middle" align="left" height="29" class="style1">
                                                        <select name="ddlprovince" id="ddlprovince" style="width: 85px">
                                                        </select>
                                                        <select name="ddlcity" id="ddlcity" style="width: 85px">
                                                            <option value="">请选择</option>
                                                        </select>

                                                        <span style="color: Red">*</span>

                                                    </td>
                                                    <td align="right">团队人数：</td>
                                                    <td align="left">
                                                        <input type="text" />
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td width="11%" align="right">详细内容：<br />
                                                    </td>
                                                    <td colspan="4" align="left">
                                                        <textarea name="txtContent" rows="5" cols="56" id="txtContent" class="textMessBg" style="color: Black">我对该产品有兴趣，想代理!</textarea>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5" valign="top" align="left" height="32">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td width="11%" height="32">&nbsp;</td>
                                                                <td width="89%">
                                                                    <img src="<?php echo Yii::app()->theme->baseUrl ?>/images/tjly.gif" id="btnSubmit" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                            <div style="font-size: 12px; text-align: center; margin: 10px;">
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                        <!--留言 结束-->
                    </div>
                    <!--右侧资讯-->
                    <div id="subright">
                        <!--广告图片-->
                        <div style="margin-bottom: 8px; border: 1px solid #444">
                            <a href="#" target="_blank" title="纬达会销网礼品中心">
                                <img width="256" src="UpFile/singlefile/20140917090023718.jpg" alt="纬达会销网礼品中心" border="0" /></a>
                        </div>
                        <!--推荐产品 开始-->
                        <div class="subRNews">
                            <h3><font class="fr fontw"><a href="#" title="改善胃肠      ">更多&gt;&gt;</a></font><a href="/product/gscw" title="改善胃肠      ">改善胃肠      类产品</a></h3>
                            <div class="proCont clearfix">
                                <!--数据循环开始 ,一共4条数据-->
                                <ul>
                                    <li><a href="#" title="韩国原装进口亿生菌" target="_blank">
                                        <img src="UpFile/singlefile/20140918025601281.jpg" alt="韩国原装进口亿生菌" /><span>韩国原装进口亿生菌</span> </a></li>
                                    <li><a href="#" title="奥诺康畅卫士" target="_blank">
                                        <img src="UpFile/singlefile/20140917023041312.jpg" alt="奥诺康畅卫士" /><span>奥诺康畅卫士</span></a></li>
                                    <li><a href="#" title='“养胃之王”猴头菇多糖' target="_blank">
                                        <img src="UpFile/singlefile/20140913035727937.jpg " alt='“养胃之王”猴头菇多糖' /><span>“养胃之王”猴头菇多糖</span></a></li>
                                    <li><a href="#" title="新品水果味听装清润宝苹果味隆重上市现全国招商" target="_blank">
                                        <img src="UpFile/singlefile/20140829083043468.jpg" alt="新品水果味听装清润宝苹果味隆重上市现全国招商" /><span>新品水果味听装清润宝苹果味隆重上市现全国招商</span> </a></li>
                                </ul>
                                <!--数据循环结束-->
                            </div>
                        </div>
                        <!--推荐产品 结束-->
                        <!--广告图片 开始-->
                        <div style="margin-bottom: 8px; border: 1px solid #444">
                            <a href="#" target="_blank" title="招商直通车-中国老年健康产业全国巡回品牌展">
                                <img width="256" src="UpFile/singlefile/20140512142532093.gif" alt="招商直通车-中国老年健康产业全国巡回品牌展" border="0"></a>
                        </div>
                        <div style="margin-bottom: 8px; border: 1px solid #444">
                            <a href="#" target="_blank" title="中国康远本草健康连锁管理机构">
                                <img width="256" src="UpFile/singlefile/20130327141424281.gif" alt="中国康远本草健康连锁管理机构" border="0" /></a>
                        </div>
                        <div style="margin-bottom: 8px; border: 1px solid #444">
                            <a href="#" target="_blank" title="北京金华汉新技术有限责任公司 ">
                                <img width="256" src="UpFile/singlefile/20131217152405581.gif" alt="北京金华汉新技术有限责任公司 " border="0"></a>
                        </div>
                        <!--广告图片 结束-->
                        <div class="subRNews">
                            <h3><span style="float: right; font-weight: normal"><a href="/company/">更多&gt;&gt;</a></span>最新加入公司</h3>
                            <ul>
                                <li>·<a href="/company/18341" title="深圳市龙电安防产品有限公司" target="_blank">深圳市龙电安防产品有限公司</a><span style="margin-left: 10px;"></span></li>
                                <li>·<a href="/company/18340" title="UGG雪地靴高仿鞋批发工厂一手货源" target="_blank">UGG雪地靴高仿鞋批发工厂一手货源</a><span style="margin-left: 10px;"></span></li>
                                <li>·<a href="/company/18339" title="顺德区容桂得利亚电器厂" target="_blank">顺德区容桂得利亚电器厂</a><span style="margin-left: 10px;"></span></li>
                                <li>·<a href="/company/18338" title="任县宝久机械厂" target="_blank">任县宝久机械厂</a><span style="margin-left: 10px;"></span></li>
                                <li>·<a href="/company/18337" title="焦作住建局管理中心" target="_blank">焦作住建局管理中心</a><span style="margin-left: 10px;"></span></li>
                                <li>·<a href="/company/18334" title="深圳百发科技有限公司" target="_blank">深圳百发科技有限公司</a><span style="margin-left: 10px;"></span></li>
                                <li>·<a href="/company/18331" title="苏州富磊电器有限公司" target="_blank">苏州富磊电器有限公司</a><span style="margin-left: 10px;"></span></li>
                                <li>·<a href="/company/18330" title="河北保定市众邦电器有限公司" target="_blank">河北保定市众邦电器有限公司</a><span style="margin-left: 10px;"></span></li>
                                <li>·<a href="/company/18329" title="杭州金多科技有限公司" target="_blank">杭州金多科技有限公司</a><span style="margin-left: 10px;"></span></li>
                                <li>·<a href="/company/18328" title="菏泽中禾健元生物科技有限公司" target="_blank">菏泽中禾健元生物科技有限公司</a><span style="margin-left: 10px;"></span></li>
                            </ul>
                        </div>
                        <!--广告图片-->
                        <div style="margin-bottom: 8px; border: 1px solid #444">
                            <a href="#" target="_blank" title="湖北国创伟业生物科技有限公司">
                                <img width="256" src="UpFile/singlefile/20130509152922943.gif" alt="湖北国创伟业生物科技有限公司" border="0"></a>
                        </div>
                        <div style="margin-bottom: 8px; border: 1px solid #444">
                            <a href="#" target="_blank" title="济南三木堂生物技术有限公司">
                                <img width="256" src="UpFile/singlefile/20140422134702757.gif" alt="济南三木堂生物技术有限公司" border="0"></a>
                        </div>
                        <div style="margin-bottom: 8px; border: 1px solid #444">
                            <a href="#" target="_blank" title="威海兆康生物科技有限公司">
                                <img width="256" src="UpFile/singlefile/20140409215922401.gif" alt="威海兆康生物科技有限公司" border="0"></a>
                        </div>

                        <div class="subRNews">
                            <h3><span style="float: right; font-weight: normal"><a href="/News/">更多&gt;&gt;</a></span>最新资讯</h3>
                            <ul>

                                <li style="height: 22px; line-height: 22px; width: 200px; overflow: hidden;">·<a href="/News/Details/14817" title="人康总部招聘招商培训讲师" target="_blank">人康总部招聘招商培训讲师</a></li>
                                <li style="height: 22px; line-height: 22px; width: 200px; overflow: hidden;">·<a href="/News/Details/14816" title="第十一届中国老年健康产业全国巡回品牌展暨招商直通车（南京站）" target="_blank">第十一届中国老年健康产业全国巡回品牌展暨招商直通车（南京站）</a></li>
                                <li style="height: 22px; line-height: 22px; width: 200px; overflow: hidden;">·<a href="/News/Details/14814" title="中国第一会前会将于广州召开" target="_blank">中国第一会前会将于广州召开</a></li>
                                <li style="height: 22px; line-height: 22px; width: 200px; overflow: hidden;">·<a href="/News/Details/14813" title="招商直通车，10届积累，只为打造健康产业商机孵化专业平台！更落地，更有效，更快捷！" target="_blank">招商直通车，10届积累，只为打造健康产业商机孵化专业平台！更落地，更有效，更快捷！</a></li>
                                <li style="height: 22px; line-height: 22px; width: 200px; overflow: hidden;">·<a href="/News/Details/14812" title="2014第20届郑交会营养保健品展招展进入收官阶段" target="_blank">2014第20届郑交会营养保健品展招展进入收官阶段</a></li>
                                <li style="height: 22px; line-height: 22px; width: 200px; overflow: hidden;">·<a href="/News/Details/14810" title="一房难求 内蒙药交会逆袭回十年前" target="_blank">一房难求 内蒙药交会逆袭回十年前</a></li>
                                <li style="height: 22px; line-height: 22px; width: 200px; overflow: hidden;">·<a href="/News/Details/14809" title="中国最大保健食品展：韩国政府大力支持  中韩展会贸易火爆  " target="_blank">中国最大保健食品展：韩国政府大力支持  中韩展会贸易火爆  </a></li>
                                <li style="height: 22px; line-height: 22px; width: 200px; overflow: hidden;">·<a href="/News/Details/14808" title="从“口福”到“幸福” 健康是怎样吃出来的" target="_blank">从“口福”到“幸福” 健康是怎样吃出来的</a></li>
                                <li style="height: 22px; line-height: 22px; width: 200px; overflow: hidden;">·<a href="/News/Details/14806" title="向世界传播中国原产地地理标志文化" target="_blank">向世界传播中国原产地地理标志文化</a></li>
                                <li style="height: 22px; line-height: 22px; width: 200px; overflow: hidden;">·<a href="/News/Details/14805" title="15突破万亿 五大优势新闻稿" target="_blank">15突破万亿 五大优势新闻稿</a></li>

                            </ul>
                        </div>

                    </div>
                    <div style="clear: both"></div>
                </div>
            </div>

        </div>