/* 
    CHAPA API PAYMENT INTEGRATION TEST
    Required: Chapa secret key || GET THE KEY BY REGISTERING @ https://dashboard.chapa.co/register
*/

// const express = require("express")
// const app = express()

const DB = require("../config/database.js");
const axios = require("axios").default

const PORT = process.env.PORT || 4400

const CHAPA_URL = process.env.CHAPA_URL || "https://api.chapa.co/v1/transaction/initialize"
const CHAPA_AUTH = process.env.CHAPA_AUTH // || register to chapa and get the key

// app.set("view engine", "ejs")

var user_email = ""
var order_id = ""
var datas = "";
var report = "";
var seller_email = "";
var seller_category = "";

// req header with chapa secret key
const config = {
    headers: {
        Authorization: `Bearer CHASECK_TEST-HGIKNodWHMWzvQaOmVB7NLOHsF1Kmawd`
    }
}

// initial payment endpoint
 const handlePayment =async (req, res) => {
         // chapa redirect you to this url when payment is successful
        const CALLBACK_URL = "http://localhost:5000/api/verify-payment/"

        // const RETURN_URL = "http://localhost:5000/api/payment-success/"

        const RETURN_URL = "http://localhost:5173/product/payment/success"

        // a unique reference given to every transaction
        const TEXT_REF = "tx-myecommerce12345-" + Date.now()

   let totalPrice = 0;
   let firstName = "";
   let lastName = "";
   datas = req.body.postData;

  for (let x in datas) {
    totalPrice = totalPrice + (datas[x].quantity * datas[x].transaction_in_birr);
    firstName = datas[x].first_name;
    lastName = datas[x].last_name;
    user_email = datas[x].email;
    seller_email = datas[x].reporter_email;
    seller_category = datas[x].seller_category;
  }
        const data = {
            amount: totalPrice, 
            currency: "ETB",
            email: user_email,
            first_name: firstName,
            last_name: lastName,
            tx_ref: TEXT_REF,
            callback_url: CALLBACK_URL + TEXT_REF,
            return_url: RETURN_URL
        }
        console.log(data);
        console.log(CHAPA_URL);
        console.log(config);
        // post request to chapa
        await axios.post(CHAPA_URL, data, config)
            .then((response) => {
                return res.json({url:response.data.data.checkout_url})
            })
            .catch((err) =>
             console.log(err)
             )
}

const verifyPayment = async (req, res) => {
    await axios.get("https://api.chapa.co/v1/transaction/verify/" + req.params.id, config)
        .then((response) => {
            console.log("Payment was successfully verified")
            if( seller_category == "mahiberat"){
            DB.db.query("UPDATE ordertable SET confirm = ?, confir = ?, payStatus = ? WHERE user_email = ?", [1, 1, 1, user_email], (err, results) => {             
                if(err) {
                    console.log(err);
                } else {
                    for (let x in datas) {
                            report = {
                                 reporter_email: datas[x].reporter_email,
                                 product_name: datas[x].product_name,
                                 quantity: datas[x].quantity,
                                 report_owner: datas[x].report_owner,
                                 report_status: datas[x].report_status,
                                 transaction: datas[x].transaction,
                                 transaction_in_birr: datas[x].transaction_in_birr,
                                 day: datas[x].day,
                                 monthName: datas[x].monthName,
                                 year: datas[x].year,
                                 month: datas[x].month,
                                 date: datas[x].date,
                                 hour: datas[x].hour,
                                 minute: datas[x].minute,
                                 second: datas[x].second,
                                 millisecond: datas[x].millisecond,
                            }
                    DB.db.query("INSERT INTO report SET ?", [report], (err, results) => {             
                        if(err) {
                            console.log(err);
                        } else {
                            console.log("Successfully Inserted The Report");
                        }
                    }); 
                }
                }
            }); 
        }else{
            DB.db.query("UPDATE ordertable SET confirm = ?, confir = ?, payStatus = ? WHERE user_email = ? AND patent_email = ?", [1, 1, 1, user_email, seller_email], (err, results) => {             
                if(err) {
                    console.log(err);
                } else {
                    console.log("order updated successfully");
                    for (let x in datas) {
                        report = {
                             reporter_email: datas[x].reporter_email,
                             product_name: datas[x].product_name,
                             quantity: datas[x].quantity,
                             report_owner: datas[x].report_owner,
                             report_status: datas[x].report_status,
                             transaction: datas[x].transaction,
                             transaction_in_birr: datas[x].transaction_in_birr,
                             day: datas[x].day,
                             monthName: datas[x].monthName,
                             year: datas[x].year,
                             month: datas[x].month,
                             date: datas[x].date,
                             hour: datas[x].hour,
                             minute: datas[x].minute,
                             second: datas[x].second,
                             millisecond: datas[x].millisecond,
                        }
                    DB.db.query("INSERT INTO report SET ?", [report], (err, results) => {             
                        if(err) {
                            console.log(err);
                        } else {
                            console.log("Successfully Inserted The Report");
                        }
                    }); 
                }
                }
            }); 
        }
        }) 
        .catch((err) => {
        console.log("Payment can't be verfied", err)
        if(seller_category == "mahiberat"){
        DB.db.query("UPDATE ordertable SET confirm = ?, confir = ?, payStatus = ? WHERE user_email = ?", [1, 1, 1, user_email], (err, results) => {             
            if(err) {
                console.log(err);
            } else {
                console.log("order updated successfully");
                DB.db.query("INSERT INTO report SET ?", [report], (err, results) => {             
                    if(err) {
                        console.log(err);
                    } else {
                        console.log("Successfully Inserted The Report");
                    }
                }); 
            }
        }); 
    }else{
        DB.db.query("UPDATE ordertable SET confirm = ?, confir = ?, payStatus = ? WHERE order_id = ?", [1, 1, 1, order_id], (err, results) => {             
            if(err) {
                console.log(err);
            } else {
                console.log("order updated successfully");
                DB.db.query("INSERT INTO report SET ?", [report], (err, results) => {             
                    if(err) {
                        console.log(err);
                    } else {
                        console.log("Successfully Inserted The Report");
                    }
                }); 
            }
        }); 
    }
    })
}

module.exports ={ handlePayment, verifyPayment };
// verification endpoint


