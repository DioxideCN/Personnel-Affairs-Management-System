package com.zcl.demo.dao.product;

import com.zcl.demo.model.product.Product;
import com.zcl.demo.po.ProducePo;
import com.zcl.demo.po.SalePo;
import com.zcl.demo.vo.product.ProduceVO;
import com.zcl.demo.vo.product.SaleVo;
import org.apache.ibatis.annotations.Param;
import org.assertj.core.error.ShouldHaveAtLeastOneElementOfType;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author zcl
 * @create 2021/6/5 17:06
 * @desc 商品dao层
 **/
@Component
public interface ProductDao {
    /**
     * 分页展示商品
     * @return
     */
    List<Product> queryAll();

    /**
     * 根据name模糊查询商品
     * @param pName
     * @return
     */
    List<Product> queryProductByName(String pName);

    /**
     * 查询销售量
     * @param pId
     * @return
     */
    SalePo querySalePrcByPid(String pId);

    /**
     * 查询产量
     * @param pId
     */
    ProducePo queryPrdNumByPid(String pId);

    /**
     * 展示所有销量
     * @return
     */
    List<SaleVo> queryAllSale();

    /**
     * 展示销量根据商品名称
     * @param pName
     * @return
     */
    List<SaleVo> querySaleByName(String pName);

    /**
     * 展示所有产量
     * @return
     */
    List<ProduceVO> queryAllProduce();

    /**
     * 根据名称展示产量
     * @param pName
     * @return
     */
    List<ProduceVO> queryPrdNumByName(String pName);

    /**
     * 根据商品id查询名称
     * @param pId
     */
    String queryPnameByPid(String pId);

    /**
     * 根据id查询商品
     * @param pId
     * @return
     */
    List<Product> queryProductByPid(String pId);

    /**
     * 根据pId、name查询
     * @param pId
     * @param pName
     * @return
     */
    List<Product> queryProByNameAndId(String pId,String pName);

    /**
     * 新增商品
     * @param product
     */
    void addProduct(Product product);

    /**
     * 删除商品
     * @param pIds
     */
    void deleteProductById(@Param("pIds") String[] pIds);

    /**
     * 更新商品
     * @param product
     */
    void updateProduct(Product product);

    /**
     * 根据ID差商品
     * @param pid
     * @return
     */
    Product queryProductById(String pid);
}
