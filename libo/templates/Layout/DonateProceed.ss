<% uncached %>
<% if type == "paypal" %>
<p>To process your donation of <strong>$data.Amount $data.currency</strong>, you are now forwarded to PayPal's website to complete the payment.<br>If you are not forwarded automatically, please click the button named Continue below.
<form id="autosubmit" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input name="lc" value="$paypallang" type="hidden">
<input name="cmd" value="_donations" type="hidden">
<input name="business" value="treasurer@documentfoundation.org" type="hidden">
<input name="return" value="http://www.documentfoundation.org" type="hidden">
<input name="undefined_quantity" value="0" type="hidden">
<input name="item_name" value="Donation to The Document Foundation" type="hidden">
<input name="amount" size="4" maxlength="10" value="$data.Amount" style="text-align: right;" type="hidden">
<input name="currency_code" value="$data.currency" type="hidden">
<input name="charset" value="utf-8" type="hidden">
<input name="no_shipping" value="1" type="hidden">
<input name="image_url" value="https://www.libreoffice.org/themes/libo/images/logo.png" type="hidden">
<input name="cancel_return" value="http://www.documentfoundation.org" type="hidden">
<input name="no_note" value="1" type="hidden">
<input src="https://www.paypal.com/en_US/i/btn/btn_donateCC_LG.gif" name="donatebutton" value="Continue" alt="PayPal secure payments." type="submit">
</form>
</p>
<% else_if type = "concardis" %>
<% control data %>
<p>To process your donation of <strong>$Amount $currency</strong>, you are now forwarded to ConCardis' website to complete the payment.<br>If you are not forwarded automatically, please click the button named Continue below.
<form id="autosubmit" name="donateform" method="post" action="https://secure.payengine.de/ncol/$type/orderstandard.asp">
<input type="hidden" name="accepturl" value="$accepturl">
<input type="hidden" name="amount" value="$centamount">
<input type="hidden" name="cancelurl" value="$cancelurl">
<%-- input type="hidden" name="catalogurl" value="$catalogurl" --%>
<input type="hidden" name="com" value="$com">
<input type="hidden" name="complus" value="$language">
<input type="hidden" name="currency" value="$currency">
<input type="hidden" name="declineurl" value="$declineurl">
<%-- input type="hidden" name="email" value="$email" --%>
<input type="hidden" name="exceptionurl" value="$exceptionurl">
<input type="hidden" name="homeurl" value="$homeurl">
<input type="hidden" name="language" value="$language">
<input type="hidden" name="operation" value="$operation">
<input type="hidden" name="orderid" value="$orderid">
<input type="hidden" name="pmlisttype" value="$pmlisttype">
<input type="hidden" name="pspid" value="$pspid">
<input type="hidden" name="shasign" value="$sign">
<input type="hidden" name="tp" value="$tp">
<input type="hidden" name="win3ds" value="$win3ds">
<input name="donatebutton" type="submit" value="Continue">
</form>
<% end_control %>
<% end_if %>
<% end_cached %>
