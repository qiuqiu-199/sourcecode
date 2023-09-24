.class Lorg/inaturalist/android/BaseFragmentActivity$8;
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

    .line 328
    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$8;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 331
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$8;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/BaseFragmentActivity;->showNewObsMenu()V

    return-void
.end method
