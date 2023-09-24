.class public Lorg/sufficientlysecure/donations/DonationsFragment;
.super Landroid/support/v4/app/Fragment;
.source "DonationsFragment.java"


# static fields
.field private static final CATALOG_DEBUG:[Ljava/lang/String;


# instance fields
.field protected mBitcoinAddress:Ljava/lang/String;

.field protected mBitcoinEnabled:Z

.field mConsumeFinishedListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;

.field protected mDebug:Z

.field protected mFlattrEnabled:Z

.field protected mFlattrProjectUrl:Ljava/lang/String;

.field protected mFlattrUrl:Ljava/lang/String;

.field private mFlattrUrlTextView:Landroid/widget/TextView;

.field protected mGgoogleCatalog:[Ljava/lang/String;

.field protected mGoogleCatalogValues:[Ljava/lang/String;

.field protected mGoogleEnabled:Z

.field protected mGooglePubkey:Ljava/lang/String;

.field private mGoogleSpinner:Landroid/widget/Spinner;

.field private mHelper:Lorg/sufficientlysecure/donations/google/util/IabHelper;

.field protected mPaypalCurrencyCode:Ljava/lang/String;

.field protected mPaypalEnabled:Z

.field protected mPaypalItemName:Ljava/lang/String;

.field protected mPaypalUser:Ljava/lang/String;

.field mPurchaseFinishedListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 77
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.test.purchased"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.test.canceled"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android.test.refunded"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "android.test.item_unavailable"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/donations/DonationsFragment;->CATALOG_DEBUG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    .line 88
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGoogleEnabled:Z

    const-string v1, ""

    .line 89
    iput-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGooglePubkey:Ljava/lang/String;

    .line 90
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGgoogleCatalog:[Ljava/lang/String;

    .line 91
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGoogleCatalogValues:[Ljava/lang/String;

    .line 93
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalEnabled:Z

    const-string v1, ""

    .line 94
    iput-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalUser:Ljava/lang/String;

    const-string v1, ""

    .line 95
    iput-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalCurrencyCode:Ljava/lang/String;

    const-string v1, ""

    .line 96
    iput-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalItemName:Ljava/lang/String;

    .line 98
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrEnabled:Z

    const-string v1, ""

    .line 99
    iput-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrProjectUrl:Ljava/lang/String;

    const-string v1, ""

    .line 100
    iput-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrUrl:Ljava/lang/String;

    .line 102
    iput-boolean v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mBitcoinEnabled:Z

    const-string v0, ""

    .line 103
    iput-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mBitcoinAddress:Ljava/lang/String;

    .line 357
    new-instance v0, Lorg/sufficientlysecure/donations/DonationsFragment$7;

    invoke-direct {v0, p0}, Lorg/sufficientlysecure/donations/DonationsFragment$7;-><init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V

    iput-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPurchaseFinishedListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 380
    new-instance v0, Lorg/sufficientlysecure/donations/DonationsFragment$8;

    invoke-direct {v0, p0}, Lorg/sufficientlysecure/donations/DonationsFragment$8;-><init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V

    iput-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mConsumeFinishedListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnConsumeFinishedListener;

    return-void
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/donations/DonationsFragment;)Lorg/sufficientlysecure/donations/google/util/IabHelper;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mHelper:Lorg/sufficientlysecure/donations/google/util/IabHelper;

    return-object p0
.end method

.method private buildFlattrView()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 475
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lorg/sufficientlysecure/donations/R$id;->donations__flattr_webview:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 476
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lorg/sufficientlysecure/donations/R$id;->donations__loading_frame:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 479
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0xb

    if-lt v2, v4, :cond_0

    const/4 v2, 0x0

    .line 480
    invoke-virtual {v0, v3, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 484
    :cond_0
    new-instance v2, Lorg/sufficientlysecure/donations/DonationsFragment$9;

    invoke-direct {v2, p0, v1, v0}, Lorg/sufficientlysecure/donations/DonationsFragment$9;-><init>(Lorg/sufficientlysecure/donations/DonationsFragment;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v1, "<html> <head><style type=\'text/css\'>*{color: #FFFFFF; background-color: transparent;}</style>"

    .line 542
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v2, v4, :cond_1

    const-string v2, "https://"

    goto :goto_0

    :cond_1
    const-string v2, "http://"

    .line 549
    :goto_0
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lorg/sufficientlysecure/donations/R$id;->donations__flattr_url:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrUrlTextView:Landroid/widget/TextView;

    .line 550
    iget-object v4, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrUrlTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<script type=\'text/javascript\'>/* <![CDATA[ */(function() {var s = document.createElement(\'script\'), t = document.getElementsByTagName(\'script\')[0];s.type = \'text/javascript\';s.async = true;s.src = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "api.flattr.com/js/0.6/load.js?mode=auto\';t.parentNode.insertBefore(s, t);})();/* ]]> */</script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "</head> <body> <div align=\'center\'>"

    .line 560
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<a class=\'FlattrButton\' style=\'display:none;\' href=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrProjectUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' target=\'_blank\'></a> <noscript><a href=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' target=\'_blank\'> <img src=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "api.flattr.com/button/flattr-badge-large.png\' alt=\'Flattr this\' title=\'Flattr this\' border=\'0\' /></a></noscript>"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "</div> </body> </html>"

    .line 570
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v2, "text/html"

    const-string v3, "utf-8"

    .line 574
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v1, Lorg/sufficientlysecure/donations/DonationsFragment$10;

    invoke-direct {v1, p0}, Lorg/sufficientlysecure/donations/DonationsFragment$10;-><init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x0

    .line 588
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public donateBitcoinOnClick(Landroid/view/View;)V
    .locals 4

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitcoin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mBitcoinAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 455
    iget-boolean v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "Donations Library"

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to donate bitcoin using URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/DonationsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    sget v0, Lorg/sufficientlysecure/donations/R$id;->donations__bitcoin_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    :goto_0
    return-void
.end method

.method public donateGoogleOnClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 340
    iget-object v1, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGoogleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 341
    iget-boolean v2, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "Donations Library"

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected item in spinner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    iget-boolean v2, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz v2, :cond_1

    .line 346
    iget-object v3, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mHelper:Lorg/sufficientlysecure/donations/google/util/IabHelper;

    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v2, Lorg/sufficientlysecure/donations/DonationsFragment;->CATALOG_DEBUG:[Ljava/lang/String;

    aget-object v5, v2, v1

    const-string v6, "inapp"

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPurchaseFinishedListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v10, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mHelper:Lorg/sufficientlysecure/donations/google/util/IabHelper;

    invoke-virtual/range {p0 .. p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    iget-object v2, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGgoogleCatalog:[Ljava/lang/String;

    aget-object v12, v2, v1

    const-string v13, "inapp"

    const/4 v14, 0x0

    iget-object v15, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPurchaseFinishedListener:Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILorg/sufficientlysecure/donations/google/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public donatePayPalOnClick(Landroid/view/View;)V
    .locals 3

    .line 421
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "https"

    .line 422
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "www.paypal.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cgi-bin/webscr"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "cmd"

    const-string v1, "_donations"

    .line 423
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "business"

    .line 425
    iget-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalUser:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "lc"

    const-string v1, "US"

    .line 426
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "item_name"

    .line 427
    iget-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalItemName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "no_note"

    const-string v1, "1"

    .line 428
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "no_shipping"

    const-string v1, "1"

    .line 431
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "currency_code"

    .line 432
    iget-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalCurrencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 433
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 435
    iget-boolean v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "Donations Library"

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening the browser with the url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/donations/DonationsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x1080027

    .line 443
    sget v0, Lorg/sufficientlysecure/donations/R$string;->donations__alert_dialog_title:I

    sget v1, Lorg/sufficientlysecure/donations/R$string;->donations__alert_dialog_no_browser:I

    .line 444
    invoke-virtual {p0, v1}, Lorg/sufficientlysecure/donations/DonationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {p0, p1, v0, v1}, Lorg/sufficientlysecure/donations/DonationsFragment;->openDialog(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 187
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 190
    iget-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrEnabled:Z

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lorg/sufficientlysecure/donations/R$id;->donations__flattr_stub:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 194
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 196
    invoke-direct {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->buildFlattrView()V

    .line 200
    :cond_0
    iget-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGoogleEnabled:Z

    if-eqz p1, :cond_4

    .line 202
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lorg/sufficientlysecure/donations/R$id;->donations__google_stub:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 204
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 207
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lorg/sufficientlysecure/donations/R$id;->donations__google_android_market_spinner:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGoogleSpinner:Landroid/widget/Spinner;

    .line 210
    iget-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    const v0, 0x1090008

    if-eqz p1, :cond_1

    .line 211
    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/donations/DonationsFragment;->CATALOG_DEBUG:[Ljava/lang/String;

    invoke-direct {p1, v1, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_1
    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGoogleCatalogValues:[Ljava/lang/String;

    invoke-direct {p1, v1, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    :goto_0
    const v0, 0x1090009

    .line 217
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 218
    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGoogleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 220
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lorg/sufficientlysecure/donations/R$id;->donations__google_android_market_donate_button:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 222
    new-instance v0, Lorg/sufficientlysecure/donations/DonationsFragment$1;

    invoke-direct {v0, p0}, Lorg/sufficientlysecure/donations/DonationsFragment$1;-><init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz p1, :cond_2

    const-string p1, "Donations Library"

    const-string v0, "Creating IAB helper."

    .line 232
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    new-instance p1, Lorg/sufficientlysecure/donations/google/util/IabHelper;

    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGooglePubkey:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lorg/sufficientlysecure/donations/google/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mHelper:Lorg/sufficientlysecure/donations/google/util/IabHelper;

    .line 236
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mHelper:Lorg/sufficientlysecure/donations/google/util/IabHelper;

    iget-boolean v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->enableDebugLogging(Z)V

    .line 240
    iget-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz p1, :cond_3

    const-string p1, "Donations Library"

    const-string v0, "Starting setup."

    .line 241
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_3
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mHelper:Lorg/sufficientlysecure/donations/google/util/IabHelper;

    new-instance v0, Lorg/sufficientlysecure/donations/DonationsFragment$2;

    invoke-direct {v0, p0}, Lorg/sufficientlysecure/donations/DonationsFragment$2;-><init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->startSetup(Lorg/sufficientlysecure/donations/google/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 261
    :cond_4
    iget-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalEnabled:Z

    if-eqz p1, :cond_5

    .line 263
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lorg/sufficientlysecure/donations/R$id;->donations__paypal_stub:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 265
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 267
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lorg/sufficientlysecure/donations/R$id;->donations__paypal_donate_button:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 269
    new-instance v0, Lorg/sufficientlysecure/donations/DonationsFragment$3;

    invoke-direct {v0, p0}, Lorg/sufficientlysecure/donations/DonationsFragment$3;-><init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    :cond_5
    iget-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mBitcoinEnabled:Z

    if-eqz p1, :cond_6

    .line 281
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lorg/sufficientlysecure/donations/R$id;->donations__bitcoin_stub:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 282
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 284
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lorg/sufficientlysecure/donations/R$id;->donations__bitcoin_button:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 285
    new-instance v0, Lorg/sufficientlysecure/donations/DonationsFragment$4;

    invoke-direct {v0, p0}, Lorg/sufficientlysecure/donations/DonationsFragment$4;-><init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    new-instance v0, Lorg/sufficientlysecure/donations/DonationsFragment$5;

    invoke-direct {v0, p0}, Lorg/sufficientlysecure/donations/DonationsFragment$5;-><init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_6
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 399
    iget-boolean v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "Donations Library"

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mHelper:Lorg/sufficientlysecure/donations/google/util/IabHelper;

    if-nez v0, :cond_1

    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mHelper:Lorg/sufficientlysecure/donations/google/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/sufficientlysecure/donations/google/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 410
    :cond_2
    iget-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    if-eqz p1, :cond_3

    const-string p1, "Donations Library"

    const-string p2, "onActivityResult handled by IABUtil."

    .line 411
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "debug"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mDebug:Z

    .line 161
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "googleEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGoogleEnabled:Z

    .line 162
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "googlePubkey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGooglePubkey:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "googleCatalog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGgoogleCatalog:[Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "googleCatalogValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mGoogleCatalogValues:[Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "paypalEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalEnabled:Z

    .line 167
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "paypalUser"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalUser:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "paypalCurrencyCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalCurrencyCode:Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mPaypalItemName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mPaypalItemName:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "flattrEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrEnabled:Z

    .line 172
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "flattrProjectUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrProjectUrl:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "flattrUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mFlattrUrl:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bitcoinEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mBitcoinEnabled:Z

    .line 176
    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bitcoinAddress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment;->mBitcoinAddress:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 181
    sget p3, Lorg/sufficientlysecure/donations/R$layout;->donations__fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method openDialog(IILjava/lang/String;)V
    .locals 2

    .line 319
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 323
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 324
    sget p1, Lorg/sufficientlysecure/donations/R$string;->donations__button_close:I

    new-instance p2, Lorg/sufficientlysecure/donations/DonationsFragment$6;

    invoke-direct {p2, p0}, Lorg/sufficientlysecure/donations/DonationsFragment$6;-><init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
