.class Lorg/sufficientlysecure/donations/DonationsFragment$9;
.super Landroid/webkit/WebViewClient;
.source "DonationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/donations/DonationsFragment;->buildFlattrView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

.field final synthetic val$mFlattrWebview:Landroid/webkit/WebView;

.field final synthetic val$mLoadingFrame:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/donations/DonationsFragment;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$9;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iput-object p2, p0, Lorg/sufficientlysecure/donations/DonationsFragment$9;->val$mLoadingFrame:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lorg/sufficientlysecure/donations/DonationsFragment$9;->val$mFlattrWebview:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "flattr"

    .line 509
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    if-lez v0, :cond_0

    .line 513
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 514
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 513
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    iget-object p2, p0, Lorg/sufficientlysecure/donations/DonationsFragment$9;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    const v0, 0x1080027

    sget v1, Lorg/sufficientlysecure/donations/R$string;->donations__alert_dialog_title:I

    iget-object v2, p0, Lorg/sufficientlysecure/donations/DonationsFragment$9;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    sget v3, Lorg/sufficientlysecure/donations/R$string;->donations__alert_dialog_no_browser:I

    .line 517
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/donations/DonationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-virtual {p2, v0, v1, v2}, Lorg/sufficientlysecure/donations/DonationsFragment;->openDialog(IILjava/lang/String;)V

    .line 519
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 530
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$9;->val$mLoadingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 531
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$9;->val$mLoadingFrame:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 532
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$9;->val$mFlattrWebview:Landroid/webkit/WebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 491
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 492
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 491
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$9;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    const p2, 0x1080027

    sget v0, Lorg/sufficientlysecure/donations/R$string;->donations__alert_dialog_title:I

    iget-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$9;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    sget v2, Lorg/sufficientlysecure/donations/R$string;->donations__alert_dialog_no_browser:I

    .line 495
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/donations/DonationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {p1, p2, v0, v1}, Lorg/sufficientlysecure/donations/DonationsFragment;->openDialog(IILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
