.class Lorg/inaturalist/android/ObservationListActivity$7;
.super Ljava/lang/Object;
.source "ObservationListActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationListActivity;->initializeTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationListActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 1391
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$7;->this$0:Lorg/inaturalist/android/ObservationListActivity;

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

    packed-switch p1, :pswitch_data_0

    .line 1407
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$7;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const-string v0, "observations"

    iput-object v0, p1, Lorg/inaturalist/android/ObservationListActivity;->mViewType:Ljava/lang/String;

    goto :goto_0

    .line 1400
    :pswitch_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$7;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const-string v0, "identifications"

    iput-object v0, p1, Lorg/inaturalist/android/ObservationListActivity;->mViewType:Ljava/lang/String;

    goto :goto_0

    .line 1403
    :pswitch_1
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$7;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    const-string v0, "species"

    iput-object v0, p1, Lorg/inaturalist/android/ObservationListActivity;->mViewType:Ljava/lang/String;

    .line 1411
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity$7;->this$0:Lorg/inaturalist/android/ObservationListActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationListActivity;->access$4200(Lorg/inaturalist/android/ObservationListActivity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
