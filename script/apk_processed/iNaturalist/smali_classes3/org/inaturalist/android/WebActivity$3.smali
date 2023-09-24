.class Lorg/inaturalist/android/WebActivity$3;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/WebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/WebActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/WebActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/inaturalist/android/WebActivity$3;->this$0:Lorg/inaturalist/android/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity$3;->this$0:Lorg/inaturalist/android/WebActivity;

    invoke-static {p1}, Lorg/inaturalist/android/WebActivity;->access$000(Lorg/inaturalist/android/WebActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/ActivityHelper;->stopLoading()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity$3;->this$0:Lorg/inaturalist/android/WebActivity;

    invoke-static {p1}, Lorg/inaturalist/android/WebActivity;->access$000(Lorg/inaturalist/android/WebActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/ActivityHelper;->loading()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity$3;->this$0:Lorg/inaturalist/android/WebActivity;

    invoke-static {p1}, Lorg/inaturalist/android/WebActivity;->access$000(Lorg/inaturalist/android/WebActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/ActivityHelper;->stopLoading()V

    .line 109
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity$3;->this$0:Lorg/inaturalist/android/WebActivity;

    invoke-static {p1}, Lorg/inaturalist/android/WebActivity;->access$000(Lorg/inaturalist/android/WebActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/WebActivity$3;->this$0:Lorg/inaturalist/android/WebActivity;

    const p4, 0x7f1002a0

    invoke-virtual {p2, p4}, Lorg/inaturalist/android/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 116
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity$3;->this$0:Lorg/inaturalist/android/WebActivity;

    invoke-static {p1}, Lorg/inaturalist/android/WebActivity;->access$100(Lorg/inaturalist/android/WebActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 119
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity$3;->this$0:Lorg/inaturalist/android/WebActivity;

    invoke-static {p1}, Lorg/inaturalist/android/WebActivity;->access$200(Lorg/inaturalist/android/WebActivity;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/WebActivity$3;->this$0:Lorg/inaturalist/android/WebActivity;

    invoke-virtual {v0}, Lorg/inaturalist/android/WebActivity;->getAuthHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
