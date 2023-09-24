.class Lorg/inaturalist/android/ExploreActivity$6;
.super Ljava/lang/Object;
.source "ExploreActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreActivity;->initializeTabs()V
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

    .line 519
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$6;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 526
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$6;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iput p1, v0, Lorg/inaturalist/android/ExploreActivity;->mActiveViewType:I

    return-void
.end method
