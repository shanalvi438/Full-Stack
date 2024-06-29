import React from "react";
import { useSelector, useDispatch } from "react-redux";
import axiosClient from "../../axios-client";
import { cartActions } from "../../redux/slices/cartSlice";
import { toast } from "react-toastify";

const CashOnDelivery = (props) => {
  const totalQty = useSelector((state) => state.cart.totalQuantity);
  const cartItems = useSelector((state) => state.cart.cartItems);
  const shippingCost = useSelector((state) => state.setting.shippingCost);
  const totalAmountData = useSelector((state) => state.cart.totalAmount);
  const totalAmount = parseFloat(totalAmountData) + parseFloat(shippingCost);
  const dispatch = useDispatch();

  const cashonDelivery = () => {
    let type = {
      type: 'cashonDelivery',
    };
    props.payment(type);
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    const data = {
      payment_type: 'cashOnDelivery',
      shipping_info: props.shippingInfo,
      payment_info: '',
      order_item: cartItems,
      total_payable: totalAmount,
      shippingCost: shippingCost,
    };

    try {
      const response = await axiosClient.post('cashOnDelivery/payment', data);
      const responseData = response.data;
      console.log(data);

      if (responseData.status === 331) {
        toast.error(responseData.msg, {
          theme: "colored",
        });
        dispatch(cartActions.deleteItem(responseData.id));
      }

      if (responseData.status === 400) {
        toast.error(responseData.msg, {
          theme: "colored",
        });
        dispatch(cartActions.removeCartAllItem());
      }

      if (responseData.status === 200) {
        toast.success(responseData.msg, {
          theme: "colored",
        });
        dispatch(cartActions.removeCartAllItem());
      }
    } catch (error) {
      console.error('Error during payment processing:', error);
      toast.error("Internal Server Error. Please try again later.", {
        theme: "colored",
      });
    }
  };

  return (
    <div>
      <h6>Cash on Delivery</h6>
      <br />
      <h6>Payable Amount: {totalAmount}</h6>
      <div>
        <button className="buy__btn w-100" onClick={handleSubmit}>
          <span>Order Confirm</span>
        </button>
      </div>
    </div>
  );
};

export default CashOnDelivery;
