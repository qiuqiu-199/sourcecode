.class Lorg/inaturalist/android/ProjectDetails$6;
.super Ljava/lang/Object;
.source "ProjectDetails.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectDetails;->initializeTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectDetails;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectDetails;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails$6;->this$0:Lorg/inaturalist/android/ProjectDetails;

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

    .line 421
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$6;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const-string v0, "observations"

    iput-object v0, p1, Lorg/inaturalist/android/ProjectDetails;->mViewType:Ljava/lang/String;

    goto :goto_0

    .line 411
    :pswitch_0
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$6;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const-string v0, "identifiers"

    iput-object v0, p1, Lorg/inaturalist/android/ProjectDetails;->mViewType:Ljava/lang/String;

    goto :goto_0

    .line 414
    :pswitch_1
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$6;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const-string v0, "observers"

    iput-object v0, p1, Lorg/inaturalist/android/ProjectDetails;->mViewType:Ljava/lang/String;

    goto :goto_0

    .line 417
    :pswitch_2
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails$6;->this$0:Lorg/inaturalist/android/ProjectDetails;

    const-string v0, "species"

    iput-object v0, p1, Lorg/inaturalist/android/ProjectDetails;->mViewType:Ljava/lang/String;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
