package com.onlineshopping.activity;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.onlineshopping.activity.R;
import com.onlineshopping.activity.custom.CustomWebChromeClient;
import com.onlineshopping.activity.custom.CustomWebViewClient;

public class WebViewActivity extends Activity {

    private WebView webView;
    public static final String SITE_URL_START = "http://";
    public static String SITE_URL = "";
    public static final String SITE_URL_END = ":8084/OnlineShoppingCart/";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_web_view);

        webView = findViewById(R.id.siteWebView);

        webView.setWebChromeClient(new CustomWebChromeClient(this));
        webView.setWebViewClient(new CustomWebViewClient(getApplicationContext()));

        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setPluginState(WebSettings.PluginState.ON);
        webView.loadUrl(SITE_URL_START + SITE_URL + SITE_URL_END);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if ((keyCode == KeyEvent.KEYCODE_BACK) && webView.canGoBack()) {
            webView.goBack();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }
}






