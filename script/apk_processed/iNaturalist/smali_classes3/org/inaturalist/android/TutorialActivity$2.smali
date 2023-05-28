.class Lorg/inaturalist/android/TutorialActivity$2;
.super Lorg/inaturalist/android/OnSwipeTouchListener;
.source "TutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TutorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TutorialActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TutorialActivity;Landroid/content/Context;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/inaturalist/android/TutorialActivity$2;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-direct {p0, p2}, Lorg/inaturalist/android/OnSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSwipeLeft()Z
    .locals 3

    .line 176
    iget-object v0, p0, Lorg/inaturalist/android/TutorialActivity$2;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TutorialActivity;->access$200(Lorg/inaturalist/android/TutorialActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/TutorialActivity$2;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-static {v1}, Lorg/inaturalist/android/TutorialActivity;->access$200(Lorg/inaturalist/android/TutorialActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return v2
.end method
