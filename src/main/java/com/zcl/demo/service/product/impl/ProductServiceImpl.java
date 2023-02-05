package com.zcl.demo.service.product.impl;

import com.github.pagehelper.PageHelper;
import com.zcl.demo.dao.product.ProductDao;
import com.zcl.demo.model.product.Product;
import com.zcl.demo.model.user.User;
import com.zcl.demo.po.ProducePo;
import com.zcl.demo.po.SalePo;
import com.zcl.demo.po.Series;
import com.zcl.demo.service.product.ProductService;
import com.zcl.demo.vo.product.EcharsVo;
import com.zcl.demo.vo.product.ProduceVO;
import com.zcl.demo.vo.product.SaleVo;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author zcl
 * @create 2021/6/5 17:03
 * @desc 商品实现
 **/
@Service
public class ProductServiceImpl implements ProductService {
    private final static String[] MOTHS = {"一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"};

    private ProductDao productDao;

    public ProductServiceImpl(ProductDao productDao) {
        this.productDao = productDao;
    }

    /**
     * 分页展示商品
     *
     * @param page
     * @param limit
     * @param pName
     * @return
     */
    @Override
    public List<Product> list(int page, int limit, String pId, String pName) {
        List<Product> products = null;
        PageHelper.startPage(page, limit);
        if (StringUtils.isEmpty(pId) && StringUtils.isEmpty(pName)) {
            products = productDao.queryAll();
        } else if (StringUtils.isEmpty(pId) && !StringUtils.isEmpty(pName)) {
            products = productDao.queryProductByName(pName);
        } else if (!StringUtils.isEmpty(pId) && StringUtils.isEmpty(pName)) {
            products = productDao.queryProductByPid(pId);
        } else {
            products = productDao.queryProByNameAndId(pId, pName);
        }
        return products;
    }

    /**
     * 查询销售量
     *
     * @param pId
     * @return
     */
    @Override
    public SalePo querySalePrcByPid(String pId) {
        SalePo salePo = productDao.querySalePrcByPid(pId);
        return salePo;
    }

    /**
     * 查询产量
     *
     * @param pId
     * @return
     */
    @Override
    public ProducePo queryPrdNumByPid(String pId) {
        ProducePo producePo = productDao.queryPrdNumByPid(pId);

        return producePo;
    }

    /**
     * 初始化char
     *
     * @param pId
     * @return
     */
    @Override
    public EcharsVo initPrdSalePrcChars(String pId, String pName) {
        EcharsVo echarsVo = new EcharsVo();
        //查询销售量
        SalePo salePo = productDao.querySalePrcByPid(pId);
        //查询产量
        ProducePo producePo = productDao.queryPrdNumByPid(pId);
        String[] saleNum = salePoToArray(salePo);
        String[] prdNum = prdPoToArray(producePo);
        List<Series> seriesList = new ArrayList<>();
        seriesList.add(new Series("销售量(件)", saleNum));
        seriesList.add(new Series("生产量(件)", prdNum));
        //x轴数据维护
        echarsVo.setXAxisData(MOTHS);
        //放销量和产量
        echarsVo.setSeriesList(seriesList);
        //商品名称
        echarsVo.setPName(pName);
        return echarsVo;
    }

    /**
     * 动态展示商品销量
     *
     * @param page
     * @param limit
     * @param pName
     * @return
     */
    @Override
    public List<SaleVo> listSale(int page, int limit, String pName) {
        List<SaleVo> saleVos = null;
        PageHelper.startPage(page, limit);
        if (StringUtils.isEmpty(pName)) {
            saleVos = productDao.queryAllSale();
        } else {
            saleVos = productDao.querySaleByName(pName);
        }
        return saleVos;
    }

    /**
     * 动态展示商品产量
     *
     * @param page
     * @param limit
     * @param pName
     * @return
     */
    @Override
    public List<ProduceVO> listProduce(int page, int limit, String pName) {
        List<ProduceVO> produceVOS = null;
        PageHelper.startPage(page, limit);
        if (StringUtils.isEmpty(pName)) {
            produceVOS = productDao.queryAllProduce();
        } else {
            produceVOS = productDao.queryPrdNumByName(pName);
        }
        return produceVOS;
    }

    /**
     * 根据id查询商品名称
     *
     * @param pId
     * @return
     */
    @Override
    public String queryPnameByPid(String pId) {
        return productDao.queryPnameByPid(pId);
    }

    /**
     * 新增商品
     *
     * @param product
     */
    @Override
    public boolean addProduct(Product product) {
        String s = productDao.queryPnameByPid(product.getpId());
        List<ProduceVO> produceVOS = productDao.queryAllProduce();
        List<ProduceVO> collect = produceVOS.stream().filter(produceVO -> produceVO.getPName().equals(product.getpName())).collect(Collectors.toList());
        if (!StringUtils.isEmpty(s) || !collect.isEmpty()) {
            return false;
        }
        productDao.addProduct(product);
        return true;
    }

    /**
     * 删除商品
     *
     * @param pIds
     */
    @Override
    public void deleteProductById(String[] pIds) {
        productDao.deleteProductById(pIds);
    }

    @Override
    public boolean updateProduct(Product product) {
        try {
            productDao.updateProduct(product);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Product queryProductById(String pid) {
        Product product = productDao.queryProductById(pid);
        return product;
    }


    /**
     * 销售po转换成字符串数组
     *
     * @param
     * @return
     */
    public String[] salePoToArray(SalePo salePo) {
        Field[] fields = salePo.getClass().getDeclaredFields();
        String[] reslut = new String[fields.length];
        try {
            for (int i = 0; i < fields.length; i++) {
                //设置允许通过反射访问私有变量
                fields[i].setAccessible(true);
                //获取字段的值
                String value = fields[i].get(salePo).toString();
                reslut[i] = value;
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return reslut;
    }


    /**
     * 生产po转换成字符串数组
     *
     * @param
     * @return
     */
    public String[] prdPoToArray(ProducePo producePo) {
        Field[] fields = producePo.getClass().getDeclaredFields();
        String[] reslut = new String[fields.length];
        try {
            for (int i = 0; i < fields.length; i++) {
                //设置允许通过反射访问私有变量
                fields[i].setAccessible(true);
                //获取字段的值
                String value = fields[i].get(producePo).toString();
                reslut[i] = value;
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return reslut;
    }
}
