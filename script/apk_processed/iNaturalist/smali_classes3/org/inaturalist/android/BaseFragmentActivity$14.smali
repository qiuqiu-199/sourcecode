.class Lorg/inaturalist/android/BaseFragmentActivity$14;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/BaseFragmentActivity;->buildSideMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/BaseFragmentActivity;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$14;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 375
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity$14;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const v1, 0x7f1001a6

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 377
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity$14;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
