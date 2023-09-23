.class Lorg/inaturalist/android/ExploreActivity$2;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$2;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$2;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$000(Lorg/inaturalist/android/ExploreActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity$2;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget v1, v1, Lorg/inaturalist/android/ExploreActivity;->mActiveViewType:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
