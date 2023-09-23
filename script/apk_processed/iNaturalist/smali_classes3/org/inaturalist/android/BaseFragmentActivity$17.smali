.class Lorg/inaturalist/android/BaseFragmentActivity$17;
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

    .line 395
    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$17;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 398
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$17;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/BaseFragmentActivity$17;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    const-class v2, Lorg/inaturalist/android/ProfileEditor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivityIfNew(Landroid/content/Intent;Z)V

    return-void
.end method
