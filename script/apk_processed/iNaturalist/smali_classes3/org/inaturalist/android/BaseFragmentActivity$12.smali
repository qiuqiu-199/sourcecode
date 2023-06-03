.class Lorg/inaturalist/android/BaseFragmentActivity$12;
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

    .line 352
    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$12;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 355
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$12;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-static {p1}, Lorg/inaturalist/android/BaseFragmentActivity;->access$400(Lorg/inaturalist/android/BaseFragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 356
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$12;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100285

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 360
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity$12;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const-class v1, Lorg/inaturalist/android/UserActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x24000000

    .line 361
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 362
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity$12;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivityIfNew(Landroid/content/Intent;)V

    return-void
.end method
