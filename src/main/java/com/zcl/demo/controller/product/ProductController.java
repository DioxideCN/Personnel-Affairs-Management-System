package com.zcl.demo.controller.product;

import com.github.pagehelper.PageInfo;
import com.sun.corba.se.spi.ior.ObjectKey;
import com.zcl.demo.common.annotation.PointLog;
import com.zcl.demo.common.exception.ZfException;
import com.zcl.demo.common.response.CommonResponse;
import com.zcl.demo.common.status.StatusCode;
import com.zcl.demo.model.product.Product;
import com.zcl.demo.po.ProducePo;
import com.zcl.demo.po.SalePo;
import com.zcl.demo.po.Series;
import com.zcl.demo.service.product.ProductService;
import com.zcl.demo.vo.product.EcharsVo;
import com.zcl.demo.vo.product.ProduceVO;
import com.zcl.demo.vo.product.SaleVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Field;
import java.util.*;

/**
 * @author zcl
 * @create 2021/6/5 16:48
 * @desc 商品controller
 **/
@Controller
@RequestMapping(value = "/productController")
public class ProductController {
    private ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    String url = "/product";

    /**
     * 跳转商品页
     *
     * @return
     */
    @PointLog(id = "7", value = "商品列表")
    @RequestMapping(value = "/showlist.html", method = RequestMethod.GET)
    public String showListPage() {
        return url + "/list";
    }

    /**
     * 动态查询
     *
     * @param page
     * @param limit
     * @param pName
     * @return
     */
    @RequestMapping(value = "/showlist.json", method = RequestMethod.POST)
    @ResponseBody
    public Map showList(@RequestParam(required = false, defaultValue = "1") int page,
                        @RequestParam(required = false) int limit, String pId, String pName) {
        List<Product> list = productService.list(page, limit, pId, pName);
        // 使用pageInfo包装查询
        PageInfo<Product> rolePageInfo = new PageInfo<>(list);
        Map map = CommonResponse.setPageResponse(rolePageInfo.getList(), rolePageInfo.getTotal(), StatusCode.SUCCESS.getName(), "查询成功", true);
        return map;
    }

    /**
     * 根据商品id展示商品销售产量关系图
     *
     * @param pId
     * @return
     */
    @RequestMapping(value = "/initPrdSalePrcChars.json", method = RequestMethod.GET)
    @ResponseBody
    public Map initPrdSalePrcChars(String pId) {
        Map<String, Object> map = new HashMap<>();
        if (StringUtils.isEmpty(pId)) {
            map = CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "查询内容不能为空！", false);
            return map;
        }
        //查询商品名称
        String pName = productService.queryPnameByPid(pId);
        if (StringUtils.isEmpty(pName)) {
            map = CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "该商品不存在！", false);
            return map;
        }
        EcharsVo echarsVo = productService.initPrdSalePrcChars(pId, pName);
        map = CommonResponse.setResponseData(echarsVo, StatusCode.SUCCESS.getCode(), "加载成功", true);
        return map;
    }

    /**
     * 跳转至销量详情界面
     *
     * @return
     */
    @PointLog(id = "9", value = "商品销售详情")
    @RequestMapping(value = "/showSalePage.html")
    public String showSalePage() {
        return url + "/sale/list";
    }

    /**
     * 跳转至产量详情界面
     *
     * @return
     */
    @PointLog(id = "10", value = "商品生产详情")
    @RequestMapping(value = "/showProPage.html")
    public String showProPage() {
        return url + "/produce/list";
    }

    /**
     * 动态查询销售量
     *
     * @param page
     * @param limit
     * @param pName
     * @return
     */
    @RequestMapping(value = "/listSale.json", method = RequestMethod.POST)
    @ResponseBody
    public Map listSale(@RequestParam(required = false, defaultValue = "1") int page,
                        @RequestParam(required = false) int limit, String pName) {
        List<SaleVo> list = productService.listSale(page, limit, pName);
        // 使用pageInfo包装查询
        PageInfo<SaleVo> rolePageInfo = new PageInfo<>(list);
        Map map = CommonResponse.setPageResponse(rolePageInfo.getList(), rolePageInfo.getTotal(), StatusCode.SUCCESS.getName(), "查询成功", true);
        return map;
    }

    /**
     * 动态查询产量
     *
     * @param page
     * @param limit
     * @param pName
     * @return
     */
    @RequestMapping(value = "/listProduce.json", method = RequestMethod.POST)
    @ResponseBody
    public Map listProduce(@RequestParam(required = false, defaultValue = "1") int page,
                           @RequestParam(required = false) int limit, String pName) {
        List<ProduceVO> list = productService.listProduce(page, limit, pName);
        // 使用pageInfo包装查询
        PageInfo<ProduceVO> rolePageInfo = new PageInfo<>(list);
        Map map = CommonResponse.setPageResponse(rolePageInfo.getList(), rolePageInfo.getTotal(), StatusCode.SUCCESS.getName(), "查询成功", true);
        return map;
    }

    /**
     * 跳转新增界面
     *
     * @return
     */
    @RequestMapping(value = "/addPage.html", method = RequestMethod.GET)
    public String addPage() {
        return url + "/add";
    }

    /**
     * 添加事件
     *
     * @param product
     * @return
     */
    @RequestMapping(value = "/addProduct.json", method = RequestMethod.POST)
    @ResponseBody
    public Map addProduct(Product product) {
        Map<String, Object> map = new HashMap<>();
        if (StringUtils.isEmpty(product)) {
            map = CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "该内容不能为空！", false);
            return map;
        }
        boolean b = productService.addProduct(product);
        if (false == b) {
            map = CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "商品编号或名称已被注册！", false);
            return map;
        }
        map = CommonResponse.setResponseData(null, StatusCode.SUCCESS.getCode(), "新增成功", true);
        return map;
    }

    /**
     * 跳转编辑界面
     *
     * @return
     */
    @RequestMapping(value = "/updatePage.html", method = RequestMethod.GET)
    public String updatePage(Model model, String pId) {
        Product product=productService.queryProductById(pId);
        model.addAttribute("product",product);
        return url + "/update";
    }

    @PostMapping("/updateProduct.json")
    @ResponseBody
    public Map updateProduct(Product product) {
        if (StringUtils.isEmpty(product)) {
            throw new ZfException("商品不能为空");
        }
        boolean flag = productService.updateProduct(product);
        if(flag==true){
            return CommonResponse.setResponseData(null, StatusCode.SUCCESS.getCode(), "新增成功", true);
        }else{
            throw new ZfException("更新失败");
        }
    }

    /**
     * 跳转详情界面
     *
     * @return
     */
    @RequestMapping(value = "/detailPage.html", method = RequestMethod.GET)
    public String detailPage(Model model, String Pid) {
        return url + "/detail";
    }

    /**
     * 根据pID删除
     *
     * @param pIds
     * @return
     */
    @RequestMapping(value = "/deleteProductById.json", method = RequestMethod.POST)
    @ResponseBody
    public Map deleteProductById(@RequestBody String[] pIds) {
        Map<String, Object> map = new HashMap<>();
        try {
            productService.deleteProductById(pIds);
            map = CommonResponse.setResponseData(null, StatusCode.SUCCESS.getCode(), "删除成功！", true);
        } catch (Exception e) {
            e.printStackTrace();
            map = CommonResponse.setResponseData(null, StatusCode.FAIL.getCode(), "删除失败！", false);
        } finally {
            return map;
        }

    }
}
