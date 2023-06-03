.class Lorg/inaturalist/android/BaseFragmentActivity$11;
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

    .line 346
    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$11;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 349
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$11;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/BaseFragmentActivity$11;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const-class v2, Lorg/inaturalist/android/GuidesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivityIfNew(Landroid/content/Intent;)V

    return-void
.end method
