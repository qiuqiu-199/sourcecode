.class Lorg/inaturalist/android/WebActivity$2;
.super Landroid/webkit/WebChromeClient;
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

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/WebActivity;Landroid/app/Activity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/inaturalist/android/WebActivity$2;->this$0:Lorg/inaturalist/android/WebActivity;

    iput-object p2, p0, Lorg/inaturalist/android/WebActivity$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 97
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity$2;->val$activity:Landroid/app/Activity;

    mul-int/lit16 p2, p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setProgress(I)V

    return-void
.end method
