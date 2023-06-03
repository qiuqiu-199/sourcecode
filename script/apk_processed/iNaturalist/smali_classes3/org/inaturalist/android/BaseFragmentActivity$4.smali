.class Lorg/inaturalist/android/BaseFragmentActivity$4;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/BaseFragmentActivity;->onDrawerCreate(Landroid/os/Bundle;)V
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

    .line 194
    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$4;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 198
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity$4;->this$0:Lorg/inaturalist/android/BaseFragmentActivity;

    invoke-static {p1}, Lorg/inaturalist/android/BaseFragmentActivity;->access$200(Lorg/inaturalist/android/BaseFragmentActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->setAutoSync(Z)V

    return-void
.end method
