.class Lorg/inaturalist/android/GuidesActivity$1;
.super Ljava/lang/Object;
.source "GuidesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuidesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuidesActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuidesActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/inaturalist/android/GuidesActivity$1;->this$0:Lorg/inaturalist/android/GuidesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity$1;->this$0:Lorg/inaturalist/android/GuidesActivity;

    iget-object v0, v0, Lorg/inaturalist/android/GuidesActivity;->mPageAdapter:Lorg/inaturalist/android/MyPageAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/GuidesActivity$1;->this$0:Lorg/inaturalist/android/GuidesActivity;

    invoke-static {v1}, Lorg/inaturalist/android/GuidesActivity;->access$000(Lorg/inaturalist/android/GuidesActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/MyPageAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/BaseTab;

    invoke-virtual {v0}, Lorg/inaturalist/android/BaseTab;->loadProjects()V

    return-void
.end method
