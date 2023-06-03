.class Lorg/inaturalist/android/TutorialActivity$1;
.super Ljava/lang/Object;
.source "TutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lorg/inaturalist/android/TutorialActivity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/inaturalist/android/TutorialActivity$1;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lorg/inaturalist/android/TutorialActivity$1;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TutorialActivity;->access$200(Lorg/inaturalist/android/TutorialActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/TutorialActivity$1;->this$0:Lorg/inaturalist/android/TutorialActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TutorialActivity;->access$200(Lorg/inaturalist/android/TutorialActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
