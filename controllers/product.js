// Import function from Product Model
const { getProducts, getOrderedProducts, getOrdersByEmail, getOrderByEmailProductId, getOrderByEmailProductIdPaymentStatus, getProductById, getProductByIdforVmodel, getOrderByOrderId, getOrderWithSelect, getPostedAmountByKebeleAndName, insertProduct, insertOrder, updateProductById, updateProductInMarketById, addProductInToMarket, updateProductByIdforCartConfirmation, updateOrderByOrderId, updateOrderByProductIdAndEmail, updateOrderforPayment, rollBackProductInToStore, rollBackAmount, rollBackProductAmountInMarket, editProductById, updateOrderById, updateProductByEmailProducNameAndKebele, editProductByProductIdforMarket, rejectProductforMarketByProductId, updateProductAmountByProductId, activateFarmerProduct, deleteProductById, deleteUserById, deleteOrderById, deleteOrderByKebeleAndId, deleteOrderByEmail } = require("../models/productModel.js");

// Get All Products
 const showProducts = async (req, res) => {

    getProducts((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showOrderedProducts = async (req, res) => {

    
    getOrderedProducts((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

// Get All Orders
 const showOrdersByEmail = async (req, res) => {
    
    getOrdersByEmail((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


const showOrderByEmailProductId = async (req, res) => {
    getOrderByEmailProductId(req.params.email, req.params.id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showOrderByEmailProductIdPaymentStatus = async (req, res) => {
    getOrderByEmailProductIdPaymentStatus(req.params.email, req.params.id, req.params.payment, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

 const showOrderWithSelect = async (req, res) => {
    
    getOrderWithSelect((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}
 
// Get Single Product 
 const showProductById = (req, res) => {
    getProductById(req.params.id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


 const showProductByIdforVmodel = (req, res) => {
    getProductByIdforVmodel(req.params.id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

 const showOrderByOrderId = (req, res) => {
    getOrderByOrderId(req.params.id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


const showPostedAmountByKebeleAndName = async (req, res) => {
    getPostedAmountByKebeleAndName(req.params.kebele, req.params.name, (err, results) => {
        if (err){
            res.send(err);
            console.log(err)

        }else{
            res.json(results);
        }
    });
}
 
// Create New Product
 const createProduct = (req, res) => {
    const data = req.body;

insertProduct(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

// Create New Order
 const createOrder = (req, res) => {
    const data = req.body;

    insertOrder(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}
 
// Update Product
 const updateProduct = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    updateProductById(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const rollBackProductFromMarketToStore = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    rollBackProductInToStore(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


const updateProductInMarket = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    updateProductInMarketById(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const addProductToMarket = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    addProductInToMarket(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const updateProductByEmailKebeleAndProductName = (req, res) => {
    const data  = req.body;
    const email = req.params.email;
    const kebele    = req.params.kebele;
    const name = req.params.name;
    updateProductByEmailProducNameAndKebele(data, email, kebele, name, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const updateOrder = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    updateOrderById(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


const updateOrderByEmailAndProductId = (req, res) => {
    const data  = req.body;
    const email = req.params.email;
    const id = req.params.id;
    updateOrderByProductIdAndEmail(data, email, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

 const confirmOrderByOrderId = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    updateOrderByOrderId(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const updateOrderByOrderIdforPayment = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    updateOrderforPayment(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


// Update Product
 const updateProductforCartConfirmation = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    updateProductByIdforCartConfirmation(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

 const rollBackAmountUpdate = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    rollBackAmount(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}
const rollBackProductAmountInMarketUpdate = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    rollBackProductAmountInMarket(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}
 const editProduct = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    editProductById(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


const updateProductByProductIdforMarket = (req, res) => {
    const data  = req.body;
    const pid    = req.params.pid;
    editProductByProductIdforMarket(data, pid, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
            console.log(results);
        }
    });
}

const updateProductAmountbyProductId = (req, res) => {
    const data  = req.body;
    const pid    = req.params.pid;
    updateProductAmountByProductId(data, pid, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
            console.log(results);
        }
    });
}


const rejectProductByProductIdforMarket = (req, res) => {
    const data  = req.body;
    const pid    = req.params.pid;
    rejectProductforMarketByProductId(data, pid, (err, results) => {
        if (err){
            console.log("Yilkal");
            res.send(err);
            console.log("Ayinalem");
        }else{
            console.log("eeeeeeeeeee");
            res.send(results)
            console.log("rrrrrrrrrrrrr");
        }
    });
}


const approveFarmerProduct = (req, res) => {
    const data  = req.body;
    const id    = req.params.id;
    activateFarmerProduct(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

 
// Delete Product
 const deleteProduct = (req, res) => {
    const id = req.params.id;
    deleteProductById(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


const deleteOrder = (req, res) => {
    const id = req.params.id;
    deleteOrderById(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const deleteOrderByIdAndKebele = (req, res) => {
    const id = req.params.id;
    const kebele = req.params.kebele;
    deleteOrderByKebeleAndId(id, kebele, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const deleteOrderByUserEmail = (req, res) => {
    const email = req.params.email;
    deleteOrderByEmail(email, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

// Delete Product
 const deleteUser = (req, res) => {
    const id = req.params.id;
    deleteUserById(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

module.exports = {
    showProducts, showOrderedProducts, showOrdersByEmail, showOrderByEmailProductId,
    showOrderByEmailProductIdPaymentStatus,
    showOrderWithSelect, showProductById, showProductByIdforVmodel, showOrderByOrderId,
    createProduct, showPostedAmountByKebeleAndName, createOrder, updateProduct, updateProductInMarket, addProductToMarket,
    confirmOrderByOrderId, updateProductforCartConfirmation, 
    rollBackAmountUpdate, rollBackProductAmountInMarketUpdate, editProduct, rollBackProductFromMarketToStore,
    updateOrder, updateOrderByEmailAndProductId, updateOrderByOrderIdforPayment, updateProductByEmailKebeleAndProductName, updateProductByProductIdforMarket, 
    rejectProductByProductIdforMarket, updateProductAmountbyProductId, approveFarmerProduct, deleteProduct, deleteUser, deleteOrder, deleteOrderByIdAndKebele, deleteOrderByUserEmail
}